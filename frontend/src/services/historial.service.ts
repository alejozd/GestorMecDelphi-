import apiService from './api';

// Interfaces
export interface HistorialServicio {
  otm_codi: number;
  otm_nume: number;
  otm_clase_doc: number; // 1=Factura, 2=Pedido
  otm_fecha: string;
  otm_vr_total: number;
  cliente: {
    cli_codi: number;
    cli_nombre: string;
  };
  vehiculo: {
    vxc_codi: number;
    placa: string;
    kilómetro_actual?: number;
  };
  detalles: Array<{
    pr_codi: number;
    producto: {
      pro_nombre: string;
      pro_clase: number; // 0=Producto, 1=Servicio
    };
    otd_cantidad: number;
    otd_precio: number;
    otd_vr_total: number;
  }>;
}

export interface ConsumoPorPeriodo {
  periodo: string; // YYYY-MM
  totalServicios: number;
  totalProductos: number;
  vrTotal: number;
}

export interface FiltroHistorial {
  cli_codi?: number;
  placa?: string;
  fechaDesde?: string;
  fechaHasta?: string;
  pagina?: number;
  limite?: number;
}

export interface HistorialResponse {
  data: HistorialServicio[];
  total: number;
  pagina: number;
  limite: number;
  totalPages: number;
  resumen?: {
    totalOrdenes: number;
    vrTotalHistorico: number;
    ultimoServicio?: string;
    kilometrajeActual?: number;
  };
}

class HistorialService {
  private endpoint = '/historial';

  /**
   * Obtener historial por cliente
   */
  async getHistorialPorCliente(cliCodi: number, filtros?: FiltroHistorial): Promise<HistorialResponse> {
    const params = new URLSearchParams();
    params.append('cli_codi', String(cliCodi));
    
    if (filtros?.fechaDesde) params.append('fechaDesde', filtros.fechaDesde);
    if (filtros?.fechaHasta) params.append('fechaHasta', filtros.fechaHasta);
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));

    return apiService.get<HistorialResponse>(`${this.endpoint}/cliente?${params.toString()}`);
  }

  /**
   * Obtener historial por placa
   */
  async getHistorialPorPlaca(placa: string, filtros?: FiltroHistorial): Promise<HistorialResponse> {
    const params = new URLSearchParams();
    params.append('placa', placa);
    
    if (filtros?.fechaDesde) params.append('fechaDesde', filtros.fechaDesde);
    if (filtros?.fechaHasta) params.append('fechaHasta', filtros.fechaHasta);
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));

    return apiService.get<HistorialResponse>(`${this.endpoint}/placa?${params.toString()}`);
  }

  /**
   * Obtener consumo por período (gráfica)
   */
  async getConsumoPorPeriodo(cliCodi: number, meses?: number): Promise<ConsumoPorPeriodo[]> {
    const params = new URLSearchParams();
    if (meses) params.append('meses', String(meses));
    
    return apiService.get<ConsumoPorPeriodo[]>(
      `${this.endpoint}/cliente/${cliCodi}/consumo-periodo?${params.toString()}`
    );
  }

  /**
   * Obtener servicios más frecuentes para un vehículo
   */
  async getServiciosFrecuentes(vxcCodi: number, limite?: number) {
    const params = new URLSearchParams();
    if (limite) params.append('limite', String(limite));
    
    return apiService.get<Array<{
      pro_codi: number;
      pro_nombre: string;
      frecuencia: number;
      vrPromedio: number;
    }>>(`${this.endpoint}/vehiculo/${vxcCodi}/servicios-frecuentes?${params.toString()}`);
  }

  /**
   * Obtener próximo mantenimiento sugerido
   */
  async getNextMantenimientoSugerido(vxcCodi: number): Promise<{
    kilometrajeSugerido: number;
    fechaSugerida?: string;
    serviciosRecomendados: Array<{
      pro_codi: number;
      pro_nombre: string;
    }>;
  } | null> {
    try {
      return await apiService.get(`${this.endpoint}/vehiculo/${vxcCodi}/proximo-mantenimiento`);
    } catch {
      return null;
    }
  }

  /**
   * Exportar historial a PDF
   */
  async exportarHistorialPDF(cliCodi: number): Promise<Blob> {
    return apiService.get(`${this.endpoint}/cliente/${cliCodi}/exportar-pdf`, {
      responseType: 'blob',
    });
  }

  /**
   * Exportar historial a Excel
   */
  async exportarHistorialExcel(cliCodi: number): Promise<Blob> {
    return apiService.get(`${this.endpoint}/cliente/${cliCodi}/exportar-excel`, {
      responseType: 'blob',
    });
  }
}

export const historialService = new HistorialService();
export default historialService;
