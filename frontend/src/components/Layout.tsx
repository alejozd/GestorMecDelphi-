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
        label: 'Dashboard',
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

  const start = (
    <div className="flex align-items-center mr-4">
      <div className="bg-primary border-round p-1 mr-2 flex align-items-center justify-content-center" style={{ width: '35px', height: '35px' }}>
        <i className="pi pi-wrench text-white text-xl"></i>
      </div>
      <span className="text-xl font-bold text-primary hidden md:block">
        Serviteca<span className="text-amber-600">Pro</span>
      </span>
    </div>
  );

  const end = (
    <div className="flex align-items-center gap-2">
      <div className="flex align-items-center py-1 px-2 border-round">
        <div className="flex flex-column align-items-end mr-3 hidden sm:flex">
          <span className="text-sm font-bold text-900 line-height-2">{usuario?.nombre}</span>
          <span className="text-xs text-500 line-height-1">@{usuario?.usuario}</span>
        </div>
        <Avatar
          icon="pi pi-user"
          shape="circle"
          className="bg-primary-50 text-primary border-1 border-primary-100"
        />
      </div>

      <div className="border-left-1 surface-border h-2rem mx-2"></div>

      <Button
        icon="pi pi-power-off"
        label="Salir"
        onClick={logout}
        severity="danger"
        text
        className="p-button-rounded p-button-sm font-bold"
      />
    </div>
  );

  return (
    <div className="min-h-screen flex flex-column surface-ground">
      <header className="sticky top-0 z-5 shadow-2 surface-card border-bottom-1 surface-border">
        <Menubar model={menuItems} start={start} end={end} className="border-none px-4 py-2" />
      </header>
      
      <main className="flex-grow-1 p-3 md:p-4 fade-in max-w-screen-2xl mx-auto w-full">
        {children}
      </main>

      <footer className="surface-card text-center py-4 text-secondary text-sm border-top-1 surface-border mt-auto">
        <div className="flex flex-column md:flex-row justify-content-center align-items-center gap-2 md:gap-4">
          <span>© 2024 <strong>Serviteca Pro</strong></span>
          <span className="hidden md:inline">|</span>
          <span>Sistema de Gestión de Taller Mecánico</span>
          <span className="hidden md:inline">|</span>
          <span className="text-xs">v1.0.0</span>
        </div>
      </footer>
    </div>
  );
}
