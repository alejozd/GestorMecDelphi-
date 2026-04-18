import apiService, { ApiResponse } from './api';
import { PaginatedData } from './cliente.service';

// Interfaces
export interface Producto {
  pro_codi: number;
  pro_nombre: string;
  pro_descripcion?: string;
  pro_referencia?: string;
  pro_cod_barras?: string;
  pro_precio: number;
  pro_maximo?: number;
  pro_minimo?: number;
  pro_iva: number;
  pro_clase: number; // 0=Producto, 1=Servicio
  pro_marca?: string;
  pro_presentacion?: string;
  gru_codi?: number;
  grupo?: {
    gru_codi: number;
    gru_nombre: string;
  };
  stockActual?: number;
}

export interface ProductoCreate {
  pro_nombre: string;
  pro_descripcion?: string;
  pro_referencia?: string;
  pro_cod_barras?: string;
  pro_precio: number;
  pro_maximo?: number;
  pro_minimo?: number;
  pro_iva?: number;
  pro_clase?: number;
  pro_marca?: string;
  pro_presentacion?: string;
  gru_codi?: number;
}

export interface ProductoUpdate extends Partial<ProductoCreate> {
  pro_codi: number;
}

export interface FiltroProducto {
  pagina?: number;
  limite?: number;
  busqueda?: string;
  gru_codi?: number;
  pro_clase?: number; // 0=Producto, 1=Servicio
  conStock?: boolean;
}

export type ProductosResponse = ApiResponse<PaginatedData<Producto>>;
export type ProductoResponse = ApiResponse<Producto>;

export interface MovimientoInventario {
  mvi_codi: number;
  mvi_clase_docu: number; // 0=Entrada, 1=Salida
  mvi_fecha_docu: string;
  mvi_num_docu: number;
  pro_codi: number;
  producto?: Producto;
  mvi_cantidad: number;
  bod_codi: number;
  bodega?: {
    bod_codi: number;
    bod_nombre: string;
  };
  createdAt: string;
}

class ProductoService {
  private endpoint = '/productos';

  /**
   * Obtener lista de productos con paginación y filtros
   */
  async getProductos(filtros?: FiltroProducto): Promise<ProductosResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));
    if (filtros?.busqueda) params.append('busqueda', filtros.busqueda);
    if (filtros?.gru_codi) params.append('gru_codi', String(filtros.gru_codi));
    if (filtros?.pro_clase !== undefined) params.append('pro_clase', String(filtros.pro_clase));
    if (filtros?.conStock) params.append('conStock', 'true');

    return apiService.get<ProductosResponse>(`${this.endpoint}?${params.toString()}`);
  }

  /**
   * Obtener producto por ID
   */
  async getProductoById(id: number): Promise<ProductoResponse> {
    return apiService.get<ProductoResponse>(`${this.endpoint}/${id}`);
  }

  /**
   * Obtener producto por código de barras
   */
  async getProductoByCodBarras(codBarras: string): Promise<ProductoResponse | null> {
    try {
      return await apiService.get<ProductoResponse>(`${this.endpoint}/cod-barras/${encodeURIComponent(codBarras)}`);
    } catch {
      return null;
    }
  }

  /**
   * Crear nuevo producto
   */
  async createProducto(data: ProductoCreate): Promise<ProductoResponse> {
    return apiService.post<ProductoResponse>(this.endpoint, data);
  }

  /**
   * Actualizar producto
   */
  async updateProducto(data: ProductoUpdate): Promise<ProductoResponse> {
    const { pro_codi, ...rest } = data;
    return apiService.put<ProductoResponse>(`${this.endpoint}/${pro_codi}`, rest);
  }

  /**
   * Eliminar producto
   */
  async deleteProducto(id: number): Promise<void> {
    await apiService.delete(`${this.endpoint}/${id}`);
  }

  /**
   * Buscar productos por término (autocomplete)
   */
  async searchProductos(term: string, limite?: number, proClase?: number): Promise<Producto[]> {
    const params = new URLSearchParams();
    params.append('busqueda', term);
    if (limite) params.append('limite', String(limite));
    if (proClase !== undefined) params.append('pro_clase', String(proClase));
    
    const response = await apiService.get<ProductosResponse>(`${this.endpoint}/search?${params.toString()}`);
    return response.data.data;
  }

  /**
   * Obtener grupos de inventario
   */
  async getGruposInventario() {
    return apiService.get<Array<{ gru_codi: number; gru_nombre: string }>>(
      '/catalogos/grupos-inventario'
    );
  }

  /**
   * Obtener stock de un producto por bodegas
   */
  async getStockPorBodega(proCodi: number) {
    return apiService.get<Array<{ 
      bod_codi: number; 
      bodega: { bod_codi: number; bod_nombre: string }; 
      st_cantidad: number; 
    }>>(`${this.endpoint}/${proCodi}/stock`);
  }

  /**
   * Obtener movimientos de inventario de un producto
   */
  async getMovimientos(proCodi: number, fechaDesde?: string, fechaHasta?: string): Promise<ApiResponse<MovimientoInventario[]>> {
    const params = new URLSearchParams();
    if (fechaDesde) params.append('fechaDesde', fechaDesde);
    if (fechaHasta) params.append('fechaHasta', fechaHasta);
    
    return apiService.get<ApiResponse<MovimientoInventario[]>>(`${this.endpoint}/${proCodi}/movimientos?${params.toString()}`);
  }

  /**
   * Ajustar stock (entrada/salida manual)
   */
  async ajustarStock(proCodi: number, cantidad: number, bodCodi: number, observacion?: string) {
    return apiService.post(`${this.endpoint}/${proCodi}/ajuste-stock`, {
      cantidad,
      bodCodi,
      observacion,
    });
  }
}

export const productoService = new ProductoService();
export default productoService;
