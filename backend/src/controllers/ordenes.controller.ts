import { Request, Response } from 'express';
import { ordenesService } from '../services/ordenes.service.js';
import { AuthRequest, ApiResponse, ClaseDocumento } from '../types/index.js';

/**
 * Controlador para gestión de Órdenes de Trabajo
 */
export class OrdenesController {
  /**
   * Obtiene lista de órdenes con paginación y filtros
   * GET /api/ordenes?page=1&limit=10&estado=0&clase_doc=1
   */
  async findAll(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const { page, limit, search, cli_codi, vxc_codi, estado, clase_doc, fecha_desde, fecha_hasta } = req.query;

      const result = await ordenesService.findAll({
        page: page ? parseInt(page as string) : 1,
        limit: limit ? parseInt(limit as string) : 10,
        search: search as string,
        cli_codi: cli_codi ? parseInt(cli_codi as string) : undefined,
        vxc_codi: vxc_codi ? parseInt(vxc_codi as string) : undefined,
        estado: estado !== undefined ? parseInt(estado as string) : undefined,
        clase_doc: clase_doc !== undefined ? parseInt(clase_doc as string) : undefined,
        fecha_desde: fecha_desde ? new Date(fecha_desde as string) : undefined,
        fecha_hasta: fecha_hasta ? new Date(fecha_hasta as string) : undefined,
      });

      res.json({
        success: true,
        message: 'Órdenes obtenidas exitosamente',
        data: result.data,
        pagination: result.pagination,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo órdenes',
      });
    }
  }

  /**
   * Obtiene una orden por ID
   * GET /api/ordenes/:id
   */
  async findById(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const otm_codi = parseInt(req.params.id);

      if (isNaN(otm_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de orden inválido',
        });
        return;
      }

      const orden = await ordenesService.findById(otm_codi);

      res.json({
        success: true,
        message: 'Orden obtenida exitosamente',
        data: orden,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo orden',
      });
    }
  }

  /**
   * Crea una nueva orden de trabajo
   * POST /api/ordenes
   */
  async create(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const {
        cli_codi,
        vxc_codi,
        otm_clase_doc,
        otm_fecha_vence,
        otm_kilometraje,
        otm_observacion,
        detalles,
      } = req.body;

      // Validaciones básicas
      if (!cli_codi) {
        res.status(400).json({
          success: false,
          message: 'El cliente es requerido',
        });
        return;
      }

      if (!detalles || !Array.isArray(detalles) || detalles.length === 0) {
        res.status(400).json({
          success: false,
          message: 'La orden debe tener al menos un ítem',
        });
        return;
      }

      // Validar cada detalle
      for (const detalle of detalles) {
        if (!detalle.pr_codi || !detalle.otd_cantidad || !detalle.otd_precio) {
          res.status(400).json({
            success: false,
            message: 'Todos los ítems deben tener producto, cantidad y precio',
          });
          return;
        }
      }

      const usu_codi = req.usuario?.usu_codi;

      const orden = await ordenesService.create({
        cli_codi,
        vxc_codi,
        otm_clase_doc: otm_clase_doc ?? ClaseDocumento.ORDEN,
        otm_fecha_vence: otm_fecha_vence ? new Date(otm_fecha_vence) : undefined,
        otm_kilometraje,
        otm_observacion,
        detalles,
        usu_codi,
      });

      res.status(201).json({
        success: true,
        message: 'Orden creada exitosamente',
        data: orden,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error creando orden',
      });
    }
  }

  /**
   * Actualiza una orden existente
   * PUT /api/ordenes/:id
   */
  async update(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const otm_codi = parseInt(req.params.id);

      if (isNaN(otm_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de orden inválido',
        });
        return;
      }

      const orden = await ordenesService.update(otm_codi, req.body);

      res.json({
        success: true,
        message: 'Orden actualizada exitosamente',
        data: orden,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error actualizando orden',
      });
    }
  }

  /**
   * Finaliza una orden de trabajo
   * POST /api/ordenes/:id/finalizar
   */
  async finalizar(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const otm_codi = parseInt(req.params.id);

      if (isNaN(otm_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de orden inválido',
        });
        return;
      }

      const orden = await ordenesService.finalizar(otm_codi);

      res.json({
        success: true,
        message: 'Orden finalizada exitosamente',
        data: orden,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error finalizando orden',
      });
    }
  }

  /**
   * Anula una orden de trabajo
   * POST /api/ordenes/:id/anular
   */
  async anular(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const otm_codi = parseInt(req.params.id);

      if (isNaN(otm_codi)) {
        res.status(400).json({
          success: false,
          message: 'ID de orden inválido',
        });
        return;
      }

      const orden = await ordenesService.anular(otm_codi);

      res.json({
        success: true,
        message: 'Orden anulada exitosamente',
        data: orden,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error anulando orden',
      });
    }
  }

  /**
   * Obtiene estadísticas de órdenes
   * GET /api/ordenes/stats
   */
  async getStats(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const { fecha_desde, fecha_hasta } = req.query;

      const stats = await ordenesService.getStats(
        fecha_desde ? new Date(fecha_desde as string) : undefined,
        fecha_hasta ? new Date(fecha_hasta as string) : undefined
      );

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

export const ordenesController = new OrdenesController();
export default ordenesController;
