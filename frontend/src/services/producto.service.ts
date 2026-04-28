import apiService, { ApiResponse } from './api';
import { PaginatedResponse } from './cliente.service';

export interface Producto {
  pro_codi: number;
  pro_nombre: string;
  pro_referencia?: string;
  gp_codi: number;
  grupo?: { gp_nombre: string };
  um_codi: number;
  unidad?: { um_nombre: string };
  pro_precio_vta: number;
  pro_iva: number;
  pro_es_servicio: boolean;
  pro_estado: string;
}

class ProductoService {
  private endpoint = '/productos';

  async getProductos(params?: any): Promise<PaginatedResponse<Producto>> {
    const q = new URLSearchParams(params).toString();
    return apiService.get(`${this.endpoint}?${q}`);
  }

  async getProductoById(id: number): Promise<ApiResponse<Producto>> {
    return apiService.get(`${this.endpoint}/${id}`);
  }

  async createProducto(data: any): Promise<ApiResponse<Producto>> {
    return apiService.post(this.endpoint, data);
  }

  async updateProducto(id: number, data: any): Promise<ApiResponse<Producto>> {
    return apiService.put(`${this.endpoint}/${id}`, data);
  }

  async deleteProducto(id: number): Promise<void> {
    await apiService.delete(`${this.endpoint}/${id}`);
  }

  async getGrupos() {
    return apiService.get<ApiResponse<any[]>>('/catalogos/grupos');
  }

  async getUnidades() {
    return apiService.get<ApiResponse<any[]>>('/catalogos/unidades');
  }
}

export const productoService = new ProductoService();
export default productoService;
