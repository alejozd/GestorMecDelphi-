import { Response } from 'express';
import prisma from '../config/database.js';
import { AuthRequest, ApiResponse, PaginatedResponse } from '../types/index.js';

export class ProductosController {
  async findAll(req: AuthRequest, res: Response<PaginatedResponse | ApiResponse>) {
    try {
      const { page = '1', limit = '10', search, gru_codi } = req.query;
      const p = parseInt(page as string);
      const l = parseInt(limit as string);
      const skip = (p - 1) * l;

      const where: any = {};
      if (gru_codi) where.gru_codi = parseInt(gru_codi as string);
      if (search) {
        where.OR = [
          { pro_nombre: { contains: search as string, mode: 'insensitive' } },
          { pro_referencia: { contains: search as string, mode: 'insensitive' } },
        ];
      }

      const [productos, total] = await Promise.all([
        prisma.producto.findMany({
          where, skip, take: l,
          include: { grupo: true },
          orderBy: { pro_nombre: 'asc' },
        }),
        prisma.producto.count({ where }),
      ]);

      res.json({
        success: true,
        message: 'Productos obtenidos',
        data: productos,
        pagination: { total, page: p, limit: l, totalPages: Math.ceil(total / l) },
      });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error obteniendo productos' });
    }
  }

  async findById(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      const producto = await prisma.producto.findUnique({
        where: { pro_codi: id },
        include: { grupo: true },
      });
      if (!producto) {
          res.status(404).json({ success: false, message: 'No encontrado' });
          return;
      }
      res.json({ success: true, message: 'Producto obtenido', data: producto });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async create(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const producto = await prisma.producto.create({ data: req.body });
      res.status(201).json({ success: true, message: 'Creado', data: producto });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async update(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      const producto = await prisma.producto.update({ where: { pro_codi: id }, data: req.body });
      res.json({ success: true, message: 'Actualizado', data: producto });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async delete(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const id = parseInt(req.params.id);
      await prisma.producto.delete({ where: { pro_codi: id } });
      res.json({ success: true, message: 'Eliminado' });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }
}

export const productosController = new ProductosController();
