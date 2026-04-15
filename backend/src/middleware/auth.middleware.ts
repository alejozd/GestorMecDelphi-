import { Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import { configApp } from '../config/index.js';
import { AuthRequest, ApiResponse } from '../types/index.js';

interface JwtPayload {
  usu_codi: number;
  usuario: string;
  rol_codi: number;
  rol_nombre: string;
}

/**
 * Middleware para verificar autenticación con JWT
 */
export const verifyToken = async (
  req: AuthRequest,
  res: Response<ApiResponse>,
  next: NextFunction
): Promise<void> => {
  try {
    // Obtener token del header Authorization
    const authHeader = req.headers.authorization;
    
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      res.status(401).json({
        success: false,
        message: 'Token de autenticación no proporcionado',
      });
      return;
    }

    const token = authHeader.split(' ')[1];

    // Verificar token
    const decoded = jwt.verify(token, configApp.jwtSecret) as JwtPayload;

    // Adjuntar información del usuario al request
    req.usuario = {
      usu_codi: decoded.usu_codi,
      usuario: decoded.usuario,
      nombre: decoded.rol_nombre,
      correo: undefined,
      rol_codi: decoded.rol_codi,
      rol_nombre: decoded.rol_nombre,
    };

    next();
  } catch (error) {
    if (error instanceof jwt.TokenExpiredError) {
      res.status(401).json({
        success: false,
        message: 'Token expirado. Por favor inicie sesión nuevamente',
      });
      return;
    }

    if (error instanceof jwt.JsonWebTokenError) {
      res.status(401).json({
        success: false,
        message: 'Token inválido',
      });
      return;
    }

    res.status(500).json({
      success: false,
      message: 'Error verificando autenticación',
    });
  }
};

/**
 * Middleware para verificar permisos por opción
 * @param opcion ID de la opción del menú
 * @param permiso Tipo de permiso requerido ('leer', 'crear', 'modificar', 'borrar', 'imprimir')
 */
export const checkPermission = (opcion: number, permiso: 'leer' | 'crear' | 'modificar' | 'borrar' | 'imprimir') => {
  return async (req: AuthRequest, res: Response<ApiResponse>, next: NextFunction): Promise<void> => {
    try {
      if (!req.usuario) {
        res.status(401).json({
          success: false,
          message: 'Usuario no autenticado',
        });
        return;
      }

      // TODO: Implementar lógica de verificación de permisos desde la BD
      // Por ahora permite el paso si está autenticado
      // En producción, consultar la tabla PermisoRol y Permiso
      
      next();
    } catch (error) {
      res.status(500).json({
        success: false,
        message: 'Error verificando permisos',
      });
    }
  };
};
