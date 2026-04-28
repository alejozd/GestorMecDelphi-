import apiService from './api';
import type { AuthResponse } from './api';

// Interfaces
export interface Usuario {
  usu_codi: number;
  usuario: string;
  nombre: string;
  correo?: string;
  telefono?: string;
  estado: number;
  roles?: Array<{
    rol_codi: number;
    rol_nombre: string;
  }>;
}

export interface LoginCredentials {
  usuario: string;
  password: string;
}

export interface Permiso {
  per_codi: number;
  per_opcion: number;
  per_leer: number;
  per_crear: number;
  per_modificar: number;
  per_borrar: number;
}

class AuthService {
  private tokenKey = 'token';
  private usuarioKey = 'usuario';

  /**
   * Iniciar sesión
   */
  async login(credentials: LoginCredentials): Promise<AuthResponse> {
    const response = await apiService.post<AuthResponse>('/auth/login', credentials);
    
    if (response.success && response.data.token) {
      localStorage.setItem(this.tokenKey, response.data.token);
      localStorage.setItem(this.usuarioKey, JSON.stringify(response.data.usuario));
    }
    
    return response;
  }

  /**
   * Cerrar sesión
   */
  logout(): void {
    localStorage.removeItem(this.tokenKey);
    localStorage.removeItem(this.usuarioKey);
  }

  /**
   * Obtener usuario actual
   */
  getCurrentUser(): Usuario | null {
    const usuarioStr = localStorage.getItem(this.usuarioKey);
    if (!usuarioStr) return null;
    
    try {
      return JSON.parse(usuarioStr) as Usuario;
    } catch {
      return null;
    }
  }

  /**
   * Verificar si está autenticado
   */
  isAuthenticated(): boolean {
    return !!localStorage.getItem(this.tokenKey);
  }

  /**
   * Obtener token
   */
  getToken(): string | null {
    return localStorage.getItem(this.tokenKey);
  }

  /**
   * Cambiar contraseña
   */
  async changePassword(oldPassword: string, newPassword: string): Promise<void> {
    await apiService.put('/auth/change-password', {
      oldPassword,
      newPassword,
    });
  }

  /**
   * Recuperar contraseña (solicitar reset)
   */
  async requestPasswordReset(email: string): Promise<void> {
    await apiService.post('/auth/forgot-password', { email });
  }

  /**
   * Verificar permisos para una opción
   */
  hasPermission(_opcionId: number, _action: 'leer' | 'crear' | 'modificar' | 'borrar'): boolean {
    const usuario = this.getCurrentUser();
    if (!usuario?.roles) return false;

    // En una implementación completa, esto consultaría los permisos desde el backend
    // Por ahora, retornamos true para usuarios autenticados
    return true;
  }

  /**
   * Verificar si tiene algún rol específico
   */
  hasRole(roleName: string): boolean {
    const usuario = this.getCurrentUser();
    if (!usuario?.roles) return false;

    return usuario.roles.some(role => role.rol_nombre === roleName);
  }
}

export const authService = new AuthService();
export default authService;
