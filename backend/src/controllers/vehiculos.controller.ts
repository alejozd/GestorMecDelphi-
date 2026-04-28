import { Response } from 'express';
import prisma from '../config/database.js';
import { AuthRequest, ApiResponse, PaginatedResponse } from '../types/index.js';

export class VehiculosController {
  async findAll(req: AuthRequest, res: Response<PaginatedResponse | ApiResponse>) {
    try {
      const { page = '1', limit = '10', search, cli_codi } = req.query;
      const p = parseInt(page as string);
      const l = parseInt(limit as string);
      const skip = (p - 1) * l;

      const where: any = {};
      if (cli_codi) where.cli_codi = parseInt(cli_codi as string);
      if (search) {
        where.placa = { contains: search as string, mode: 'insensitive' };
      }

      const [vehiculos, total] = await Promise.all([
        prisma.vehiculo.findMany({
          where,
          skip,
          take: l,
          include: {
            cliente: { select: { cli_nombre: true, cli_numdoc: true } },
            marca: true,
            linea: true,
          },
          orderBy: { placa: 'asc' },
        }),
        prisma.vehiculo.count({ where }),
      ]);

      res.json({
        success: true,
        message: 'Vehículos obtenidos exitosamente',
        data: vehiculos,
        pagination: {
          total,
          page: p,
          limit: l,
          totalPages: Math.ceil(total / l),
        },
      });
    } catch (error: any) {
      res.status(500).json({ success: false, message: 'Error obteniendo vehículos' });
    }
  }

  async findById(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      const vehiculo = await prisma.vehiculo.findUnique({
        where: { vxc_codi: id },
        include: { cliente: true, marca: true, linea: true },
      });
      if (!vehiculo) {
          res.status(404).json({ success: false, message: 'Vehículo no encontrado' });
          return;
      }
      res.json({ success: true, message: 'Vehículo obtenido', data: vehiculo });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async create(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const vehiculo = await prisma.vehiculo.create({
        data: req.body,
        include: { marca: true, linea: true },
      });
      res.status(201).json({ success: true, message: 'Vehículo creado', data: vehiculo });
    } catch (error: any) {
        if (error.code === 'P2002') {
             res.status(400).json({ success: false, message: 'La placa ya existe' });
             return;
        }
      res.status(500).json({ success: false, message: 'Error creando vehículo' });
    }
  }

  async update(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      const vehiculo = await prisma.vehiculo.update({
        where: { vxc_codi: id },
        data: req.body,
        include: { marca: true, linea: true },
      });
      res.json({ success: true, message: 'Vehículo actualizado', data: vehiculo });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async delete(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      await prisma.vehiculo.delete({ where: { vxc_codi: id } });
      res.json({ success: true, message: 'Vehículo eliminado' });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }
}

export const vehiculosController = new VehiculosController();
