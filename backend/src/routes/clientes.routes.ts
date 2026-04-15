import { Router } from 'express';
import { clientesController } from '../controllers/clientes.controller.js';
import { verifyToken, checkPermission } from '../middleware/auth.middleware.js';

const router = Router();

/**
 * Rutas de clientes
 * Base: /api/clientes
 * Opción de menú: 1 (Clientes)
 */

// GET /api/clientes - Listar clientes con paginación
router.get('/', verifyToken, checkPermission(1, 'leer'), (req, res) => clientesController.findAll(req, res));

// GET /api/clientes/stats - Estadísticas de clientes
router.get('/stats', verifyToken, checkPermission(1, 'leer'), (req, res) => clientesController.getStats(req, res));

// GET /api/clientes/:id - Obtener cliente por ID
router.get('/:id', verifyToken, checkPermission(1, 'leer'), (req, res) => clientesController.findById(req, res));

// POST /api/clientes - Crear nuevo cliente
router.post('/', verifyToken, checkPermission(1, 'crear'), (req, res) => clientesController.create(req, res));

// PUT /api/clientes/:id - Actualizar cliente
router.put('/:id', verifyToken, checkPermission(1, 'modificar'), (req, res) => clientesController.update(req, res));

// DELETE /api/clientes/:id - Eliminar cliente
router.delete('/:id', verifyToken, checkPermission(1, 'borrar'), (req, res) => clientesController.delete(req, res));

export default router;
