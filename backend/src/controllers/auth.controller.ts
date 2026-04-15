import { Request, Response } from 'express';
import { authService } from '../services/auth.service.js';
import { AuthRequest, ApiResponse } from '../types/index.js';

/**
 * Controlador para autenticación y gestión de usuarios
 */
export class AuthController {
  /**
   * Inicia sesión con usuario y contraseña
   * POST /api/auth/login
   */
  async login(req: Request, res: Response<ApiResponse>) {
    const { usuario, password } = req.body;

    // Validaciones básicas
    if (!usuario || !password) {
      res.status(400).json({
        success: false,
        message: 'Usuario y contraseña son requeridos',
      });
      return;
    }

    try {
      const result = await authService.login({ usuario, password });

      res.json({
        success: true,
        message: 'Inicio de sesión exitoso',
        data: result,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error iniciando sesión',
      });
    }
  }

  /**
   * Obtiene perfil del usuario autenticado
   * GET /api/auth/profile
   */
  async getProfile(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const usu_codi = req.usuario?.usu_codi;

      if (!usu_codi) {
        res.status(401).json({
          success: false,
          message: 'Usuario no autenticado',
        });
        return;
      }

      const profile = await authService.getProfile(usu_codi);

      res.json({
        success: true,
        message: 'Perfil obtenido exitosamente',
        data: profile,
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error obteniendo perfil',
      });
    }
  }

  /**
   * Cambia la contraseña del usuario
   * PUT /api/auth/change-password
   */
  async changePassword(req: AuthRequest, res: Response<ApiResponse>) {
    try {
      const usu_codi = req.usuario?.usu_codi;
      const { currentPassword, newPassword } = req.body;

      if (!usu_codi) {
        res.status(401).json({
          success: false,
          message: 'Usuario no autenticado',
        });
        return;
      }

      if (!currentPassword || !newPassword) {
        res.status(400).json({
          success: false,
          message: 'Contraseña actual y nueva contraseña son requeridas',
        });
        return;
      }

      if (newPassword.length < 6) {
        res.status(400).json({
          success: false,
          message: 'La nueva contraseña debe tener al menos 6 caracteres',
        });
        return;
      }

      await authService.changePassword(usu_codi, currentPassword, newPassword);

      res.json({
        success: true,
        message: 'Contraseña cambiada exitosamente',
      });
    } catch (error: any) {
      res.status(error.statusCode || 500).json({
        success: false,
        message: error.message || 'Error cambiando contraseña',
      });
    }
  }
}

export const authController = new AuthController();
export default authController;
