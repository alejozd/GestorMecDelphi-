/**
 * Utilidades generales para el backend
 */

/**
 * Formatea un número como moneda colombiana
 */
export const formatCurrency = (value: number | string): string => {
  const numValue = typeof value === 'string' ? parseFloat(value) : value;
  return new Intl.NumberFormat('es-CO', {
    style: 'currency',
    currency: 'COP',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(numValue);
};

/**
 * Formatea una fecha a formato legible en español
 */
export const formatDate = (date: Date | string): string => {
  const dateObj = typeof date === 'string' ? new Date(date) : date;
  return new Intl.DateTimeFormat('es-CO', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    hour: '2-digit',
    minute: '2-digit',
  }).format(dateObj);
};

/**
 * Genera un número consecutivo con ceros a la izquierda
 */
export const formatConsecutive = (num: number, digits: number = 6): string => {
  return num.toString().padStart(digits, '0');
};

/**
 * Calcula el IVA de un valor
 */
export const calculateIva = (base: number, ivaPercent: number): number => {
  return Math.round((base * (ivaPercent / 100)) * 100) / 100;
};

/**
 * Calcula el descuento de un valor
 */
export const calculateDiscount = (base: number, discountPercent: number): number => {
  return Math.round((base * (discountPercent / 100)) * 100) / 100;
};

/**
 * Calcula totales de una línea de documento
 * @returns objeto con subtotal, iva, descuento y total
 */
export const calculateLineTotals = (
  cantidad: number,
  precio: number,
  ivaPercent: number,
  discountPercent: number,
  applyIva: boolean = true
): { sbtotal: number; vrIva: number; vrDsc: number; vrTotal: number } => {
  const sbtotal = Math.round((cantidad * precio) * 100) / 100;
  const vrIva = applyIva ? calculateIva(sbtotal, ivaPercent) : 0;
  const vrDsc = calculateDiscount(sbtotal + vrIva, discountPercent);
  const vrTotal = sbtotal + vrIva - vrDsc;

  return { sbtotal, vrIva, vrDsc, vrTotal };
};

/**
 * Calcula totales de un documento completo
 */
export const calculateDocumentTotals = (
  items: Array<{
    sbtotal: number;
    vrIva: number;
    vrDsc: number;
    vrTotal: number;
  }>,
  applyIva: boolean = true
): { subtotal: number; vrIva: number; vrDsc: number; vrTotal: number } => {
  const subtotal = items.reduce((sum, item) => sum + item.sbtotal, 0);
  const vrIva = applyIva 
    ? items.reduce((sum, item) => sum + item.vrIva, 0)
    : 0;
  const vrDsc = items.reduce((sum, item) => sum + item.vrDsc, 0);
  const vrTotal = items.reduce((sum, item) => sum + item.vrTotal, 0);

  return {
    subtotal: Math.round(subtotal * 100) / 100,
    vrIva: Math.round(vrIva * 100) / 100,
    vrDsc: Math.round(vrDsc * 100) / 100,
    vrTotal: Math.round(vrTotal * 100) / 100,
  };
};

/**
 * Valida si un string es un email válido
 */
export const isValidEmail = (email: string): boolean => {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
};

/**
 * Limpia caracteres especiales de un string
 */
export const sanitizeString = (str: string): string => {
  return str
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toUpperCase()
    .trim();
};

/**
 * Parsea un string a número decimal
 */
export const parseDecimal = (value: any): number => {
  if (typeof value === 'number') return value;
  if (typeof value === 'string') {
    const cleaned = value.replace(/[^0-9.-]/g, '');
    return parseFloat(cleaned) || 0;
  }
  return 0;
};

/**
 * Genera un token aleatorio para reset de password u otros usos
 */
export const generateRandomToken = (length: number = 32): string => {
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  let result = '';
  for (let i = 0; i < length; i++) {
    result += chars.charAt(Math.floor(Math.random() * chars.length));
  }
  return result;
};
