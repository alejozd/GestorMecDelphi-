import { createContext, useContext, useState, useEffect, ReactNode } from 'react';
import authService, { Usuario } from '../services/auth.service';

interface AuthContextType {
  usuario: Usuario | null;
  isAuthenticated: boolean;
  isLoading: boolean;
  login: (usuario: string, password: string) => Promise<void>;
  logout: () => void;
  hasPermission: (opcionId: number, action: 'leer' | 'crear' | 'modificar' | 'borrar') => boolean;
  hasRole: (roleName: string) => boolean;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

interface AuthProviderProps {
  children: ReactNode;
}

export function AuthProvider({ children }: AuthProviderProps) {
  const [usuario, setUsuario] = useState<Usuario | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    // Verificar si hay sesión al cargar la aplicación
    const checkAuth = () => {
      const currentUser = authService.getCurrentUser();
      if (currentUser && authService.isAuthenticated()) {
        setUsuario(currentUser);
      }
      setIsLoading(false);
    };

    checkAuth();
  }, []);

  const login = async (usuarioParam: string, password: string) => {
    try {
      const response = await authService.login({ 
        usuario: usuarioParam, 
        password 
      });
      if (response.success) {
        setUsuario(response.data.usuario as Usuario);
      } else {
        throw new Error(response.message || 'Error al iniciar sesión');
      }
    } catch (error) {
      throw error;
    }
  };

  const logout = () => {
    authService.logout();
    setUsuario(null);
  };

  const hasPermission = (opcionId: number, action: 'leer' | 'crear' | 'modificar' | 'borrar') => {
    return authService.hasPermission(opcionId, action);
  };

  const hasRole = (roleName: string) => {
    return authService.hasRole(roleName);
  };

  const value = {
    usuario,
    isAuthenticated: !!usuario,
    isLoading,
    login,
    logout,
    hasPermission,
    hasRole,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth debe ser usado dentro de un AuthProvider');
  }
  return context;
}
