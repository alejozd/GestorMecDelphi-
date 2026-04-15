import { Router } from 'express';
import { ordenesController } from '../controllers/ordenes.controller.js';
import { verifyToken, checkPermission } from '../middleware/auth.middleware.js';

const router = Router();

/**
 * Rutas de órdenes de trabajo
 * Base: /api/ordenes
 * Opción de menú: 3 (Órdenes de Trabajo)
 */

// GET /api/ordenes - Listar órdenes con paginación
router.get('/', verifyToken, checkPermission(3, 'leer'), (req, res) => ordenesController.findAll(req, res));

// GET /api/ordenes/stats - Estadísticas de órdenes
router.get('/stats', verifyToken, checkPermission(3, 'leer'), (req, res) => ordenesController.getStats(req, res));

// GET /api/ordenes/:id - Obtener orden por ID
router.get('/:id', verifyToken, checkPermission(3, 'leer'), (req, res) => ordenesController.findById(req, res));

// POST /api/ordenes - Crear nueva orden
router.post('/', verifyToken, checkPermission(3, 'crear'), (req, res) => ordenesController.create(req, res));

// PUT /api/ordenes/:id - Actualizar orden
router.put('/:id', verifyToken, checkPermission(3, 'modificar'), (req, res) => ordenesController.update(req, res));

// POST /api/ordenes/:id/finalizar - Finalizar orden
router.post('/:id/finalizar', verifyToken, checkPermission(3, 'modificar'), (req, res) => ordenesController.finalizar(req, res));

// POST /api/ordenes/:id/anular - Anular orden
router.post('/:id/anular', verifyToken, checkPermission(3, 'borrar'), (req, res) => ordenesController.anular(req, res));

export default router;
