import { useState, useCallback, useEffect } from 'react';

interface PaginationState {
  pagina: number;
  limite: number;
  total: number;
  totalPages: number;
}

interface UsePaginationProps {
  paginaInicial?: number;
  limiteInicial?: number;
}

export function usePagination({ 
  paginaInicial = 1, 
  limiteInicial = 10 
}: UsePaginationProps = {}) {
  const [pagination, setPagination] = useState<PaginationState>({
    pagina: paginaInicial,
    limite: limiteInicial,
    total: 0,
    totalPages: 0,
  });

  const updatePagination = useCallback((total: number, limite?: number) => {
    const newLimite = limite ?? pagination.limite;
    const totalPages = Math.ceil(total / newLimite);
    
    setPagination(prev => ({
      ...prev,
      total,
      limite: newLimite,
      totalPages,
      // Ajustar página si estamos más allá del total
      pagina: prev.pagina > totalPages ? Math.max(1, totalPages) : prev.pagina,
    }));
  }, [pagination.limite]);

  const goToPage = useCallback((pagina: number) => {
    setPagination(prev => ({
      ...prev,
      pagina: Math.max(1, Math.min(pagina, prev.totalPages || 1)),
    }));
  }, []);

  const nextPage = useCallback(() => {
    setPagination(prev => ({
      ...prev,
      pagina: Math.min(prev.pagina + 1, prev.totalPages || prev.pagina),
    }));
  }, []);

  const previousPage = useCallback(() => {
    setPagination(prev => ({
      ...prev,
      pagina: Math.max(1, prev.pagina - 1),
    }));
  }, []);

  const firstPage = useCallback(() => {
    setPagination(prev => ({
      ...prev,
      pagina: 1,
    }));
  }, []);

  const lastPage = useCallback(() => {
    setPagination(prev => ({
      ...prev,
      pagina: prev.totalPages || 1,
    }));
  }, []);

  const changePageSize = useCallback((limite: number) => {
    setPagination(prev => ({
      ...prev,
      limite,
      pagina: 1, // Resetear a primera página al cambiar tamaño
    }));
  }, []);

  return {
    pagination,
    updatePagination,
    goToPage,
    nextPage,
    previousPage,
    firstPage,
    lastPage,
    changePageSize,
  };
}

// Hook para búsqueda con debounce
export function useDebounce<T>(value: T, delay: number = 500): T {
  const [debouncedValue, setDebouncedValue] = useState<T>(value);

  useEffect(() => {
    const handler = setTimeout(() => {
      setDebouncedValue(value);
    }, delay);

    return () => {
      clearTimeout(handler);
    };
  }, [value, delay]);

  return debouncedValue;
}

// Hook para manejo de formularios genérico
export function useFormState<T>(initialState: T) {
  const [formData, setFormData] = useState<T>(initialState);
  const [errors, setErrors] = useState<Partial<Record<keyof T, string>>>({});
  const [isSubmitting, setIsSubmitting] = useState(false);

  const updateField = useCallback((field: keyof T, value: unknown) => {
    setFormData(prev => ({
      ...prev,
      [field]: value,
    }));
    
    // Limpiar error del campo al modificar
    if (errors[field]) {
      setErrors(prev => ({
        ...prev,
        [field]: undefined,
      }));
    }
  }, [errors]);

  const setFieldError = useCallback((field: keyof T, error: string) => {
    setErrors(prev => ({
      ...prev,
      [field]: error,
    }));
  }, []);

  const clearErrors = useCallback(() => {
    setErrors({});
  }, []);

  const resetForm = useCallback(() => {
    setFormData(initialState);
    clearErrors();
  }, [initialState, clearErrors]);

  return {
    formData,
    errors,
    isSubmitting,
    setIsSubmitting,
    updateField,
    setFieldError,
    clearErrors,
    resetForm,
  };
}
