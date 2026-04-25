import prisma from '../config/database.js';
import { AppError } from '../middleware/error.middleware.js';
import { ClaseDocumento, EstadoOrden, ClaseProducto } from '../types/index.js';
import { calculateLineTotals, calculateDocumentTotals } from '../utils/helpers.js';

interface OrdenDetalleItem {
  pr_codi: number;
  otd_cantidad: number;
  otd_precio: number;
  otd_por_dsc?: number;
  emp_codi?: number;
  bod_codi?: number;
  otd_observacion?: string;
}

interface CreateOrdenDto {
  cli_codi: number;
  vxc_codi?: number;
  otm_clase_doc?: number; // 0=Orden, 1=Factura, 2=Pedido
  otm_fecha_vence?: Date;
  otm_kilometraje?: string;
  otm_observacion?: string;
  detalles: OrdenDetalleItem[];
  usu_codi?: number;
}

interface UpdateOrdenDto extends Partial<Omit<CreateOrdenDto, 'detalles'>> {
  detalles?: OrdenDetalleItem[];
}

/**
 * Servicio para gestión de Órdenes de Trabajo
 */
export class OrdenesService {
  /**
   * Obtiene el próximo consecutivo para un tipo de documento
   */
  private async getNextConsecutive(claseDoc: number): Promise<number> {
    const lastOrden = await prisma.ordenTrabajo.findFirst({
      where: { otm_clase_doc: claseDoc },
      orderBy: { otm_nume: 'desc' },
      select: { otm_nume: true },
    });

    return (lastOrden?.otm_nume || 0) + 1;
  }

  /**
   * Calcula totales aplicando o no IVA según el tipo de documento
   */
  private calculateTotals(
    items: OrdenDetalleItem[],
    claseDoc: number
  ): { subtotal: number; vrIva: number; vrDsc: number; vrTotal: number; detallesCalculados: any[] } {
    const applyIva = claseDoc === ClaseDocumento.FACTURA;

    const detallesCalculados = items.map((item) => {
      // Obtener producto para saber su % de IVA y clase
      // El IVA se aplica solo si es FACTURA y el producto tiene IVA configurado
      const ivaPercent = applyIva ? 0 : 0; // Se obtendrá del producto en el controller
      
      const totals = calculateLineTotals(
        item.otd_cantidad,
        item.otd_precio,
        ivaPercent,
        item.otd_por_dsc || 0,
        applyIva
      );

      return {
        ...item,
        ...totals,
        otd_por_iva: applyIva ? ivaPercent : 0,
      };
    });

    const totals = calculateDocumentTotals(detallesCalculados, applyIva);

    return { ...totals, detallesCalculados };
  }

  /**
   * Obtiene lista de órdenes con paginación y filtros
   */
  async findAll(params: {
    page?: number;
    limit?: number;
    search?: string;
    cli_codi?: number;
    vxc_codi?: number;
    estado?: number;
    clase_doc?: number;
    fecha_desde?: Date;
    fecha_hasta?: Date;
  }) {
    const { 
      page = 1, 
      limit = 10, 
      search, 
      cli_codi, 
      vxc_codi, 
      estado, 
      clase_doc,
      fecha_desde,
      fecha_hasta,
    } = params;
    
    const skip = (page - 1) * limit;
    const where: any = {};

    if (cli_codi) where.cli_codi = cli_codi;
    if (vxc_codi) where.vxc_codi = vxc_codi;
    if (estado !== undefined) where.otm_estado = estado;
    if (clase_doc !== undefined) where.otm_clase_doc = clase_doc;

    if (fecha_desde || fecha_hasta) {
      where.otm_fecha = {};
      if (fecha_desde) where.otm_fecha.gte = fecha_desde;
      if (fecha_hasta) where.otm_fecha.lte = fecha_hasta;
    }

    if (search) {
      where.OR = [
        { otm_nume: parseInt(search) || 0 },
        { otm_kilometraje: { contains: search, mode: 'insensitive' } },
        { cliente: { cli_nombre: { contains: search, mode: 'insensitive' } } },
        { vehiculo: { placa: { contains: search, mode: 'insensitive' } } },
      ];
    }

    const [ordenes, total] = await Promise.all([
      prisma.ordenTrabajo.findMany({
        where,
        skip,
        take: limit,
        include: {
          cliente: {
            select: {
              cli_codi: true,
              cli_nombre: true,
              cli_numdoc: true,
              tipoDocumento: { select: { td_abreviado: true } },
            },
          },
          vehiculo: {
            select: {
              vxc_codi: true,
              placa: true,
              marca: { select: { mr_nombre: true } },
              linea: { select: { li_nombre: true } },
            },
          },
          usuario: {
            select: {
              usu_codi: true,
              usuario: true,
              nombre: true,
            },
          },
          detalles: {
            include: {
              producto: {
                select: {
                  pro_codi: true,
                  pro_nombre: true,
                  pro_referencia: true,
                  pro_clase: true,
                },
              },
              empleado: {
                select: {
                  emp_codi: true,
                  emp_nombre: true,
                },
              },
              bodega: {
                select: {
                  bod_codi: true,
                  bod_nombre: true,
                },
              },
            },
          },
        },
        orderBy: { otm_nume: 'desc' },
      }),
      prisma.ordenTrabajo.count({ where }),
    ]);

    return {
      data: ordenes,
      pagination: {
        total,
        page,
        limit,
        totalPages: Math.ceil(total / limit),
      },
    };
  }

  /**
   * Obtiene una orden por ID
   */
  async findById(otm_codi: number) {
    const orden = await prisma.ordenTrabajo.findUnique({
      where: { otm_codi },
      include: {
        cliente: {
          include: {
            tipoDocumento: true,
            ciudad: true,
          },
        },
        vehiculo: {
          include: {
            marca: true,
            linea: true,
          },
        },
        usuario: {
          include: {
            rol: true,
          },
        },
        detalles: {
          include: {
            producto: true,
            empleado: true,
            bodega: true,
          },
          orderBy: { otd_cont: 'asc' },
        },
      },
    });

    if (!orden) {
      throw new AppError('Orden de trabajo no encontrada', 404);
    }

    return orden;
  }

  /**
   * Crea una nueva orden de trabajo
   */
  async create(data: CreateOrdenDto) {
    const { cli_codi, vxc_codi, detalles, usu_codi, ...rest } = data;
    
    // Determinar tipo de documento (default = Orden)
    const otm_clase_doc = data.otm_clase_doc ?? ClaseDocumento.ORDEN;

    // Verificar que el cliente existe
    const cliente = await prisma.cliente.findUnique({
      where: { cli_codi },
    });

    if (!cliente) {
      throw new AppError('Cliente no encontrado', 404);
    }

    // Si hay vehículo, verificar que existe y pertenece al cliente
    if (vxc_codi) {
      const vehiculo = await prisma.vehiculo.findUnique({
        where: { vxc_codi },
      });

      if (!vehiculo || vehiculo.cli_codi !== cli_codi) {
        throw new AppError('El vehículo no existe o no pertenece al cliente', 404);
      }
    }

    // Verificar que hay detalles
    if (!detalles || detalles.length === 0) {
      throw new AppError('La orden debe tener al menos un ítem', 400);
    }

    // Obtener información completa de los productos para calcular totales
    const productosIds = detalles.map(d => d.pr_codi);
    const productos = await prisma.producto.findMany({
      where: { pro_codi: { in: productosIds } },
    });

    if (productos.length !== detalles.length) {
      throw new AppError('Uno o más productos no existen', 404);
    }

    // Calcular totales por línea y del documento
    const applyIva = otm_clase_doc === ClaseDocumento.FACTURA;
    
    const detallesCalculados = detalles.map((detalle) => {
      const producto = productos.find(p => p.pro_codi === detalle.pr_codi)!;
      
      // Solo aplicar IVA si es FACTURA y el producto tiene IVA configurado
      const ivaPercent = applyIva && producto.pro_clase === ClaseProducto.PRODUCTO 
        ? Number(producto.pro_iva) 
        : 0;

      const totals = calculateLineTotals(
        detalle.otd_cantidad,
        detalle.otd_precio,
        ivaPercent,
        detalle.otd_por_dsc || 0,
        applyIva
      );

      return {
        pr_codi: detalle.pr_codi,
        otd_cantidad: detalle.otd_cantidad,
        otd_precio: detalle.otd_precio,
        otd_sbtotal: totals.sbtotal,
        otd_por_iva: ivaPercent,
        otd_vr_iva: totals.vrIva,
        otd_por_dsc: detalle.otd_por_dsc || 0,
        otd_vr_dsc: totals.vrDsc,
        otd_vr_total: totals.vrTotal,
        emp_codi: detalle.emp_codi,
        bod_codi: detalle.bod_codi,
        otd_observacion: detalle.otd_observacion,
      };
    });

    // Calcular totales del documento
    const documentTotals = calculateDocumentTotals(detallesCalculados as any, applyIva);

    // Obtener próximo consecutivo
    const otm_nume = await this.getNextConsecutive(otm_clase_doc);

    // Crear orden con transacción
    const orden = await prisma.$transaction(async (tx) => {
      // Crear orden principal
      const nuevaOrden = await tx.ordenTrabajo.create({
        data: {
          otm_clase_doc,
          otm_nume,
          cli_codi,
          vxc_codi,
          usu_codi,
          otm_fecha_vence: rest.otm_fecha_vence,
          otm_kilometraje: rest.otm_kilometraje,
          otm_observacion: rest.otm_observacion,
          otm_subtotal: documentTotals.subtotal,
          otm_vr_iva: documentTotals.vrIva,
          otm_vr_desc: documentTotals.vrDsc,
          otm_vr_total: documentTotals.vrTotal,
          otm_estado: EstadoOrden.EN_PROCESO,
        },
      });

      // Crear detalles
      await tx.ordenDetalle.createMany({
        data: detallesCalculados.map(d => ({
          otm_codi: nuevaOrden.otm_codi,
          ...d,
        })),
      });

      return nuevaOrden;
    });

    // Retornar orden completa
    return this.findById(orden.otm_codi);
  }

  /**
   * Actualiza una orden existente (en estado "En Proceso")
   */
  async update(otm_codi: number, data: UpdateOrdenDto) {
    const orden = await prisma.ordenTrabajo.findUnique({
      where: { otm_codi },
      include: { detalles: true },
    });

    if (!orden) {
      throw new AppError('Orden de trabajo no encontrada', 404);
    }

    // Solo se puede modificar si está "En Proceso"
    if (orden.otm_estado !== EstadoOrden.EN_PROCESO) {
      throw new AppError(
        'Solo se pueden modificar órdenes en estado "En Proceso"',
        400
      );
    }

    // Si hay nuevos detalles, recalcular totales
    if (data.detalles && data.detalles.length > 0) {
      // Implementar lógica similar a create para recalcular
      // Por simplicidad, se omite en esta versión
      throw new AppError(
        'Para actualizar detalles, use el endpoint específico o elimine y cree la orden',
        400
      );
    }

    // Actualizar campos permitidos
    const updateData: any = {};
    
    if (data.otm_fecha_vence !== undefined) updateData.otm_fecha_vence = data.otm_fecha_vence;
    if (data.otm_kilometraje !== undefined) updateData.otm_kilometraje = data.otm_kilometraje;
    if (data.otm_observacion !== undefined) updateData.otm_observacion = data.otm_observacion;
    if (data.vxc_codi !== undefined) updateData.vxc_codi = data.vxc_codi;

    if (Object.keys(updateData).length === 0) {
      throw new AppError('No hay datos para actualizar', 400);
    }

    const updatedOrden = await prisma.ordenTrabajo.update({
      where: { otm_codi },
      data: updateData,
    });

    return this.findById(updatedOrden.otm_codi);
  }

  /**
   * Finaliza una orden de trabajo (cambia a estado "Finalizado")
   * Esto descuenta el stock de los productos
   */
  async finalizar(otm_codi: number) {
    const orden = await prisma.ordenTrabajo.findUnique({
      where: { otm_codi },
      include: {
        detalles: {
          include: {
            producto: true,
            bodega: true,
          },
        },
      },
    });

    if (!orden) {
      throw new AppError('Orden de trabajo no encontrada', 404);
    }

    if (orden.otm_estado !== EstadoOrden.EN_PROCESO) {
      throw new AppError('La orden ya está finalizada o anulada', 400);
    }

    // Procesar con transacción
    await prisma.$transaction(async (tx) => {
      // Actualizar estado de la orden
      await tx.ordenTrabajo.update({
        where: { otm_codi },
        data: { otm_estado: EstadoOrden.FINALIZADO },
      });

      // Descontar stock de productos (solo si es Factura o Pedido)
      for (const detalle of orden.detalles) {
        // Solo productos (no servicios) descuentan stock
        if (detalle.producto.pro_clase === ClaseProducto.SERVICIO) {
          continue;
        }

        const bod_codi = detalle.bod_codi || 1; // Bodega por defecto

        // Actualizar stock en StockBodega
        await tx.stockBodega.upsert({
          where: {
            pro_codi_bod_codi: {
              pro_codi: detalle.pr_codi,
              bod_codi,
            },
          },
          create: {
            pro_codi: detalle.pr_codi,
            bod_codi,
            st_cantidad: -Number(detalle.otd_cantidad),
            st_reservada: 0,
            saldo_real: -Number(detalle.otd_cantidad),
          },
          update: {
            st_cantidad: { decrement: Number(detalle.otd_cantidad) },
            saldo_real: { decrement: Number(detalle.otd_cantidad) },
          },
        });

        // Registrar movimiento de inventario (salida)
        await tx.movimientoInventario.create({
          data: {
            mvi_clase_docu: 1, // Salida
            mvi_tipo_docu: orden.otm_clase_doc,
            mvi_num_docu: orden.otm_nume,
            mvi_fecha_docu: new Date(),
            pro_codi: detalle.pr_codi,
            mvi_cantidad: Number(detalle.otd_cantidad),
            mvi_costo_unit: Number(detalle.otd_precio),
            bod_codi,
            usu_codi: orden.usu_codi || null,
            mvi_observacion: `Salida por Orden de Trabajo #${orden.otm_nume}`,
          },
        });
      }
    });

    return this.findById(otm_codi);
  }

  /**
   * Anula una orden de trabajo
   */
  async anular(otm_codi: number) {
    const orden = await prisma.ordenTrabajo.findUnique({
      where: { otm_codi },
    });

    if (!orden) {
      throw new AppError('Orden de trabajo no encontrada', 404);
    }

    if (orden.otm_estado === EstadoOrden.ANULADO) {
      throw new AppError('La orden ya está anulada', 400);
    }

    // TODO: Revertir stock si estaba finalizada

    await prisma.ordenTrabajo.update({
      where: { otm_codi },
      data: { otm_estado: EstadoOrden.ANULADO },
    });

    return this.findById(otm_codi);
  }

  /**
   * Obtiene estadísticas de órdenes
   */
  async getStats(fechaDesde?: Date, fechaHasta?: Date) {
    const where: any = {
      otm_estado: EstadoOrden.FINALIZADO,
    };

    if (fechaDesde || fechaHasta) {
      where.otm_fecha = {};
      if (fechaDesde) where.otm_fecha.gte = fechaDesde;
      if (fechaHasta) where.otm_fecha.lte = fechaHasta;
    }

    const [totalOrdenes, totalFacturado, ordenesPorEstado, ordenesPorTipo] = await Promise.all([
      prisma.ordenTrabajo.count({ where }),
      prisma.ordenTrabajo.aggregate({
        where,
        _sum: { otm_vr_total: true },
      }),
      prisma.ordenTrabajo.groupBy({
        by: ['otm_estado'],
        _count: true,
        where: fechaDesde || fechaHasta ? { otm_fecha: { gte: fechaDesde, lte: fechaHasta } } : {},
      }),
      prisma.ordenTrabajo.groupBy({
        by: ['otm_clase_doc'],
        _count: true,
        _sum: { otm_vr_total: true },
        where: fechaDesde || fechaHasta ? { otm_fecha: { gte: fechaDesde, lte: fechaHasta } } : {},
      }),
    ]);

    return {
      totalOrdenes,
      totalFacturado: Number(totalFacturado._sum.otm_vr_total || 0),
      porEstado: ordenesPorEstado,
      porTipo: ordenesPorTipo,
    };
  }
}

export const ordenesService = new OrdenesService();
export default ordenesService;
