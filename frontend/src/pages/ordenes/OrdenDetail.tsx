import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { Card } from 'primereact/card';
import { Button } from 'primereact/button';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Divider } from 'primereact/divider';
import { Tag } from 'primereact/tag';
import Layout from '../../components/Layout';
import ordenService from '../../services/orden.service';

const OrdenDetail: React.FC = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [orden, setOrden] = useState<any>(null);

  useEffect(() => {
    if (id) ordenService.getOrdenById(parseInt(id)).then(res => setOrden(res.data));
  }, [id]);

  if (!orden) return null;

  return (
    <Layout>
      <div className="animate-fade-in max-w-60rem mx-auto p-2">
        <Button icon="pi pi-arrow-left" text label="Volver" onClick={() => navigate('/ordenes')} className="mb-3" />
        <Card className="shadow-2 border-round-xl border-none">
            <div className="flex justify-content-between align-items-center mb-4">
                <div>
                    <h2 className="m-0 text-900 font-bold">Orden de Trabajo #${orden.otm_nume}</h2>
                    <p className="m-0 text-600">${new Date(orden.otm_fecha).toLocaleDateString()}</p>
                </div>
                <Tag value={orden.otm_estado === 0 ? 'En Proceso' : 'Finalizado'} severity={orden.otm_estado === 0 ? 'warning' : 'success'} />
            </div>
            <div className="grid mb-4">
                <div className="col-4">
                    <label className="text-600 block mb-1">Cliente</label>
                    <span className="font-bold">${orden.cliente?.cli_nombre}</span>
                </div>
                <div className="col-4">
                    <label className="text-600 block mb-1">Vehículo</label>
                    <span className="font-bold">${orden.vehiculo?.placa} (${orden.vehiculo?.marca?.mr_nombre})</span>
                </div>
            </div>
            <Divider />
            <DataTable value={orden.detalles} className="p-datatable-sm">
                <Column field="producto.pro_nombre" header="Descripción" />
                <Column field="otd_cantidad" header="Cant." />
                <Column field="otd_precio" header="Precio" body={(r) => `$${Number(r.otd_precio).toLocaleString()}`} />
                <Column field="otd_vr_total" header="Subtotal" body={(r) => `$${Number(r.otd_vr_total).toLocaleString()}`} />
            </DataTable>
            <div className="flex justify-content-end mt-4">
                <div className="text-right">
                    <p className="text-xl m-0 text-600">Total a Pagar</p>
                    <h2 className="m-0 text-primary font-bold">$${Number(orden.otm_vr_total).toLocaleString()}</h2>
                </div>
            </div>
        </Card>
      </div>
    </Layout>
  );
};

export default OrdenDetail;
