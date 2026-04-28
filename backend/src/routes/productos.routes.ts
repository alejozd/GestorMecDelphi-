import { Router } from 'express';
import { productosController } from '../controllers/productos.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

router.use(verifyToken);

router.get('/', productosController.findAll);
router.get('/:id', productosController.findById);
router.post('/', productosController.create);
router.put('/:id', productosController.update);
router.delete('/:id', productosController.delete);

export default router;
