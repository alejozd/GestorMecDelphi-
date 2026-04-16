import { Request } from 'express';

// ============================================
// EXTENSIÓN DE REQUEST CON USUARIO AUTENTICADO
// ============================================

export interface AuthRequest extends Request {
  usuario?: {
    usu_codi: number;
    usuario: string;
    nombre: string;
    correo?: string;
    rol_codi: number;
    rol_nombre: string;
  };
}

// ============================================
// CLASES DE DOCUMENTO (ORDEN/FACTURA/PEDIDO)
// ============================================

export enum ClaseDocumento {
  ORDEN = 0,
  FACTURA = 1,
  PEDIDO = 2,
}

// ============================================
// ESTADOS DE ORDEN DE TRABAJO
// ============================================

export enum EstadoOrden {
  EN_PROCESO = 0,
  FINALIZADO = 1,
  ANULADO = 2,
}

// ============================================
// CLASES DE PRODUCTO
// ============================================

export enum ClaseProducto {
  PRODUCTO = 0, // Con stock
  SERVICIO = 1, // Sin stock
}

// ============================================
// ESTADOS DE ENTRADA
// ============================================

export enum EstadoEntrada {
  BORRADOR = 0,
  FINALIZADO = 1,
  ANULADO = 2,
}

// ============================================
// TIPOS DE MOVIMIENTO DE INVENTARIO
// ============================================

export enum TipoMovimientoInventario {
  ENTRADA = 0,
  SALIDA = 1,
  AJUSTE = 2,
  DEVOLUCION = 3,
}

// ============================================
// PERMISOS
// ============================================

export interface PermisosUsuario {
  opcion: number;
  leer: boolean;
  crear: boolean;
  modificar: boolean;
  borrar: boolean;
  imprimir: boolean;
}

// ============================================
// RESPUESTAS API
// ============================================

export interface ApiResponse<T = any> {
  success: boolean;
  message: string;
  data?: T;
  errors?: any[];
}

export interface PaginatedResponse<T = any> {
  success: boolean;
  message: string;
  data: T[];
  pagination: {
    total: number;
    page: number;
    limit: number;
    totalPages: number;
  };
}

// ============================================
// VALIDACIÓN CON ZOD
// ============================================

export type ZodErrorMap = Record<string, string[]>;
