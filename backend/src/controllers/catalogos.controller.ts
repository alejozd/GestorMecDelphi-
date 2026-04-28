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

  async getMarcas(_req: Request, res: Response<ApiResponse>) {
    try {
      const marcas = await prisma.marcaVehiculo.findMany({
        orderBy: { mr_nombre: 'asc' }
      });
      res.json({ success: true, data: marcas, message: 'Marcas obtenidas' });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async createMarca(req: Request, res: Response<ApiResponse>) {
    try {
      const { mr_nombre } = req.body;
      const marca = await prisma.marcaVehiculo.create({ data: { mr_nombre } });
      res.status(201).json({ success: true, data: marca, message: 'Marca creada' });
    } catch (error: any) {
        if (error.code === 'P2002') {
             res.status(400).json({ success: false, message: 'La marca ya existe' });
             return;
        }
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async createLinea(req: Request, res: Response<ApiResponse>) {
    try {
      const { mr_codi, li_nombre } = req.body;
      const linea = await prisma.lineaVehiculo.create({ data: { mr_codi, li_nombre } });
      res.status(201).json({ success: true, data: linea, message: 'Línea creada' });
    } catch (error: any) {
        if (error.code === 'P2002') {
             res.status(400).json({ success: false, message: 'La línea ya existe para esta marca' });
             return;
        }
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async getLineas(req: Request, res: Response<ApiResponse>) {
    try {
      const { mr_codi } = req.query;
      const where = mr_codi ? { mr_codi: parseInt(mr_codi as string) } : {};
      const lineas = await prisma.lineaVehiculo.findMany({
        where,
        orderBy: { li_nombre: 'asc' }
      });
      res.json({ success: true, data: lineas, message: 'Líneas obtenidas' });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }

  async getGrupos(_req: Request, res: Response<ApiResponse>) {
    try {
      const grupos = await prisma.grupoInventario.findMany({ orderBy: { gru_nombre: 'asc' } });
      res.json({ success: true, message: 'Grupos obtenidos', data: grupos });
    } catch (error) {
      res.status(500).json({ success: false, message: 'Error' });
    }
  }
}

export const catalogosController = new CatalogosController();
