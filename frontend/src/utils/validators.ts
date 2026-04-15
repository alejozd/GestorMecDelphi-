/**
 * Tipos y utilidades para validación con Zod
 */

import { z } from 'zod';

// Schema para autenticación
export const loginSchema = z.object({
  usuario: z.string().min(3, 'El usuario debe tener al menos 3 caracteres'),
  password: z.string().min(6, 'La contraseña debe tener al menos 6 caracteres'),
});

export type LoginFormData = z.infer<typeof loginSchema>;

// Schema para cliente
export const clienteSchema = z.object({
  cod_tipdo: z.number({ required_error: 'Tipo de documento requerido' }),
  cli_numdoc: z.string().min(1, 'Número de documento requerido'),
  cli_nombre: z.string().min(1, 'Nombre requerido').max(255),
  cli_direccion: z.string().optional(),
  cli_tel_movil: z.string().optional(),
  cli_tel_fijo: z.string().optional(),
  cli_correoe: z.string().email('Correo electrónico inválido').optional().or(z.literal('')),
  ciu_codi: z.number().optional(),
});

export type ClienteFormData = z.infer<typeof clienteSchema>;

// Schema para vehículo
export const vehiculoSchema = z.object({
  cli_codi: z.number({ required_error: 'Cliente requerido' }),
  placa: z.string().min(1, 'Placa requerida').max(20),
  mr_codi: z.number({ required_error: 'Marca requerida' }),
  li_codi: z.number({ required_error: 'Línea requerida' }),
  color: z.string().optional(),
  modelo: z.number().optional(),
  kilómetro_inicial: z.number().optional(),
  kilómetro_actual: z.number().optional(),
});

export type VehiculoFormData = z.infer<typeof vehiculoSchema>;

// Schema para producto
export const productoSchema = z.object({
  pro_nombre: z.string().min(1, 'Nombre requerido').max(100),
  pro_descripcion: z.string().optional(),
  pro_referencia: z.string().optional(),
  pro_cod_barras: z.string().optional(),
  pro_precio: z.number().positive('Precio debe ser mayor a 0'),
  pro_maximo: z.number().int().optional(),
  pro_minimo: z.number().int().optional(),
  pro_iva: z.number().min(0).max(100).default(0),
  pro_clase: z.number().int().default(0), // 0=Producto, 1=Servicio
  pro_marca: z.string().optional(),
  pro_presentacion: z.string().optional(),
  gru_codi: z.number().optional(),
});

export type ProductoFormData = z.infer<typeof productoSchema>;

// Schema para orden de trabajo
export const ordenTrabajoSchema = z.object({
  cli_codi: z.number({ required_error: 'Cliente requerido' }),
  vxc_codi: z.number().optional(),
  otm_fecha: z.string(),
  otm_fecha_vence: z.string().optional(),
  otm_kilometraje: z.string().optional(),
  otm_observacion: z.string().optional(),
  detalles: z.array(z.object({
    pr_codi: z.number(),
    otd_cantidad: z.number().positive(),
    otd_precio: z.number().positive(),
    otd_por_dsc: z.number().min(0).max(100).default(0),
    emp_codi: z.number().optional(),
    bod_codi: z.number().optional(),
  })).min(1, 'Debe agregar al menos un ítem'),
  fp_codi: z.number().optional(),
});

export type OrdenTrabajoFormData = z.infer<typeof ordenTrabajoSchema>;

// Schema para finalizar orden (Factura vs Pedido)
export const finalizarOrdenSchema = z.object({
  otm_clase_doc: z.number({ required_error: 'Tipo de documento requerido' }), // 1=Factura, 2=Pedido
  otm_estado: z.number().default(1), // 1=Finalizado
});

export type FinalizarOrdenFormData = z.infer<typeof finalizarOrdenSchema>;

// Utilidades de formateo
export const formatCurrency = (value: number): string => {
  return new Intl.NumberFormat('es-CO', {
    style: 'currency',
    currency: 'COP',
    minimumFractionDigits: 0,
  }).format(value);
};

export const formatDate = (date: Date | string): string => {
  return new Intl.DateTimeFormat('es-CO', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).format(new Date(date));
};

export const formatNumber = (value: number): string => {
  return new Intl.NumberFormat('es-CO').format(value);
};

// Validadores personalizados
export const validatePlaca = (placa: string): boolean => {
  const placaRegex = /^[A-Z0-9]{6,7}$/i;
  return placaRegex.test(placa);
};

export const validateEmail = (email: string): boolean => {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
};

export const validatePhone = (phone: string): boolean => {
  const phoneRegex = /^[\d\s\-\+\(\)]{7,15}$/;
  return phoneRegex.test(phone);
};
