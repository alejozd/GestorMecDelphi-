import { useEffect, useState } from 'react';
import { Card } from 'primereact/card';
import { Chart } from 'primereact/chart';
import { Button } from 'primereact/button';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Tag } from 'primereact/tag';
import { useNavigate } from 'react-router-dom';
import Layout from '../components/Layout';
import ordenTrabajoService, { OrdenTrabajo } from '../services/orden.service';
import stockService from '../services/stock.service';

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
  const [ultimasOrdenes, setUltimasOrdenes] = useState<OrdenTrabajo[]>([]);
  const [loading, setLoading] = useState(true);

  const [chartData, setChartData] = useState({});
  const [chartOptions, setChartOptions] = useState({});

  const loadData = async () => {
    setLoading(true);
    try {
      // Intentar cargar datos en paralelo, manejando errores individuales para stock
      const [statsRes, ordenesRes] = await Promise.all([
        ordenTrabajoService.getStats(),
        ordenTrabajoService.getOrdenes({ limite: 5 })
      ]);

      let stockBajo = 0;
      try {
        const stockRes = await stockService.getStock({ conStockBajo: true, limite: 1 });
        stockBajo = stockRes.data.resumen?.productosStockBajo || 0;
      } catch (err) {
        console.warn('Servicio de stock no disponible o no implementado');
      }

      const ordenStats = statsRes.data;

      // Mapear estadísticas reales
      setStats({
        ordenesHoy: ordenStats.totalOrdenes || 0,
        ordenesEnProceso: ordenStats.porEstado.find(e => e.otm_estado === 0)?._count || 0,
        facturasMes: ordenStats.porTipo.find(t => t.otm_clase_doc === 1)?._count || 0,
        pedidosMes: ordenStats.porTipo.find(t => t.otm_clase_doc === 2)?._count || 0,
        productosStockBajo: stockBajo,
        clientesNuevosMes: 0,
      });

      if (ordenesRes.data && ordenesRes.data.data) {
        setUltimasOrdenes(ordenesRes.data.data);
      }

      // Configurar gráfica
      const documentStyle = getComputedStyle(document.documentElement);
      const data = {
        labels: ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'],
        datasets: [
          {
            label: 'Órdenes',
            backgroundColor: documentStyle.getPropertyValue('--primary-color') || '#1e3a8a',
            borderColor: documentStyle.getPropertyValue('--primary-color') || '#1e3a8a',
            data: [12, 19, 15, 25, 22, 30, 10], // Mock semanal por ahora
          },
          {
            label: 'Facturas',
            backgroundColor: documentStyle.getPropertyValue('--amber-500') || '#f59e0b',
            borderColor: documentStyle.getPropertyValue('--amber-500') || '#f59e0b',
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
    } catch (error) {
      console.error('Error cargando dashboard:', error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadData();
  }, []);

  const getStatusSeverity = (estado: number) => {
    switch (estado) {
      case 0: return 'warning';
      case 1: return 'success';
      case 2: return 'danger';
      default: return 'info';
    }
  };

  const getStatusLabel = (estado: number) => {
    switch (estado) {
      case 0: return 'En Proceso';
      case 1: return 'Finalizado';
      case 2: return 'Anulado';
      default: return 'Desconocido';
    }
  };

  const getDocTypeLabel = (clase: number) => {
    switch (clase) {
      case 0: return 'Orden';
      case 1: return 'Factura';
      case 2: return 'Pedido';
      default: return 'N/A';
    }
  };

  const statCards = [
    {
      title: 'Órdenes Hoy',
      value: stats.ordenesHoy,
      icon: 'pi pi-file-edit',
      color: 'blue',
      action: () => navigate('/ordenes'),
    },
    {
      title: 'En Proceso',
      value: stats.ordenesEnProceso,
      icon: 'pi pi-sync',
      color: 'orange',
      action: () => navigate('/ordenes?estado=0'),
    },
    {
      title: 'Facturas Mes',
      value: stats.facturasMes,
      icon: 'pi pi-file-pdf',
      color: 'green',
      action: () => navigate('/documentos/facturas'),
    },
    {
      title: 'Pedidos Mes',
      value: stats.pedidosMes,
      icon: 'pi pi-file-o',
      color: 'cyan',
      action: () => navigate('/documentos/pedidos'),
    },
    {
      title: 'Stock Bajo',
      value: stats.productosStockBajo,
      icon: 'pi pi-exclamation-triangle',
      color: 'red',
      action: () => navigate('/stock?filtro=bajo'),
    },
    {
      title: 'Clientes Nuevos',
      value: stats.clientesNuevosMes,
      icon: 'pi pi-users',
      color: 'purple',
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
      <div className="grid grid-nogutter p-0">
        {statCards.map((stat, index) => (
          <div key={index} className="col-12 md:col-4 lg:col-2 p-2">
            <Card
              className="h-full cursor-pointer transition-all border-none border-top-3 kpi-card"
              style={{ borderTopColor: `var(--${stat.color}-500)` }}
              onClick={stat.action}
            >
              <div className="flex flex-column align-items-center justify-content-center py-2">
                <div className={`bg-${stat.color}-50 text-${stat.color}-600 border-round-circle p-3 mb-3 flex align-items-center justify-content-center`} style={{ width: '60px', height: '60px' }}>
                  <i className={`${stat.icon}`} style={{ fontSize: '1.5rem' }}></i>
                </div>
                <span className="text-4xl font-bold text-900">{stat.value}</span>
                <span className="text-xs font-bold text-secondary text-center mt-2 uppercase tracking-wider">{stat.title}</span>
              </div>
            </Card>
          </div>
        ))}
      </div>

      {/* Gráficas y accesos rápidos */}
      <div className="grid mt-2">
        <div className="col-12 lg:col-8 p-2">
          <Card title="Actividad Semanal" className="h-full shadow-1">
            {loading ? (
              <div className="flex justify-content-center align-items-center py-5" style={{ height: '300px' }}>
                <i className="pi pi-spin pi-spinner text-4xl text-primary"></i>
              </div>
            ) : (
              <div style={{ height: '300px' }}>
                <Chart type="bar" data={chartData} options={chartOptions} />
              </div>
            )}
          </Card>
        </div>

        <div className="col-12 lg:col-4 p-2">
          <Card title="Accesos Rápidos" className="h-full shadow-1">
            <div className="flex flex-column gap-3">
              <button
                className="quick-access-btn primary"
                onClick={() => navigate('/ordenes/nueva')}
              >
                <div className="icon-wrapper">
                  <i className="pi pi-plus"></i>
                </div>
                <div className="text-wrapper">
                  <span className="btn-title">Nueva Orden</span>
                  <span className="btn-subtitle">Registrar ingreso de vehículo</span>
                </div>
                <i className="pi pi-chevron-right arrow-icon"></i>
              </button>

              <button
                className="quick-access-btn secondary"
                onClick={() => navigate('/clientes/nuevo')}
              >
                <div className="icon-wrapper">
                  <i className="pi pi-user-plus"></i>
                </div>
                <div className="text-wrapper">
                  <span className="btn-title">Nuevo Cliente</span>
                  <span className="btn-subtitle">Crear ficha de cliente y vehículo</span>
                </div>
                <i className="pi pi-chevron-right arrow-icon"></i>
              </button>

              <button
                className="quick-access-btn secondary"
                onClick={() => navigate('/historial')}
              >
                <div className="icon-wrapper">
                  <i className="pi pi-history"></i>
                </div>
                <div className="text-wrapper">
                  <span className="btn-title">Historial</span>
                  <span className="btn-subtitle">Consultar servicios anteriores</span>
                </div>
                <i className="pi pi-chevron-right arrow-icon"></i>
              </button>

              <button
                className="quick-access-btn secondary"
                onClick={() => navigate('/stock')}
              >
                <div className="icon-wrapper">
                  <i className="pi pi-chart-bar"></i>
                </div>
                <div className="text-wrapper">
                  <span className="btn-title">Reporte Stock</span>
                  <span className="btn-subtitle">Ver disponibilidad de repuestos</span>
                </div>
                <i className="pi pi-chevron-right arrow-icon"></i>
              </button>
            </div>
          </Card>
        </div>
      </div>

      {/* Últimas órdenes */}
      <div className="col-12 p-2 mt-2">
        <Card title="Últimas Órdenes" className="shadow-1">
          <DataTable
            value={ultimasOrdenes}
            loading={loading}
            rows={5}
            responsiveLayout="stack"
            breakpoint="960px"
            className="p-datatable-sm"
            emptyMessage="No hay órdenes recientes."
          >
            <Column field="otm_nume" header="N° Orden" body={(rowData) => <span className="font-bold">#{rowData.otm_nume}</span>} />
            <Column field="otm_fecha" header="Fecha" body={(rowData) => new Date(rowData.otm_fecha).toLocaleDateString()} />
            <Column field="cliente.cli_nombre" header="Cliente" />
            <Column field="vehiculo.placa" header="Vehículo" body={(rowData) => <Tag value={rowData.vehiculo?.placa || 'N/A'} severity="info" />} />
            <Column field="otm_clase_doc" header="Tipo" body={(rowData) => getDocTypeLabel(rowData.otm_clase_doc)} />
            <Column field="otm_vr_total" header="Total" body={(rowData) => new Intl.NumberFormat('es-CO', { style: 'currency', currency: 'COP' }).format(rowData.otm_vr_total)} />
            <Column field="otm_estado" header="Estado" body={(rowData) => (
              <Tag value={getStatusLabel(rowData.otm_estado)} severity={getStatusSeverity(rowData.otm_estado)} />
            )} />
            <Column body={(rowData) => (
              <Button icon="pi pi-eye" rounded text onClick={() => navigate(`/ordenes/${rowData.otm_codi}`)} />
            )} />
          </DataTable>
          <div className="flex justify-content-end mt-3">
            <Button label="Ver todas las órdenes" icon="pi pi-arrow-right" iconPos="right" text onClick={() => navigate('/ordenes')} />
          </div>
        </Card>
      </div>
    </Layout>
  );
}
