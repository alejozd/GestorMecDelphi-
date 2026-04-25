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
import { Tag } from 'primereact/tag';
import { Avatar } from 'primereact/avatar';
import Layout from '../../components/Layout';
import { clienteService, Cliente } from '../../services/cliente.service';

const ClienteList: React.FC = () => {
  const [clientes, setClientes] = useState<Cliente[]>([]);
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

  const loadClientes = async () => {
    setLoading(true);
    try {
      const response = await clienteService.getClientes({
        page: lazyParams.page,
        limit: lazyParams.rows,
        search: lazyParams.filters.global.value
      });

      if (response.success && response.data) {
        setClientes(response.data);
        setTotalRecords(response.pagination.total);
      }
    } catch (error) {
      toast.current?.show({
        severity: 'error',
        summary: 'Error',
        detail: 'No se pudieron cargar los clientes',
        life: 3000
      });
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadClientes();
  }, [lazyParams]);

  const onPage = (event: any) => {
    setLazyParams({
      ...lazyParams,
      first: event.first,
      rows: event.rows,
      page: event.page + 1
    });
  };

  const onGlobalFilterChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    setLazyParams({
      ...lazyParams,
      first: 0,
      page: 1,
      filters: {
        global: { value, matchMode: 'contains' }
      }
    });
  };

  const confirmDelete = (cliente: Cliente) => {
    confirmDialog({
      message: `¿Está seguro que desea eliminar al cliente ${cliente.cli_nombre}?`,
      header: 'Confirmar Eliminación',
      icon: 'pi pi-exclamation-triangle',
      acceptClassName: 'p-button-danger',
      acceptLabel: 'Sí, eliminar',
      rejectLabel: 'No',
      accept: () => deleteCliente(cliente.cli_codi)
    });
  };

  const deleteCliente = async (id: number) => {
    try {
      await clienteService.deleteCliente(id);
      toast.current?.show({
        severity: 'success',
        summary: 'Éxito',
        detail: 'Cliente eliminado correctamente',
        life: 3000
      });
      loadClientes();
    } catch (error: any) {
      toast.current?.show({
        severity: 'error',
        summary: 'Error',
        detail: error.message || 'No se pudo eliminar el cliente',
        life: 3000
      });
    }
  };

  const actionTemplate = (rowData: Cliente) => {
    return (
      <div className="flex gap-1 justify-content-end">
        <Button
          icon="pi pi-eye"
          rounded
          text
          severity="info"
          tooltip="Ver detalles"
          onClick={() => navigate(`/clientes/${rowData.cli_codi}`)}
        />
        <Button
          icon="pi pi-pencil"
          rounded
          text
          severity="warning"
          tooltip="Editar"
          onClick={() => navigate(`/clientes/editar/${rowData.cli_codi}`)}
        />
        <Button
          icon="pi pi-trash"
          rounded
          text
          severity="danger"
          tooltip="Eliminar"
          onClick={() => confirmDelete(rowData)}
        />
      </div>
    );
  };

  const nameTemplate = (rowData: Cliente) => {
    return (
      <div className="flex align-items-center">
        <Avatar
          label={rowData.cli_nombre.charAt(0).toUpperCase()}
          shape="circle"
          className="mr-3 bg-blue-100 text-blue-700 font-bold"
          style={{ width: '38px', height: '38px' }}
        />
        <div className="flex flex-column">
          <span className="font-bold text-900 line-height-2">{rowData.cli_nombre}</span>
          <div className="flex align-items-center gap-2">
            <Tag value={rowData.tipoDocumento?.td_abreviado} severity="info" className="text-xs px-1 py-0" style={{ height: '16px' }} />
            <small className="text-600">{rowData.cli_numdoc}</small>
          </div>
        </div>
      </div>
    );
  };

  const contactTemplate = (rowData: Cliente) => {
    return (
      <div className="flex flex-column gap-2">
        {rowData.cli_tel_movil && (
          <div className="flex align-items-center text-sm text-700">
            <i className="pi pi-phone mr-2 text-primary text-xs"></i>
            {rowData.cli_tel_movil}
          </div>
        )}
        {rowData.cli_correoe && (
          <div className="flex align-items-center text-sm text-700 text-overflow-ellipsis overflow-hidden white-space-nowrap" style={{ maxWidth: '180px' }}>
            <i className="pi pi-envelope mr-2 text-primary text-xs"></i>
            {rowData.cli_correoe}
          </div>
        )}
      </div>
    );
  };

  const cityTemplate = (rowData: Cliente) => {
    return (
      <div className="flex align-items-center">
        <i className="pi pi-map-marker mr-2 text-400"></i>
        <div className="flex flex-column">
          <span className="text-sm font-medium">{rowData.ciudad?.ciu_nombre || 'N/A'}</span>
          <small className="text-500">{rowData.cli_direccion || 'Sin dirección'}</small>
        </div>
      </div>
    );
  };

  const leftToolbarTemplate = () => {
    return (
      <div className="flex flex-wrap gap-2">
        <Button
          label="Nuevo Cliente"
          icon="pi pi-plus"
          severity="success"
          onClick={() => navigate('/clientes/nuevo')}
        />
      </div>
    );
  };

  const rightToolbarTemplate = () => {
    return (
      <Button
        label="Exportar"
        icon="pi pi-upload"
        severity="help"
        className="p-button-help"
        disabled
      />
    );
  };

  const header = (
    <div className="flex flex-wrap gap-3 align-items-center justify-content-between">
      <div className="flex align-items-center">
        <div className="bg-blue-100 p-2 border-round-lg mr-3">
          <i className="pi pi-users text-blue-700 text-xl"></i>
        </div>
        <div>
          <h3 className="m-0 text-900 font-bold">Base de Clientes</h3>
          <p className="m-0 text-600 text-sm">{totalRecords} registros en total</p>
        </div>
      </div>
      <div className="flex gap-2 w-full sm:w-auto">
        <span className="p-input-icon-left w-full sm:w-20rem">
          <i className="pi pi-search" />
          <InputText
            type="search"
            onInput={onGlobalFilterChange}
            placeholder="Buscar por nombre, documento..."
            className="w-full border-round-xl"
          />
        </span>
        <Button
          icon="pi pi-filter"
          outlined
          severity="secondary"
          tooltip="Filtros avanzados"
        />
      </div>
    </div>
  );

  return (
    <Layout>
      <div className="clientes-list-container animate-fade-in">
        <Toast ref={toast} />
        <ConfirmDialog />

        <div className="grid">
          <div className="col-12">
            <Card className="shadow-2 border-round-xl p-0 overflow-hidden border-none">
              <div className="px-4 py-3 border-bottom-1 surface-border bg-surface-50">
                <Toolbar
                  className="bg-transparent border-none p-0"
                  left={leftToolbarTemplate}
                  right={rightToolbarTemplate}
                />
              </div>

              <DataTable
                value={clientes}
                lazy
                paginator
                first={lazyParams.first}
                rows={lazyParams.rows}
                totalRecords={totalRecords}
                onPage={onPage}
                loading={loading}
                dataKey="cli_codi"
                header={header}
                responsiveLayout="scroll"
                className="p-datatable-hoverable-rows custom-datatable"
                emptyMessage={
                  <div className="flex flex-column align-items-center py-5">
                    <i className="pi pi-search-minus text-4xl text-400 mb-3"></i>
                    <span className="text-600 font-medium text-lg">No se encontraron clientes</span>
                    <p className="text-500 m-0">Intenta con otros términos de búsqueda</p>
                  </div>
                }
                paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
                currentPageReportTemplate="Mostrando {first} a {last} de {totalRecords} clientes"
                rowsPerPageOptions={[10, 25, 50]}
                rowClassName={() => 'cursor-pointer'}
              >
                <Column
                  header="Nombre del Cliente"
                  body={nameTemplate}
                  style={{ minWidth: '18rem' }}
                />
                <Column
                  header="Datos de Contacto"
                  body={contactTemplate}
                  style={{ minWidth: '15rem' }}
                />
                <Column
                  header="Ubicación"
                  body={cityTemplate}
                  style={{ minWidth: '14rem' }}
                />
                <Column
                  header="Vehículos"
                  body={(rowData) => (
                    <div className="flex align-items-center gap-1">
                      <span className="font-bold text-blue-600">{rowData.vehiculos?.length || 0}</span>
                      <i className="pi pi-car text-500"></i>
                    </div>
                  )}
                  className="text-center"
                />
                <Column body={actionTemplate} exportable={false} style={{ width: '10rem' }} />
              </DataTable>
            </Card>
          </div>
        </div>
      </div>
    </Layout>
  );
};

export default ClienteList;
