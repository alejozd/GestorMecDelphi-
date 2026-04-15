import { Request, Response, NextFunction } from 'express';
import { ApiResponse } from '../types/index.js';

/**
 * Error personalizado para manejo uniforme de errores
 */
export class AppError extends Error {
  statusCode: number;
  isOperational: boolean;

  constructor(message: string, statusCode: number) {
    super(message);
    this.statusCode = statusCode;
    this.isOperational = true;

    Error.captureStackTrace(this, this.constructor);
  }
}

/**
 * Middleware para manejo global de errores
 */
export const errorHandler = (
  err: Error | AppError,
  req: Request,
  res: Response<ApiResponse>,
  next: NextFunction
): void => {
  console.error('Error:', err);

  // Error operacional controlado
  if (err instanceof AppError) {
    res.status(err.statusCode).json({
      success: false,
      message: err.message,
    });
    return;
  }

  // Error de Prisma (base de datos)
  if (err.name === 'PrismaClientKnownRequestError') {
    const prismaError = err as any;
    
    switch (prismaError.code) {
      case 'P2002': // Violación de unicidad
        res.status(409).json({
          success: false,
          message: 'Ya existe un registro con los valores proporcionados',
        });
        break;
      case 'P2003': // Violación de clave foránea
        res.status(400).json({
          success: false,
          message: 'La referencia a otro registro no es válida',
        });
        break;
      case 'P2025': // Registro no encontrado
        res.status(404).json({
          success: false,
          message: 'El registro solicitado no existe',
        });
        break;
      default:
        res.status(500).json({
          success: false,
          message: 'Error en la base de datos',
        });
    }
    return;
  }

  // Error de validación de Zod
  if (err.name === 'ZodError') {
    const zodError = err as any;
    res.status(400).json({
      success: false,
      message: 'Error de validación',
      errors: zodError.errors?.map((e: any) => ({
        field: e.path.join('.'),
        message: e.message,
      })),
    });
    return;
  }

  // Error por defecto (500)
  res.status(500).json({
    success: false,
    message: process.env.NODE_ENV === 'development' 
      ? err.message 
      : 'Error interno del servidor',
  });
};

/**
 * Middleware para rutas no encontradas (404)
 */
export const notFoundHandler = (
  req: Request,
  res: Response<ApiResponse>,
  next: NextFunction
): void => {
  res.status(404).json({
    success: false,
    message: `Ruta ${req.method} ${req.path} no encontrada`,
  });
};
