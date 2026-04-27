import apiService, { ApiResponse } from './api';

// Interfaces
export interface Cliente {
  cli_codi: number;
  cod_tipdo: number;
  tipoDocumento?: {
    td_codi: number;
    td_abreviado: string;
    td_nombre: string;
  };
  cli_numdoc: string;
  cli_nombre: string;
  cli_direccion?: string;
  cli_tel_movil?: string;
  cli_tel_fijo?: string;
  cli_correoe?: string;
  ciu_codi?: number;
  ciudad?: {
    ciu_codi: number;
    ciu_nombre: string;
  };
  createdAt: string;
  updatedAt: string;
}

export interface ClienteCreate {
  cod_tipdo: number;
  cli_numdoc: string;
  cli_nombre: string;
  cli_direccion?: string;
  cli_tel_movil?: string;
  cli_tel_fijo?: string;
  cli_correoe?: string;
  ciu_codi?: number;
}

export interface ClienteUpdate extends Partial<ClienteCreate> {
  cli_codi: number;
}

export interface FiltroCliente {
  page?: number;
  limit?: number;
  limite?: number; // Compatibilidad temporal
  search?: string;
  cod_tipdo?: number;
  ciu_codi?: number;
}

export interface PaginatedData<T> {
  data: T[];
  pagination: {
    total: number;
    page: number;
    limit: number;
    totalPages: number;
  };
}

export interface PaginatedResponse<T> {
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

export type ClientesResponse = PaginatedResponse<Cliente>;
export type ClienteResponse = ApiResponse<Cliente>;

class ClienteService {
  private endpoint = '/clientes';

  /**
   * Obtener lista de clientes con paginación y filtros
   */
  async getClientes(filtros?: FiltroCliente): Promise<ClientesResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.page) params.append('page', String(filtros.page));
    if (filtros?.limit) params.append('limit', String(filtros.limit));
    if (filtros?.search) params.append('search', filtros.search);
    if (filtros?.cod_tipdo) params.append('cod_tipdo', String(filtros.cod_tipdo));
    if (filtros?.ciu_codi) params.append('ciu_codi', String(filtros.ciu_codi));

    return apiService.get<ClientesResponse>(`${this.endpoint}?${params.toString()}`);
  }

  /**
   * Obtener cliente por ID
   */
  async getClienteById(id: number): Promise<ClienteResponse> {
    return apiService.get<ClienteResponse>(`${this.endpoint}/${id}`);
  }

  /**
   * Obtener cliente por número de documento
   */
  async getClienteByDocumento(codTipdo: number, numdoc: string): Promise<ClienteResponse | null> {
    try {
      return await apiService.get<ClienteResponse>(`${this.endpoint}/documento/${codTipdo}/${numdoc}`);
    } catch {
      return null;
    }
  }

  /**
   * Crear nuevo cliente
   */
  async createCliente(data: ClienteCreate): Promise<ClienteResponse> {
    return apiService.post<ClienteResponse>(this.endpoint, data);
  }

  /**
   * Actualizar cliente
   */
  async updateCliente(data: ClienteUpdate): Promise<ClienteResponse> {
    const { cli_codi, ...rest } = data;
    return apiService.put<ClienteResponse>(`${this.endpoint}/${cli_codi}`, rest);
  }

  /**
   * Eliminar cliente
   */
  async deleteCliente(id: number): Promise<void> {
    await apiService.delete(`${this.endpoint}/${id}`);
  }

  /**
   * Buscar clientes por término (autocomplete)
   */
  async searchClientes(term: string, limit?: number): Promise<Cliente[]> {
    const params = new URLSearchParams();
    params.append('search', term);
    if (limit) params.append('limit', String(limit));
    
    const response = await apiService.get<ClientesResponse>(`${this.endpoint}/search?${params.toString()}`);
    return response.data;
  }

  /**
   * Obtener tipos de documento
   */
  async getTiposDocumento() {
    return apiService.get<ApiResponse<Array<{ td_codi: number; td_abreviado: string; td_nombre: string }>>>(
      '/catalogos/tipos-documento'
    );
  }

  /**
   * Obtener ciudades
   */
  async getCiudades(departamentoId?: number) {
    const params = departamentoId ? `?dep_codigo=${departamentoId}` : '';
    return apiService.get<ApiResponse<Array<{ ciu_codi: number; ciu_nombre: string; dep_codigo?: number }>>>(
      `/catalogos/ciudades${params}`
    );
  }
}

export const clienteService = new ClienteService();
export default clienteService;
