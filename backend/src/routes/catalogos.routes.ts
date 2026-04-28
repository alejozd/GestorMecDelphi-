import { Router } from 'express';
import { catalogosController } from '../controllers/catalogos.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

router.get('/tipos-documento', verifyToken, (req, res) => catalogosController.getTiposDocumento(req, res));
router.get('/ciudades', verifyToken, (req, res) => catalogosController.getCiudades(req, res));
router.get('/marcas', catalogosController.getMarcas);
router.post('/marcas', verifyToken, catalogosController.createMarca);
router.get('/lineas', catalogosController.getLineas);
router.post('/lineas', verifyToken, catalogosController.createLinea);
router.get('/grupos', catalogosController.getGrupos);

export default router;
