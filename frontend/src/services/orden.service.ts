import apiService, { ApiResponse } from './api';
import { PaginatedData } from './cliente.service';

// Interfaces
export interface OrdenDetalleItem {
  pr_codi: number;
  producto?: {
    pro_codi: number;
    pro_nombre: string;
    pro_precio: number;
    pro_iva: number;
    pro_clase: number;
  };
  otd_cantidad: number;
  otd_precio: number;
  otd_sbtotal: number;
  otd_por_iva: number;
  otd_vr_iva: number;
  otd_por_dsc: number;
  otd_vr_dsc: number;
  otd_vr_total: number;
  emp_codi?: number;
  empleado?: {
    emp_codi: number;
    emp_nombre: string;
  };
  bod_codi?: number;
  bodega?: {
    bod_codi: number;
    bod_nombre: string;
  };
}

export interface OrdenTrabajo {
  otm_codi: number;
  otm_clase_doc: number; // 0=Orden, 1=Factura, 2=Pedido
  otm_nume: number;
  cli_codi: number;
  cliente?: {
    cli_codi: number;
    cli_nombre: string;
    cli_numdoc: string;
  };
  vxc_codi?: number;
  vehiculo?: {
    vxc_codi: number;
    placa: string;
    marca?: { mr_nombre: string };
    linea?: { li_nombre: string };
  };
  otm_fecha: string;
  otm_fecha_vence?: string;
  otm_kilometraje?: string;
  otm_observacion?: string;
  otm_subtotal: number;
  otm_vr_iva: number;
  otm_vr_desc: number;
  otm_vr_total: number;
  fp_codi?: number;
  otm_estado: number; // 0=En Proceso, 1=Finalizado
  detalles: OrdenDetalleItem[];
  createdAt: string;
  updatedAt: string;
}

export interface OrdenTrabajoCreate {
  cli_codi: number;
  vxc_codi?: number;
  otm_fecha?: string;
  otm_fecha_vence?: string;
  otm_kilometraje?: string;
  otm_observacion?: string;
  detalles: Array<{
    pr_codi: number;
    otd_cantidad: number;
    otd_precio: number;
    otd_por_dsc?: number;
    emp_codi?: number;
    bod_codi?: number;
  }>;
  fp_codi?: number;
}

export interface OrdenTrabajoUpdate extends Partial<OrdenTrabajoCreate> {
  otm_codi: number;
}

export interface FiltroOrden {
  pagina?: number;
  limite?: number;
  otm_nume?: number;
  cli_codi?: number;
  placa?: string;
  otm_estado?: number;
  otm_clase_doc?: number;
  fechaDesde?: string;
  fechaHasta?: string;
}

export type OrdenesResponse = ApiResponse<PaginatedData<OrdenTrabajo>>;
export type OrdenResponse = ApiResponse<OrdenTrabajo>;

export interface OrdenStats {
  totalOrdenes: number;
  totalFacturado: number;
  porEstado: Array<{ otm_estado: number; _count: number }>;
  porTipo: Array<{ otm_clase_doc: number; _count: number; _sum: { otm_vr_total: number | null } }>;
}

export type OrdenStatsResponse = ApiResponse<OrdenStats>;

export interface FinalizarOrdenData {
  otm_clase_doc: number; // 1=Factura, 2=Pedido/Recibo
  otm_estado: number; // 1=Finalizado
  observacion?: string;
}

class OrdenTrabajoService {
  private endpoint = '/ordenes';

  /**
   * Obtener lista de órdenes con paginación y filtros
   */
  async getOrdenes(filtros?: FiltroOrden): Promise<OrdenesResponse> {
    const params = new URLSearchParams();
    
    if (filtros?.pagina) params.append('pagina', String(filtros.pagina));
    if (filtros?.limite) params.append('limite', String(filtros.limite));
    if (filtros?.otm_nume) params.append('otm_nume', String(filtros.otm_nume));
    if (filtros?.cli_codi) params.append('cli_codi', String(filtros.cli_codi));
    if (filtros?.placa) params.append('placa', filtros.placa);
    if (filtros?.otm_estado !== undefined) params.append('otm_estado', String(filtros.otm_estado));
    if (filtros?.otm_clase_doc !== undefined) params.append('otm_clase_doc', String(filtros.otm_clase_doc));
    if (filtros?.fechaDesde) params.append('fechaDesde', filtros.fechaDesde);
    if (filtros?.fechaHasta) params.append('fechaHasta', filtros.fechaHasta);

    return apiService.get<OrdenesResponse>(`${this.endpoint}?${params.toString()}`);
  }

  /**
   * Obtener orden por ID
   */
  async getOrdenById(id: number): Promise<OrdenResponse> {
    return apiService.get<OrdenResponse>(`${this.endpoint}/${id}`);
  }

  /**
   * Obtener orden por número
   */
  async getOrdenByNumero(numero: number): Promise<OrdenResponse | null> {
    try {
      return await apiService.get<OrdenResponse>(`${this.endpoint}/numero/${numero}`);
    } catch {
      return null;
    }
  }

  /**
   * Crear nueva orden de trabajo
   */
  async createOrden(data: OrdenTrabajoCreate): Promise<OrdenResponse> {
    return apiService.post<OrdenResponse>(this.endpoint, data);
  }

  /**
   * Actualizar orden (agregar/quitar ítems)
   */
  async updateOrden(data: OrdenTrabajoUpdate): Promise<OrdenResponse> {
    const { otm_codi, ...rest } = data;
    return apiService.put<OrdenResponse>(`${this.endpoint}/${otm_codi}`, rest);
  }

  /**
   * Agregar ítem a orden existente
   */
  async agregarItem(otmCodi: number, item: {
    pr_codi: number;
    otd_cantidad: number;
    otd_precio: number;
    otd_por_dsc?: number;
    emp_codi?: number;
    bod_codi?: number;
  }): Promise<OrdenResponse> {
    return apiService.post<OrdenResponse>(`${this.endpoint}/${otmCodi}/items`, item);
  }

  /**
   * Eliminar ítem de orden
   */
  async eliminarItem(otmCodi: number, otdCont: number): Promise<OrdenResponse> {
    return apiService.delete<OrdenResponse>(`${this.endpoint}/${otmCodi}/items/${otdCont}`);
  }

  /**
   * Finalizar orden (convertir a Factura o Pedido)
   */
  async finalizarOrden(otmCodi: number, data: FinalizarOrdenData): Promise<OrdenResponse> {
    return apiService.post<OrdenResponse>(`${this.endpoint}/${otmCodi}/finalizar`, data);
  }

  /**
   * Imprimir orden/factura/pedido
   */
  async imprimirOrden(otmCodi: number): Promise<Blob> {
    return apiService.get(`${this.endpoint}/${otmCodi}/imprimir`, {
      responseType: 'blob',
    });
  }

  /**
   * Obtener estadísticas de órdenes
   */
  async getStats(fechaDesde?: string, fechaHasta?: string): Promise<OrdenStatsResponse> {
    const params = new URLSearchParams();
    if (fechaDesde) params.append('fecha_desde', fechaDesde);
    if (fechaHasta) params.append('fecha_hasta', fechaHasta);

    return apiService.get<OrdenStatsResponse>(`${this.endpoint}/stats?${params.toString()}`);
  }

  /**
   * Obtener próximos consecutivos
   */
  async getNextConsecutivo(): Promise<ApiResponse<{ nextNumero: number }>> {
    return apiService.get<ApiResponse<{ nextNumero: number }>>(`${this.endpoint}/next-consecutivo`);
  }

  /**
   * Obtener empleados para asignación
   */
  async getEmpleados() {
    return apiService.get<Array<{ emp_codi: number; emp_nombre: string }>>(
      '/catalogos/empleados'
    );
  }

  /**
   * Obtener bodegas
   */
  async getBodegas() {
    return apiService.get<Array<{ bod_codi: number; bod_nombre: string; bod_ubicacion?: string }>>(
      '/catalogos/bodegas'
    );
  }
}

export const ordenTrabajoService = new OrdenTrabajoService();
export default ordenTrabajoService;
