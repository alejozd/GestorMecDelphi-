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
        setClientes(response.data.data);
        setTotalRecords(response.data.pagination.total);
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
      <div className="flex gap-2 justify-content-center">
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

  const documentTemplate = (rowData: Cliente) => {
    return (
      <div className="flex flex-column">
        <span className="font-bold">{rowData.cli_numdoc}</span>
        <small className="text-color-secondary">{rowData.tipoDocumento?.td_abreviado}</small>
      </div>
    );
  };

  const contactTemplate = (rowData: Cliente) => {
    return (
      <div className="flex flex-column gap-1">
        {rowData.cli_tel_movil && (
          <span className="text-sm">
            <i className="pi pi-mobile mr-2 text-primary"></i>
            {rowData.cli_tel_movil}
          </span>
        )}
        {rowData.cli_correoe && (
          <span className="text-sm text-overflow-ellipsis overflow-hidden white-space-nowrap" style={{ maxWidth: '180px' }}>
            <i className="pi pi-envelope mr-2 text-primary"></i>
            {rowData.cli_correoe}
          </span>
        )}
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
    <div className="flex flex-wrap gap-2 align-items-center justify-content-between">
      <h4 className="m-0">Gestión de Clientes</h4>
      <span className="p-input-icon-left">
        <i className="pi pi-search" />
        <InputText
          type="search"
          onInput={onGlobalFilterChange}
          placeholder="Buscar..."
          className="w-full sm:w-20rem"
        />
      </span>
    </div>
  );

  return (
    <div className="clientes-list-container animate-fade-in">
      <Toast ref={toast} />
      <ConfirmDialog />

      <Card className="mb-4 shadow-2 border-round-xl overflow-hidden">
        <Toolbar className="mb-4 bg-transparent border-none p-0" left={leftToolbarTemplate} right={rightToolbarTemplate} />

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
          responsiveLayout="stack"
          breakpoint="960px"
          className="p-datatable-sm"
          emptyMessage="No se encontraron clientes."
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          currentPageReportTemplate="Mostrando {first} a {last} de {totalRecords} clientes"
          rowsPerPageOptions={[10, 25, 50]}
        >
          <Column field="cli_nombre" header="Nombre" sortable className="font-bold text-primary" style={{ minWidth: '14rem' }} />
          <Column header="Documento" body={documentTemplate} style={{ minWidth: '10rem' }} />
          <Column header="Contacto" body={contactTemplate} style={{ minWidth: '14rem' }} />
          <Column field="ciudad.ciu_nombre" header="Ciudad" style={{ minWidth: '10rem' }} />
          <Column body={actionTemplate} exportable={false} style={{ minWidth: '12rem' }} />
        </DataTable>
      </Card>
    </div>
  );
};

export default ClienteList;
