import apiService from './api';

// Interfaces
export interface StockBodega {
  pro_codi: number;
  producto?: {
    pro_codi: number;
    pro_nombre: string;
    pro_cod_barras?: string;
    pro_clase: number;
    gru_codi?: number;
    grupo?: { gru_nombre: string };
  };
  bod_codi: number;
  bodega?: {
    bod_codi: number;
    bod_nombre: string;
    bod_ubicacion?: string;
  };
  st_cantidad: number;
  saldo_real: number;
  pro_minimo?: number;
  pro_maximo?: number;
}

export interface FiltroStock {
  bod_codi?: number;
  gru_codi?: number;
  busqueda?: string;
  conStockBajo?: boolean;
  sinStock?: boolean;
  pagina?: number;
  limite?: number;
}

export interface StockResponse {
  data: StockBodega[];
  total: number;
  pagina: number;
  limite: number;
  totalPages: number;
  resumen?: {
    totalProductos: number;
    valorTotalInventario: number;
    productosStockBajo: number;
    productosSinStock: number;
  };
}

export interface MovimientoStock {
  mvi_codi: number;
  mvi_clase_docu: number; // 0=Entrada, 1=Salida
  mvi_fecha_docu: string;
  mvi_num_docu: number;
  documentoOrigen?: string;
  pro_codi: number;
  producto?: {
    pro_nombre: string;
    pro_cod_barras?: string;
  };
  mvi_cantidad: number;
  bod_codi: number;
  bodega?: {
    bod_nombre: string;
  };
  observacion?: string;
  createdAt: string;
}

export interface FiltroMovimientos {
  fechaDesde?: string;
  fechaHasta?: string;
  bod_codi?: number;
  pro_codi?: number;
  tipoMovimiento?: number; // 0=Entrada, 1=Salida
  pagina?: number;
  limite?: number;
}

export interface MovimientosResponse {
  data: MovimientoStock[];
  total: number;
  pagina: number;
  limite: number;
  totalPages: number;
}

class StockService {
  private endpoint = '/stock';

  /**
   * Obtener stock general con filtros
   */
  async getStock(filtros?: FiltroStock): Promise<StockResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.bod_codi) params.append('bod_codi', String(filtros.bod_codi));
    if (filtros?.gru_codi) params.append('gru_codi', String(filtros.gru_codi));
    if (filtros?.busqueda) params.append('busqueda', filtros.busqueda);
    if (filtros?.conStockBajo) params.append('conStockBajo', 'true');
    if (filtros?.sinStock) params.append('sinStock', 'true');
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));

    return apiService.get<StockResponse>(`${this.endpoint}?${params.toString()}`);
  }

  /**
   * Obtener stock de un producto en todas las bodegas
   */
  async getStockPorProducto(proCodi: number): Promise<StockBodega[]> {
    return apiService.get<StockBodega[]>(`${this.endpoint}/producto/${proCodi}`);
  }

  /**
   * Obtener stock de una bodega específica
   */
  async getStockPorBodega(bodCodi: number): Promise<StockBodega[]> {
    return apiService.get<StockBodega[]>(`${this.endpoint}/bodega/${bodCodi}`);
  }

  /**
   * Obtener productos con stock bajo
   */
  async getStockBajo(bodCodi?: number): Promise<StockBodega[]> {
    const params = bodCodi ? `?bod_codi=${bodCodi}` : '';
    return apiService.get<StockBodega[]>(`${this.endpoint}/stock-bajo${params}`);
  }

  /**
   * Obtener productos sin stock
   */
  async getSinStock(bodCodi?: number): Promise<StockBodega[]> {
    const params = bodCodi ? `?bod_codi=${bodCodi}` : '';
    return apiService.get<StockBodega[]>(`${this.endpoint}/sin-stock${params}`);
  }

  /**
   * Obtener movimientos de inventario
   */
  async getMovimientos(filtros?: FiltroMovimientos): Promise<MovimientosResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.fechaDesde) params.append('fechaDesde', filtros.fechaDesde);
    if (filtros?.fechaHasta) params.append('fechaHasta', filtros.fechaHasta);
    if (filtros?.bod_codi) params.append('bod_codi', String(filtros.bod_codi));
    if (filtros?.pro_codi) params.append('pro_codi', String(filtros.pro_codi));
    if (filtros?.tipoMovimiento !== undefined) params.append('tipoMovimiento', String(filtros.tipoMovimiento));
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));

    return apiService.get<MovimientosResponse>(`${this.endpoint}/movimientos?${params.toString()}`);
  }

  /**
   * Obtener movimientos de un producto específico
   */
  async getMovimientosPorProducto(proCodi: number, fechaDesde?: string, fechaHasta?: string): Promise<MovimientoStock[]> {
    const params = new URLSearchParams();
    if (fechaDesde) params.append('fechaDesde', fechaDesde);
    if (fechaHasta) params.append('fechaHasta', fechaHasta);
    
    return apiService.get<MovimientoStock[]>(
      `${this.endpoint}/producto/${proCodi}/movimientos?${params.toString()}`
    );
  }

  /**
   * Realizar ajuste manual de stock
   */
  async ajustarStock(data: {
    pro_codi: number;
    bod_codi: number;
    cantidad: number; // Positivo=entrada, Negativo=salida
    observacion: string;
    documentoOrigen?: string;
  }): Promise<StockBodega> {
    return apiService.post<StockBodega>(`${this.endpoint}/ajuste`, data);
  }

  /**
   * Transferir stock entre bodegas
   */
  async transferirStock(data: {
    pro_codi: number;
    bod_codi_origen: number;
    bod_codi_destino: number;
    cantidad: number;
    observacion?: string;
  }): Promise<void> {
    await apiService.post(`${this.endpoint}/transferencia`, data);
  }

  /**
   * Exportar reporte de stock a Excel
   */
  async exportarStockExcel(filtros?: FiltroStock): Promise<Blob> {
    const params = new URLSearchParams();
    if (filtros?.bod_codi) params.append('bod_codi', String(filtros.bod_codi));
    if (filtros?.gru_codi) params.append('gru_codi', String(filtros.gru_codi));
    if (filtros?.busqueda) params.append('busqueda', filtros.busqueda);
    
    return apiService.get(`${this.endpoint}/exportar-excel?${params.toString()}`, {
      responseType: 'blob',
    });
  }

  /**
   * Obtener valor total del inventario
   */
  async getValorInventario(bodCodi?: number): Promise<{
    valorTotal: number;
    totalProductos: number;
    fechaCorte: string;
  }> {
    const params = bodCodi ? `?bod_codi=${bodCodi}` : '';
    return apiService.get(`${this.endpoint}/valor-inventario${params}`);
  }
}

export const stockService = new StockService();
export default stockService;
