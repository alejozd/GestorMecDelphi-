import { Router } from 'express';
import { authController } from '../controllers/auth.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

/**
 * Rutas de autenticación
 * Base: /api/auth
 */

// POST /api/auth/login - Iniciar sesión
router.post('/login', (req, res) => authController.login(req, res));

// GET /api/auth/profile - Obtener perfil del usuario autenticado
router.get('/profile', verifyToken, (req, res) => authController.getProfile(req, res));

// PUT /api/auth/change-password - Cambiar contraseña
router.put('/change-password', verifyToken, (req, res) => authController.changePassword(req, res));

export default router;
