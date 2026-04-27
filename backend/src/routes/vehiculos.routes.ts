import { Router } from 'express';
import { vehiculosController } from '../controllers/vehiculos.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

router.use(verifyToken);

router.get('/', vehiculosController.findAll);
router.get('/:id', vehiculosController.findById);
router.post('/', vehiculosController.create);
router.put('/:id', vehiculosController.update);
router.delete('/:id', vehiculosController.delete);

export default router;
