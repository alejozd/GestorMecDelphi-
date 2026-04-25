import { Router } from 'express';
import { catalogosController } from '../controllers/catalogos.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

router.get('/tipos-documento', verifyToken, (req, res) => catalogosController.getTiposDocumento(req, res));
router.get('/ciudades', verifyToken, (req, res) => catalogosController.getCiudades(req, res));

export default router;
