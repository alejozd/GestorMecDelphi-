import { createBrowserRouter, RouterProvider, Navigate } from 'react-router-dom';
import { PublicRoute, ProtectedRoute } from './components/ProtectedRoute';

// Páginas
import Login from './pages/auth/Login';
import Dashboard from './pages/Dashboard';
import ClienteList from './pages/clientes/ClienteList';
import ClienteForm from './pages/clientes/ClienteForm';
import ClienteDetail from './pages/clientes/ClienteDetail';

// Placeholders para páginas pendientes de implementar
import Layout from './components/Layout';

const PlaceholderPage = ({ title }: { title: string }) => (
  <Layout>
    <div className="card">
      <h2 className="text-2xl font-bold mb-3">{title}</h2>
      <p className="text-secondary">
        Página en desarrollo - Implementar según Manual.docx
      </p>
      <div className="flex gap-2 mt-4">
        <i className="pi pi-info-circle"></i>
        <span>Esta página corresponde a una ventana del sistema legacy. Revisar documentación para campos y validaciones específicas.</span>
      </div>
    </div>
  </Layout>
);

export const router = createBrowserRouter([
  {
    path: '/login',
    element: (
      <PublicRoute>
        <Login />
      </PublicRoute>
    ),
  },
  {
    path: '/',
    element: (
      <ProtectedRoute>
        <Dashboard />
      </ProtectedRoute>
    ),
  },
  // Clientes
  {
    path: '/clientes',
    element: (
      <ProtectedRoute>
        <ClienteList />
      </ProtectedRoute>
    ),
  },
  {
    path: '/clientes/nuevo',
    element: (
      <ProtectedRoute>
        <ClienteForm />
      </ProtectedRoute>
    ),
  },
  {
    path: '/clientes/editar/:id',
    element: (
      <ProtectedRoute>
        <ClienteForm />
      </ProtectedRoute>
    ),
  },
  {
    path: '/clientes/:id',
    element: (
      <ProtectedRoute>
        <ClienteDetail />
      </ProtectedRoute>
    ),
  },
  // Vehículos
  {
    path: '/vehiculos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Vehículos por Cliente" />
      </ProtectedRoute>
    ),
  },
  // Inventario
  {
    path: '/productos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Listado de Productos" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/productos/nuevo',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Nuevo Producto" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/productos/editar/:id',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Editar Producto" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/grupos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Grupos de Inventario" />
      </ProtectedRoute>
    ),
  },
  // Órdenes de Trabajo
  {
    path: '/ordenes',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Consultar Órdenes" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/ordenes/nueva',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Nueva Orden de Trabajo" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/ordenes/:id',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Detalle de Orden" />
      </ProtectedRoute>
    ),
  },
  // Documentos
  {
    path: '/documentos/facturas',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Facturas" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/documentos/pedidos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Pedidos/Recibos" />
      </ProtectedRoute>
    ),
  },
  // Historial
  {
    path: '/historial',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Historial de Servicios" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/historial/cliente/:id',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Historial por Cliente" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/historial/placa/:placa',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Historial por Placa" />
      </ProtectedRoute>
    ),
  },
  // Stock
  {
    path: '/stock',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Consulta de Stock" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/stock/movimientos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Movimientos de Inventario" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/stock/ajustes',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Ajustes de Stock" />
      </ProtectedRoute>
    ),
  },
  // Reportes
  {
    path: '/reportes/ventas',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Reporte de Ventas" />
      </ProtectedRoute>
    ),
  },
  {
    path: '/reportes/productos',
    element: (
      <ProtectedRoute>
        <PlaceholderPage title="Productos Más Usados" />
      </ProtectedRoute>
    ),
  },
  // Ruta comodín para 404
  {
    path: '*',
    element: <Navigate to="/login" replace />,
  },
], {
  future: {
    v7_relativeSplatPath: true,
    v7_startTransition: true,
  },
} as any);

function App() {
  return (
    <RouterProvider
      router={router}
      future={{
        v7_startTransition: true,
      }}
    />
  );
}

export default App;
