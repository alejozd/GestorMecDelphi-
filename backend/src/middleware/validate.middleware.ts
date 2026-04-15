import { Request, Response, NextFunction } from 'express';
import { validationResult, ValidationChain } from 'express-validator';
import { ApiResponse } from '../types/index.js';

/**
 * Middleware para validar requests usando express-validator
 */
export const validate = (validations: ValidationChain[]) => {
  return async (req: Request, res: Response<ApiResponse>, next: NextFunction): Promise<void> => {
    // Ejecutar todas las validaciones
    await Promise.all(validations.map(validation => validation.run(req)));

    // Obtener resultados de validación
    const errors = validationResult(req);

    if (errors.isEmpty()) {
      next();
      return;
    }

    // Extraer errores en formato legible
    const extractedErrors = errors.array().map((err: any) => ({
      field: err.path || 'unknown',
      message: err.msg,
    }));

    res.status(400).json({
      success: false,
      message: 'Error de validación en los datos enviados',
      errors: extractedErrors,
    });
  };
};
