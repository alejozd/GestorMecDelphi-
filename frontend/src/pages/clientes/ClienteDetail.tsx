import React, { useState, useEffect, useRef } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { Card } from 'primereact/card';
import { Button } from 'primereact/button';
import { Divider } from 'primereact/divider';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Tag } from 'primereact/tag';
import { Toast } from 'primereact/toast';
import { TabView, TabPanel } from 'primereact/tabview';
import { clienteService } from '../../services/cliente.service';

const ClienteDetail: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const toast = useRef<Toast>(null);

  const [cliente, setCliente] = useState<any>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const loadCliente = async () => {
      if (!id) return;
      try {
        const response = await clienteService.getClienteById(parseInt(id));
        if (response.success && response.data) {
          setCliente(response.data);
        }
      } catch (error) {
        toast.current?.show({
          severity: 'error',
          summary: 'Error',
          detail: 'Error al cargar los detalles del cliente'
        });
        navigate('/clientes');
      } finally {
        setLoading(false);
      }
    };

    loadCliente();
  }, [id, navigate]);

  if (loading) {
    return (
      <div className="flex justify-content-center align-items-center min-h-screen">
        <i className="pi pi-spin pi-spinner" style={{ fontSize: '2rem' }}></i>
      </div>
    );
  }

  if (!cliente) return null;

  const header = (
    <div className="flex flex-wrap align-items-center justify-content-between gap-2">
      <div className="flex align-items-center">
        <Button
          icon="pi pi-arrow-left"
          text
          rounded
          className="mr-2"
          onClick={() => navigate('/clientes')}
        />
        <h2 className="m-0 text-primary">{cliente.cli_nombre}</h2>
      </div>
      <Button
        label="Editar Cliente"
        icon="pi pi-pencil"
        severity="warning"
        onClick={() => navigate(`/clientes/editar/${cliente.cli_codi}`)}
      />
    </div>
  );

  return (
    <div className="cliente-detail-container animate-fade-in p-2 md:p-4">
      <Toast ref={toast} />

      {header}

      <div className="grid mt-4">
        {/* Panel Izquierdo: Información Básica */}
        <div className="col-12 lg:col-4">
          <Card className="shadow-2 border-round-xl h-full">
            <div className="flex flex-column align-items-center mb-4">
              <div className="surface-200 border-circle flex align-items-center justify-content-center mb-3" style={{ width: '80px', height: '80px' }}>
                <i className="pi pi-user text-primary text-4xl"></i>
              </div>
              <h3 className="m-0 text-center">{cliente.cli_nombre}</h3>
              <Tag value={cliente.tipoDocumento?.td_abreviado + ': ' + cliente.cli_numdoc} severity="info" className="mt-2" />
            </div>

            <Divider />

            <div className="info-list">
              <div className="flex align-items-center mb-3">
                <i className="pi pi-phone text-primary mr-3 text-xl"></i>
                <div className="flex flex-column">
                  <small className="text-color-secondary uppercase font-bold" style={{ fontSize: '0.65rem' }}>Móvil</small>
                  <span>{cliente.cli_tel_movil || 'No registrado'}</span>
                </div>
              </div>

              <div className="flex align-items-center mb-3">
                <i className="pi pi-envelope text-primary mr-3 text-xl"></i>
                <div className="flex flex-column">
                  <small className="text-color-secondary uppercase font-bold" style={{ fontSize: '0.65rem' }}>Correo</small>
                  <span className="text-break">{cliente.cli_correoe || 'No registrado'}</span>
                </div>
              </div>

              <div className="flex align-items-center mb-3">
                <i className="pi pi-map-marker text-primary mr-3 text-xl"></i>
                <div className="flex flex-column">
                  <small className="text-color-secondary uppercase font-bold" style={{ fontSize: '0.65rem' }}>Ubicación</small>
                  <span>{cliente.cli_direccion ? `${cliente.cli_direccion}, ` : ''}{cliente.ciudad?.ciu_nombre || 'Sin ciudad'}</span>
                </div>
              </div>

              {cliente.cli_observacion && (
                <div className="flex flex-column mt-4 p-3 surface-100 border-round">
                  <small className="text-color-secondary uppercase font-bold mb-2" style={{ fontSize: '0.65rem' }}>Observaciones</small>
                  <p className="m-0 text-sm italic">{cliente.cli_observacion}</p>
                </div>
              )}
            </div>
          </Card>
        </div>

        {/* Panel Derecho: Vehículos y Órdenes */}
        <div className="col-12 lg:col-8">
          <Card className="shadow-2 border-round-xl h-full">
            <TabView>
              <TabPanel header="Vehículos" leftIcon="pi pi-car mr-2">
                <DataTable value={cliente.vehiculos} className="p-datatable-sm mt-2" emptyMessage="Este cliente no tiene vehículos registrados">
                  <Column field="placa" header="Placa" className="font-bold text-primary" />
                  <Column field="marca.mr_nombre" header="Marca" />
                  <Column field="linea.li_nombre" header="Línea" />
                  <Column
                    body={(rowData) => (
                      <Button icon="pi pi-eye" text rounded severity="info" onClick={() => navigate(`/vehiculos/${rowData.vxc_codi}`)} />
                    )}
                    style={{ width: '4rem' }}
                  />
                </DataTable>
                <div className="flex justify-content-end mt-4">
                  <Button label="Registrar Vehículo" icon="pi pi-plus" size="small" outlined onClick={() => navigate(`/vehiculos/nuevo?cliente=${cliente.cli_codi}`)} />
                </div>
              </TabPanel>

              <TabPanel header="Órdenes de Trabajo" leftIcon="pi pi-file-edit mr-2">
                <DataTable value={cliente.ordenesTrabajo} className="p-datatable-sm mt-2" emptyMessage="No hay órdenes de trabajo recientes">
                  <Column field="otm_nume" header="Nro." />
                  <Column
                    field="createdAt"
                    header="Fecha"
                    body={(rowData) => new Date(rowData.createdAt).toLocaleDateString()}
                  />
                  <Column
                    header="Vehículo"
                    body={(rowData) => rowData.vehiculo?.placa}
                  />
                  <Column
                    field="otm_estado"
                    header="Estado"
                    body={(rowData) => {
                      const states = [
                        { label: 'En Proceso', severity: 'warning' },
                        { label: 'Finalizada', severity: 'success' },
                        { label: 'Anulada', severity: 'danger' }
                      ];
                      const state = states[rowData.otm_estado] || { label: 'Desconocido', severity: 'info' };
                      return <Tag value={state.label} severity={state.severity as any} />;
                    }}
                  />
                  <Column
                    body={(rowData) => (
                      <Button icon="pi pi-eye" text rounded severity="info" onClick={() => navigate(`/ordenes/${rowData.otm_codi}`)} />
                    )}
                    style={{ width: '4rem' }}
                  />
                </DataTable>
              </TabPanel>
            </TabView>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default ClienteDetail;
