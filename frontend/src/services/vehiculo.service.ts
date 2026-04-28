import apiService, { ApiResponse } from './api';
import { PaginatedResponse } from './cliente.service';

// Interfaces
export interface Vehiculo {
  vxc_codi: number;
  cli_codi: number;
  cliente?: {
    cli_codi: number;
    cli_nombre: string;
    cli_numdoc: string;
  };
  placa: string;
  mr_codi: number;
  marca?: {
    mr_codi: number;
    mr_nombre: string;
  };
  li_codi: number;
  linea?: {
    li_codi: number;
    li_nombre: string;
    mr_codi: number;
  };
  color?: string;
  modelo?: number;
  kilómetro_inicial?: number;
  kilómetro_actual?: number;
}

export interface VehiculoCreate {
  cli_codi: number;
  placa: string;
  mr_codi: number;
  li_codi: number;
  color?: string;
  modelo?: number;
  kilómetro_inicial?: number;
  kilómetro_actual?: number;
}

export interface VehiculoUpdate extends Partial<VehiculoCreate> {
  vxc_codi: number;
}

export interface FiltroVehiculo {
  page?: number;
  limit?: number;
  search?: string;
  placa?: string;
  cli_codi?: number;
  mr_codi?: number;
}

export type VehiculosResponse = PaginatedResponse<Vehiculo>;
export type VehiculoResponse = ApiResponse<Vehiculo>;

class VehiculoService {
  private endpoint = '/vehiculos';

  /**
   * Obtener lista de vehículos con paginación y filtros
   */
  async getVehiculos(filtros?: FiltroVehiculo): Promise<VehiculosResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.page) params.append('page', String(filtros.page));
    if (filtros?.limit) params.append('limit', String(filtros.limit));
    if (filtros?.search) params.append('search', filtros.search);
    if (filtros?.placa) params.append('placa', filtros.placa);
    if (filtros?.cli_codi) params.append('cli_codi', String(filtros.cli_codi));
    if (filtros?.mr_codi) params.append('mr_codi', String(filtros.mr_codi));

    return apiService.get<VehiculosResponse>(`${this.endpoint}?${params.toString()}`);
  }

  /**
   * Obtener vehículo por ID
   */
  async getVehiculoById(id: number): Promise<VehiculoResponse> {
    return apiService.get<VehiculoResponse>(`${this.endpoint}/${id}`);
  }

  /**
   * Obtener vehículo por placa
   */
  async getVehiculoByPlaca(placa: string): Promise<VehiculoResponse | null> {
    try {
      return await apiService.get<VehiculoResponse>(`${this.endpoint}/placa/${encodeURIComponent(placa)}`);
    } catch {
      return null;
    }
  }

  /**
   * Obtener vehículos por cliente
   */
  async getVehiculosPorCliente(cliCodi: number): Promise<Vehiculo[]> {
    const response = await apiService.get<VehiculosResponse>(
      `${this.endpoint}?cli_codi=${cliCodi}&limit=100`
    );
    return response.data;
  }

  /**
   * Crear nuevo vehículo
   */
  async createVehiculo(data: VehiculoCreate): Promise<VehiculoResponse> {
    return apiService.post<VehiculoResponse>(this.endpoint, data);
  }

  /**
   * Actualizar vehículo
   */
  async updateVehiculo(data: VehiculoUpdate): Promise<VehiculoResponse> {
    const { vxc_codi, ...rest } = data;
    return apiService.put<VehiculoResponse>(`${this.endpoint}/${vxc_codi}`, rest);
  }

  /**
   * Eliminar vehículo
   */
  async deleteVehiculo(id: number): Promise<void> {
    await apiService.delete(`${this.endpoint}/${id}`);
  }

  /**
   * Actualizar kilometraje
   */
  async actualizarKilometraje(vxcCodi: number, kilometraje: number): Promise<VehiculoResponse> {
    return apiService.patch<VehiculoResponse>(`${this.endpoint}/${vxcCodi}/kilometraje`, {
      kilómetro_actual: kilometraje,
    });
  }

  /**
   * Obtener marcas
   */
  async getMarcas() {
    return apiService.get<ApiResponse<Array<{ mr_codi: number; mr_nombre: string }>>>('/catalogos/marcas');
  }

  /**
   * Obtener líneas por marca
   */
  async getLineasPorMarca(mrCodi: number) {
    return apiService.get<ApiResponse<Array<{ li_codi: number; li_nombre: string; mr_codi: number }>>>(
      `/catalogos/lineas?mr_codi=${mrCodi}`
    );
  }

  async createMarca(nombre: string) {
    return apiService.post<ApiResponse<any>>('/catalogos/marcas', { mr_nombre: nombre });
  }

  async createLinea(mrCodi: number, nombre: string) {
    return apiService.post<ApiResponse<any>>('/catalogos/lineas', { mr_codi: mrCodi, li_nombre: nombre });
  }
}

export const vehiculoService = new VehiculoService();
export default vehiculoService;
