import React, { useState, useEffect, useRef } from 'react';
import { useNavigate } from 'react-router-dom';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import { Toast } from 'primereact/toast';
import { Toolbar } from 'primereact/toolbar';
import { ConfirmDialog, confirmDialog } from 'primereact/confirmdialog';
import { Card } from 'primereact/card';
import { IconField } from 'primereact/iconfield';
import { InputIcon } from 'primereact/inputicon';
import Layout from '../../components/Layout';
import { vehiculoService, Vehiculo } from '../../services/vehiculo.service';

const VehiculoList: React.FC = () => {
  const [vehiculos, setVehiculos] = useState<Vehiculo[]>([]);
  const [loading, setLoading] = useState(true);
  const [totalRecords, setTotalRecords] = useState(0);
  const [lazyParams, setLazyParams] = useState({
    first: 0,
    rows: 10,
    page: 1,
    filters: {
      global: { value: '', matchMode: 'contains' }
    }
  });

  const toast = useRef<Toast>(null);
  const navigate = useNavigate();

  const loadVehiculos = async () => {
    setLoading(true);
    try {
      const response = await vehiculoService.getVehiculos({
        page: lazyParams.page,
        limit: lazyParams.rows,
        search: lazyParams.filters.global.value
      });

      if (response.success && response.data) {
        setVehiculos(response.data.data);
        setTotalRecords(response.data.pagination.total);
      }
    } catch (error) {
      toast.current?.show({ severity: 'error', summary: 'Error', detail: 'Error cargando vehículos' });
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadVehiculos();
  }, [lazyParams]);

  const onPage = (event: any) => {
    setLazyParams({ ...lazyParams, first: event.first, rows: event.rows, page: event.page + 1 });
  };

  const onGlobalFilterChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setLazyParams({ ...lazyParams, first: 0, page: 1, filters: { global: { value: e.target.value, matchMode: 'contains' } } });
  };

  const actionTemplate = (rowData: Vehiculo) => (
    <div className="flex gap-1 justify-content-end">
      <Button icon="pi pi-pencil" rounded text severity="warning" onClick={(e) => { e.stopPropagation(); navigate(`/vehiculos/editar/${rowData.vxc_codi}`); }} />
      <Button icon="pi pi-trash" rounded text severity="danger" onClick={(e) => { e.stopPropagation(); confirmDelete(rowData); }} />
    </div>
  );

  const confirmDelete = (vehiculo: Vehiculo) => {
    confirmDialog({
      message: `¿Eliminar vehículo ${vehiculo.placa}?`,
      header: 'Confirmar',
      icon: 'pi pi-exclamation-triangle',
      acceptClassName: 'p-button-danger',
      accept: async () => {
        try {
          await vehiculoService.deleteVehiculo(vehiculo.vxc_codi);
          loadVehiculos();
          toast.current?.show({ severity: 'success', summary: 'Éxito', detail: 'Eliminado' });
        } catch (error) {
          toast.current?.show({ severity: 'error', summary: 'Error', detail: 'No se pudo eliminar' });
        }
      }
    });
  };

  const header = (
    <div className="flex flex-wrap gap-3 align-items-center justify-content-between">
      <div className="flex align-items-center">
        <div className="bg-amber-100 p-2 border-round-lg mr-3">
          <i className="pi pi-car text-amber-700 text-xl"></i>
        </div>
        <div>
          <h3 className="m-0 text-900 font-bold">Registro de Vehículos</h3>
          <p className="m-0 text-600 text-sm">Flota de clientes activa</p>
        </div>
      </div>
      <IconField iconPosition="left" className="w-full sm:w-20rem">
        <InputIcon className="pi pi-search" />
        <InputText type="search" onInput={onGlobalFilterChange} placeholder="Buscar por placa..." className="w-full" />
      </IconField>
    </div>
  );

  return (
    <Layout>
      <div className="animate-fade-in">
        <Toast ref={toast} />
        <ConfirmDialog />
        <Card className="shadow-2 border-round-xl p-0 overflow-hidden border-none">
          <div className="px-4 py-3 border-bottom-1 surface-border bg-surface-50">
            <Toolbar left={() => <Button label="Nuevo Vehículo" icon="pi pi-plus" severity="success" onClick={() => navigate('/vehiculos/nuevo')} />} />
          </div>
          <DataTable
            value={vehiculos} lazy paginator first={lazyParams.first} rows={lazyParams.rows}
            totalRecords={totalRecords} onPage={onPage} loading={loading} dataKey="vxc_codi"
            header={header} responsiveLayout="scroll" className="custom-datatable"
            onRowClick={(e) => navigate(`/vehiculos/${e.data.vxc_codi}`)}
          >
            <Column field="placa" header="Placa" body={(r) => <span className="placa-badge">{r.placa}</span>} sortable />
            <Column field="cliente.cli_nombre" header="Propietario" body={(r) => (
                <div className="flex flex-column">
                    <span className="font-bold text-900">{r.cliente?.cli_nombre}</span>
                    <small className="text-600">{r.cliente?.cli_numdoc}</small>
                </div>
            )} sortable />
            <Column field="marca.mr_nombre" header="Marca" sortable />
            <Column field="linea.li_nombre" header="Línea" sortable />
            <Column field="modelo" header="Modelo" />
            <Column body={actionTemplate} style={{ width: '8rem' }} />
          </DataTable>
        </Card>
      </div>
    </Layout>
  );
};

export default VehiculoList;
