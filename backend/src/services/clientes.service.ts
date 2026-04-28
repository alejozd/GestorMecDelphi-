import prisma from '../config/database.js';
import { AppError } from '../middleware/error.middleware.js';

interface CreateClienteDto {
  cod_tipdo: number;
  cli_numdoc: string;
  cli_nombre: string;
  cli_direccion?: string;
  cli_barrio?: string;
  cli_tel_movil?: string;
  cli_tel_fijo?: string;
  cli_correoe?: string;
  ciu_codi?: number;
  cli_observacion?: string;
}

interface UpdateClienteDto extends Partial<CreateClienteDto> {}

interface QueryParams {
  page?: number;
  limit?: number;
  search?: string;
  cod_tipdo?: number;
}

/**
 * Servicio para gestión de clientes
 */
export class ClientesService {
  /**
   * Obtiene lista de clientes con paginación y filtros
   */
  async findAll(params: QueryParams) {
    const { page = 1, limit = 10, search, cod_tipdo } = params;
    const skip = (page - 1) * limit;

    const where: any = {};

    // Filtro por tipo de documento
    if (cod_tipdo) {
      where.cod_tipdo = cod_tipdo;
    }

    // Búsqueda por nombre o número de documento
    if (search) {
      where.OR = [
        { cli_nombre: { contains: search, mode: 'insensitive' } },
        { cli_numdoc: { contains: search, mode: 'insensitive' } },
        { cli_correoe: { contains: search, mode: 'insensitive' } },
      ];
    }

    const [clientes, total] = await Promise.all([
      prisma.cliente.findMany({
        where,
        skip,
        take: limit,
        include: {
          tipoDocumento: true,
          ciudad: true,
          vehiculos: {
            select: {
              vxc_codi: true,
              placa: true,
              marca: { select: { mr_nombre: true } },
              linea: { select: { li_nombre: true } },
            },
          },
        },
        orderBy: { cli_nombre: 'asc' },
      }),
      prisma.cliente.count({ where }),
    ]);

    return {
      data: clientes,
      pagination: {
        total,
        page,
        limit,
        totalPages: Math.ceil(total / limit),
      },
    };
  }

  /**
   * Obtiene un cliente por ID
   */
  async findById(cli_codi: number) {
    const cliente = await prisma.cliente.findUnique({
      where: { cli_codi },
      include: {
        tipoDocumento: true,
        ciudad: true,
        vehiculos: {
          include: {
            marca: true,
            linea: true,
          },
        },
        ordenesTrabajo: {
          take: 10,
          orderBy: { createdAt: 'desc' },
          include: {
            vehiculo: {
              select: {
                placa: true,
                marca: { select: { mr_nombre: true } },
                linea: { select: { li_nombre: true } },
              },
            },
          },
        },
      },
    });

    if (!cliente) {
      throw new AppError('Cliente no encontrado', 404);
    }

    return cliente;
  }

  /**
   * Obtiene un cliente por número de documento
   */
  async findByDocumento(cod_tipdo: number, cli_numdoc: string) {
    const cliente = await prisma.cliente.findFirst({
      where: {
        cod_tipdo,
        cli_numdoc,
      },
      include: {
        tipoDocumento: true,
        ciudad: true,
      },
    });

    return cliente;
  }

  /**
   * Crea un nuevo cliente
   */
  async create(data: CreateClienteDto) {
    // Verificar si ya existe cliente con ese documento
    const existing = await this.findByDocumento(data.cod_tipdo, data.cli_numdoc);

    if (existing) {
      throw new AppError('Ya existe un cliente con este número de documento', 409);
    }

    const cliente = await prisma.cliente.create({
      data,
      include: {
        tipoDocumento: true,
        ciudad: true,
      },
    });

    return cliente;
  }

  /**
   * Actualiza un cliente existente
   */
  async update(cli_codi: number, data: UpdateClienteDto) {
    // Verificar que el cliente existe
    const existing = await prisma.cliente.findUnique({
      where: { cli_codi },
    });

    if (!existing) {
      throw new AppError('Cliente no encontrado', 404);
    }

    // Si cambia el número de documento, verificar que no exista otro con esos datos
    if (data.cod_tipdo || data.cli_numdoc) {
      const cod_tipdo = data.cod_tipdo || existing.cod_tipdo;
      const cli_numdoc = data.cli_numdoc || existing.cli_numdoc;

      const duplicate = await prisma.cliente.findFirst({
        where: {
          cod_tipdo,
          cli_numdoc,
          NOT: { cli_codi },
        },
      });

      if (duplicate) {
        throw new AppError('Ya existe otro cliente con este número de documento', 409);
      }
    }

    const cliente = await prisma.cliente.update({
      where: { cli_codi },
      data,
      include: {
        tipoDocumento: true,
        ciudad: true,
      },
    });

    return cliente;
  }

  /**
   * Elimina un cliente (soft delete - cambiar estado)
   */
  async delete(cli_codi: number) {
    // Verificar que el cliente existe
    const existing = await prisma.cliente.findUnique({
      where: { cli_codi },
      include: {
        ordenesTrabajo: true,
        vehiculos: true,
      },
    });

    if (!existing) {
      throw new AppError('Cliente no encontrado', 404);
    }

    // Verificar si tiene órdenes de trabajo asociadas
    if (existing.ordenesTrabajo.length > 0) {
      throw new AppError(
        'No se puede eliminar el cliente porque tiene órdenes de trabajo asociadas',
        400
      );
    }

    // Verificar si tiene vehículos asociados
    if (existing.vehiculos.length > 0) {
      throw new AppError(
        'No se puede eliminar el cliente porque tiene vehículos registrados',
        400
      );
    }

    await prisma.cliente.delete({
      where: { cli_codi },
    });

    return { message: 'Cliente eliminado exitosamente' };
  }

  /**
   * Obtiene estadísticas de clientes
   */
  async getStats() {
    const totalClientes = await prisma.cliente.count();
    
    const clientesConVehiculos = await prisma.cliente.count({
      where: {
        vehiculos: {
          some: {},
        },
      },
    });

    const counts = await prisma.cliente.groupBy({
      by: ['cod_tipdo'],
      _count: true,
    });

    const tiposDocumento = await prisma.tipoDocumento.findMany({
      where: {
        td_codi: { in: counts.map(c => c.cod_tipdo) }
      }
    });

    const porTipoDocumento = counts.map(c => ({
      ...c,
      tipoDocumento: tiposDocumento.find(t => t.td_codi === c.cod_tipdo)
    }));

    return {
      totalClientes,
      clientesConVehiculos,
      clientesSinVehiculos: totalClientes - clientesConVehiculos,
      porTipoDocumento,
    };
  }
}

export const clientesService = new ClientesService();
export default clientesService;
