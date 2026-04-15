import { Request, Response } from 'express';
import { clientesService } from '../services/clientes.service.js';
import { AuthRequest, ApiResponse } from '../types/index.js';

/**
 * Controlador para gestión de clientes
 */
export class ClientesController {
  /**
   * Obtiene lista de clientes con paginación y filtros
   * GET /api/clientes?page=1&limit=10&search=nombre
   */
  async findAll(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const { page, limit, search, cod_tipdo } = req.query;

      const result = await clientesService.findAll({
        page: page ? parseInt(page as string) : 1,
        limit: limit ? parseInt(limit as string) : 10,
        search: search as string,
        cod_tipdo: cod_tipdo ? parseInt(cod_tipdo as string) : undefined,
      });

      res.json({
        success: true,
        message: 'Clientes obtenidos exitosamente',
        data: result.data,
        pagination: result.pagination,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo clientes',
      });
    }
  }

  /**
   * Obtiene un cliente por ID
   * GET /api/clientes/:id
   */
  async findById(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const cli_codi = parseInt(req.params.id);

      if (isNaN(cli_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de cliente inválido',
        });
        return;
      }

      const cliente = await clientesService.findById(cli_codi);

      res.json({
        success: true,
        message: 'Cliente obtenido exitosamente',
        data: cliente,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo cliente',
      });
    }
  }

  /**
   * Crea un nuevo cliente
   * POST /api/clientes
   */
  async create(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const {
        cod_tipdo,
        cli_numdoc,
        cli_nombre,
        cli_direccion,
        cli_barrio,
        cli_tel_movil,
        cli_tel_fijo,
        cli_correoe,
        ciu_codi,
        cli_observacion,
      } = req.body;

      // Validaciones básicas
      if (!cod_tipdo || !cli_numdoc || !cli_nombre) {
        res.status(400).json({
          success: false,
          message: 'Tipo de documento, número de documento y nombre son requeridos',
        });
        return;
      }

      const cliente = await clientesService.create({
        cod_tipdo,
        cli_numdoc,
        cli_nombre,
        cli_direccion,
        cli_barrio,
        cli_tel_movil,
        cli_tel_fijo,
        cli_correoe,
        ciu_codi,
        cli_observacion,
      });

      res.status(201).json({
        success: true,
        message: 'Cliente creado exitosamente',
        data: cliente,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error creando cliente',
      });
    }
  }

  /**
   * Actualiza un cliente existente
   * PUT /api/clientes/:id
   */
  async update(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const cli_codi = parseInt(req.params.id);

      if (isNaN(cli_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de cliente inválido',
        });
        return;
      }

      const cliente = await clientesService.update(cli_codi, req.body);

      res.json({
        success: true,
        message: 'Cliente actualizado exitosamente',
        data: cliente,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error actualizando cliente',
      });
    }
  }

  /**
   * Elimina un cliente
   * DELETE /api/clientes/:id
   */
  async delete(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const cli_codi = parseInt(req.params.id);

      if (isNaN(cli_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de cliente inválido',
        });
        return;
      }

      await clientesService.delete(cli_codi);

      res.json({
        success: true,
        message: 'Cliente eliminado exitosamente',
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error eliminando cliente',
      });
    }
  }

  /**
   * Obtiene estadísticas de clientes
   * GET /api/clientes/stats
   */
  async getStats(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const stats = await clientesService.getStats();

      res.json({
        success: true,
        message: 'Estadísticas obtenidas exitosamente',
        data: stats,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo estadísticas',
      });
    }
  }
}

export const clientesController = new ClientesController();
export default clientesController;
