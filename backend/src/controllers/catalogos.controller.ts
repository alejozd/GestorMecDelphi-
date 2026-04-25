import { Request, Response } from 'express';
import prisma from '../config/database.js';
import { ApiResponse } from '../types/index.js';

export class CatalogosController {
  async getTiposDocumento(_req: Request, res: Response<ApiResponse>) {
    try {
      const tipos = await prisma.tipoDocumento.findMany({
        orderBy: { td_nombre: 'asc' }
      });
      res.json({
        success: true,
        message: 'Tipos de documento obtenidos exitosamente',
        data: tipos
      });
    } catch (error: any) {
      res.status(500).json({
        success: false,
        message: 'Error obteniendo tipos de documento'
      });
    }
  }

  async getCiudades(req: Request, res: Response<ApiResponse>) {
    try {
      const { dep_codigo } = req.query;
      const where = dep_codigo ? { dep_codigo: parseInt(dep_codigo as string) } : {};

      const ciudades = await prisma.ciudad.findMany({
        where,
        orderBy: { ciu_nombre: 'asc' }
      });
      res.json({
        success: true,
        message: 'Ciudades obtenidas exitosamente',
        data: ciudades
      });
    } catch (error: any) {
      res.status(500).json({
        success: false,
        message: 'Error obteniendo ciudades'
      });
    }
  }
}

export const catalogosController = new CatalogosController();
