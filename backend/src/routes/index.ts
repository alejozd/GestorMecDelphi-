import { Router } from 'express';
import authRoutes from './auth.routes.js';
import clientesRoutes from './clientes.routes.js';
import ordenesRoutes from './ordenes.routes.js';

const router = Router();

/**
 * Rutas de la API
 * Base: /api
 */

// Ruta de health check
router.get('/health', (req, res) => {
  res.json({
    success: true,
    message: 'API funcionando correctamente',
    timestamp: new Date().toISOString(),
  });
});

// Rutas de autenticación (públicas y protegidas)
router.use('/auth', authRoutes);

// Rutas protegidas (requieren autenticación)
router.use('/clientes', clientesRoutes);
router.use('/ordenes', ordenesRoutes);

export default router;
