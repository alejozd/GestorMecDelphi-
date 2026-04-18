import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Menubar } from 'primereact/menubar';
import { Avatar } from 'primereact/avatar';
import { Button } from 'primereact/button';
import { useAuth } from '../context/AuthContext';

interface MenuItem {
  label?: string;
  icon?: string;
  command?: () => void;
  items?: MenuItem[];
}

interface LayoutProps {
  children: React.ReactNode;
}

export default function Layout({ children }: LayoutProps) {
  const navigate = useNavigate();
  const { usuario, logout } = useAuth();
  const [menuItems, setMenuItems] = useState<MenuItem[]>([]);

  useEffect(() => {
    // Construir menú basado en permisos (placeholder - implementar según backend)
    const items: MenuItem[] = [
      {
        label: 'Inicio',
        icon: 'pi pi-home',
        command: () => navigate('/'),
      },
      {
        label: 'Clientes',
        icon: 'pi pi-users',
        items: [
          {
            label: 'Listado de Clientes',
            icon: 'pi pi-list',
            command: () => navigate('/clientes'),
          },
          {
            label: 'Nuevo Cliente',
            icon: 'pi pi-plus',
            command: () => navigate('/clientes/nuevo'),
          },
          {
            label: 'Vehículos',
            icon: 'pi pi-car',
            command: () => navigate('/vehiculos'),
          },
        ],
      },
      {
        label: 'Inventario',
        icon: 'pi pi-box',
        items: [
          {
            label: 'Productos',
            icon: 'pi pi-list',
            command: () => navigate('/productos'),
          },
          {
            label: 'Nuevo Producto',
            icon: 'pi pi-plus',
            command: () => navigate('/productos/nuevo'),
          },
          {
            label: 'Grupos',
            icon: 'pi pi-th-large',
            command: () => navigate('/grupos'),
          },
        ],
      },
      {
        label: 'Órdenes',
        icon: 'pi pi-file-edit',
        items: [
          {
            label: 'Nueva Orden',
            icon: 'pi pi-plus',
            command: () => navigate('/ordenes/nueva'),
          },
          {
            label: 'Consultar Órdenes',
            icon: 'pi pi-search',
            command: () => navigate('/ordenes'),
          },
        ],
      },
      {
        label: 'Documentos',
        icon: 'pi pi-file',
        items: [
          {
            label: 'Facturas',
            icon: 'pi pi-file-pdf',
            command: () => navigate('/documentos/facturas'),
          },
          {
            label: 'Pedidos',
            icon: 'pi pi-file-o',
            command: () => navigate('/documentos/pedidos'),
          },
        ],
      },
      {
        label: 'Historial',
        icon: 'pi pi-history',
        command: () => navigate('/historial'),
      },
      {
        label: 'Stock',
        icon: 'pi pi-chart-bar',
        items: [
          {
            label: 'Consulta de Stock',
            icon: 'pi pi-search',
            command: () => navigate('/stock'),
          },
          {
            label: 'Movimientos',
            icon: 'pi pi-refresh',
            command: () => navigate('/stock/movimientos'),
          },
          {
            label: 'Ajustes',
            icon: 'pi pi-cog',
            command: () => navigate('/stock/ajustes'),
          },
        ],
      },
      {
        label: 'Reportes',
        icon: 'pi pi-chart-line',
        items: [
          {
            label: 'Ventas por Período',
            icon: 'pi pi-calendar',
            command: () => navigate('/reportes/ventas'),
          },
          {
            label: 'Productos Más Usados',
            icon: 'pi pi-star',
            command: () => navigate('/reportes/productos'),
          },
        ],
      },
    ];

    setMenuItems(items);
  }, [navigate]);

  const end = (
    <div className="flex align-items-center gap-3">
      <div className="flex flex-column align-items-end">
        <span className="text-sm font-medium">{usuario?.nombre}</span>
        <small className="text-secondary text-xs">{usuario?.usuario}</small>
      </div>
      <Avatar 
        icon="pi pi-user" 
        shape="circle" 
        size="large"
        className="bg-primary text-white"
      />
      <Button
        icon="pi pi-sign-out"
        label="Cerrar Sesión"
        onClick={logout}
        className="p-button-text"
      />
    </div>
  );

  return (
    <div className="min-h-screen surface-ground">
      <div className="card shadow-2 mb-0 border-bottom-1 surface-border">
        <Menubar model={menuItems} end={end} />
      </div>
      
      <main className="p-4 fade-in">
        {children}
      </main>

      <footer className="text-center py-4 text-secondary text-sm border-top-1 surface-border mt-4">
        <p>© 2024 Serviteca Pro - Sistema de Gestión de Taller Mecánico</p>
      </footer>
    </div>
  );
}
