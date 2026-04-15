import { useEffect, useState } from 'react';
import { Card } from 'primereact/card';
import { Chart } from 'primereact/chart';
import { Button } from 'primereact/button';
import { useNavigate } from 'react-router-dom';
import Layout from '../components/Layout';

interface DashboardStats {
  ordenesHoy: number;
  ordenesEnProceso: number;
  facturasMes: number;
  pedidosMes: number;
  productosStockBajo: number;
  clientesNuevosMes: number;
}

export default function Dashboard() {
  const navigate = useNavigate();
  const [stats, setStats] = useState<DashboardStats>({
    ordenesHoy: 0,
    ordenesEnProceso: 0,
    facturasMes: 0,
    pedidosMes: 0,
    productosStockBajo: 0,
    clientesNuevosMes: 0,
  });
  const [loading, setLoading] = useState(true);

  // Datos para gráfica de órdenes por día (últimos 7 días)
  const [chartData, setChartData] = useState({});
  const [chartOptions, setChartOptions] = useState({});

  useEffect(() => {
    // TODO: Cargar datos reales desde el backend
    // Simulación de datos
    setTimeout(() => {
      setStats({
        ordenesHoy: 12,
        ordenesEnProceso: 8,
        facturasMes: 45,
        pedidosMes: 23,
        productosStockBajo: 5,
        clientesNuevosMes: 18,
      });

      // Gráfica de barras
      const documentStyle = getComputedStyle(document.documentElement);
      const data = {
        labels: ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'],
        datasets: [
          {
            label: 'Órdenes',
            backgroundColor: documentStyle.getPropertyValue('--blue-500'),
            borderColor: documentStyle.getPropertyValue('--blue-500'),
            data: [12, 19, 15, 25, 22, 30, 10],
          },
          {
            label: 'Facturas',
            backgroundColor: documentStyle.getPropertyValue('--green-500'),
            borderColor: documentStyle.getPropertyValue('--green-500'),
            data: [8, 12, 10, 18, 15, 20, 5],
          },
        ],
      };

      const options = {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: true,
            position: 'bottom',
          },
        },
        scales: {
          y: {
            beginAtZero: true,
            ticks: {
              stepSize: 5,
            },
          },
        },
      };

      setChartData(data);
      setChartOptions(options);
      setLoading(false);
    }, 500);
  }, []);

  const statCards = [
    {
      title: 'Órdenes Hoy',
      value: stats.ordenesHoy,
      icon: 'pi pi-file-edit',
      color: 'text-blue-600',
      bgColor: 'bg-blue-100',
      action: () => navigate('/ordenes'),
    },
    {
      title: 'En Proceso',
      value: stats.ordenesEnProceso,
      icon: 'pi pi-spin pi-spinner',
      color: 'text-orange-600',
      bgColor: 'bg-orange-100',
      action: () => navigate('/ordenes?estado=0'),
    },
    {
      title: 'Facturas Mes',
      value: stats.facturasMes,
      icon: 'pi pi-file-pdf',
      color: 'text-green-600',
      bgColor: 'bg-green-100',
      action: () => navigate('/documentos/facturas'),
    },
    {
      title: 'Pedidos Mes',
      value: stats.pedidosMes,
      icon: 'pi pi-file-o',
      color: 'text-cyan-600',
      bgColor: 'bg-cyan-100',
      action: () => navigate('/documentos/pedidos'),
    },
    {
      title: 'Stock Bajo',
      value: stats.productosStockBajo,
      icon: 'pi pi-exclamation-triangle',
      color: 'text-red-600',
      bgColor: 'bg-red-100',
      action: () => navigate('/stock?filtro=bajo'),
    },
    {
      title: 'Clientes Nuevos',
      value: stats.clientesNuevosMes,
      icon: 'pi pi-users',
      color: 'text-purple-600',
      bgColor: 'bg-purple-100',
      action: () => navigate('/clientes'),
    },
  ];

  return (
    <Layout>
      <div className="mb-4">
        <h2 className="text-2xl font-bold text-900 mb-1">Dashboard</h2>
        <p className="text-secondary m-0">Resumen general del taller</p>
      </div>

      {/* Tarjetas de estadísticas */}
      <div className="grid grid-nogutter surface-ground p-3">
        {statCards.map((stat, index) => (
          <div key={index} className="col-12 md:col-4 lg:col-2 p-2">
            <Card
              className="h-full cursor-pointer hover:surface-100 transition-all shadow-1"
              onClick={stat.action}
            >
              <div className="flex flex-column align-items-center justify-content-center h-full py-3">
                <div className={`${stat.bgColor} ${stat.color} border-round p-3 mb-3`}>
                  <i className={`${stat.icon}`} style={{ fontSize: '2rem' }}></i>
                </div>
                <span className="text-3xl font-bold text-900">{stat.value}</span>
                <span className="text-sm text-secondary text-center mt-1">{stat.title}</span>
              </div>
            </Card>
          </div>
        ))}
      </div>

      {/* Gráficas y accesos rápidos */}
      <div className="grid mt-4">
        <div className="col-12 lg:col-8">
          <Card title="Actividad Semanal" className="h-full">
            {loading ? (
              <div className="flex justify-content-center py-5">
                <i className="pi pi-spin pi-spinner text-4xl"></i>
              </div>
            ) : (
              <div style={{ height: '300px' }}>
                <Chart type="bar" data={chartData} options={chartOptions} />
              </div>
            )}
          </Card>
        </div>

        <div className="col-12 lg:col-4">
          <Card title="Accesos Rápidos" className="h-full">
            <div className="flex flex-column gap-2">
              <Button
                label="Nueva Orden de Trabajo"
                icon="pi pi-plus"
                className="p-button-outlined"
                onClick={() => navigate('/ordenes/nueva')}
              />
              <Button
                label="Nuevo Cliente"
                icon="pi pi-user-plus"
                className="p-button-outlined"
                onClick={() => navigate('/clientes/nuevo')}
              />
              <Button
                label="Consultar Historial"
                icon="pi pi-history"
                className="p-button-outlined"
                onClick={() => navigate('/historial')}
              />
              <Button
                label="Reporte de Stock"
                icon="pi pi-chart-bar"
                className="p-button-outlined"
                onClick={() => navigate('/stock')}
              />
            </div>
          </Card>
        </div>
      </div>

      {/* Últimas órdenes (placeholder) */}
      <Card title="Últimas Órdenes" className="mt-4">
        <div className="flex justify-content-center py-5">
          <p className="text-secondary m-0">
            Cargando últimas órdenes... (implementar tabla con últimos registros)
          </p>
        </div>
      </Card>
    </Layout>
  );
}
