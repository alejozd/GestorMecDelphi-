import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Button } from 'primereact/button';
import { Card } from 'primereact/card';
import { Tag } from 'primereact/tag';
import { IconField } from 'primereact/iconfield';
import { InputIcon } from 'primereact/inputicon';
import { InputText } from 'primereact/inputtext';
import Layout from '../../components/Layout';
import ordenService, { OrdenTrabajo } from '../../services/orden.service';

const OrdenList: React.FC = () => {
  const [ordenes, setOrdenes] = useState<OrdenTrabajo[]>([]);
  const [totalRecords, setTotalRecords] = useState(0);
  const [loading, setLoading] = useState(true);
  const [lazyParams, setLazyParams] = useState({ page: 1, rows: 10, search: '' });
  const navigate = useNavigate();

  const load = async () => {
    setLoading(true);
    try {
        const res = await ordenService.getOrdenes({ page: lazyParams.page, limit: lazyParams.rows, search: lazyParams.search });
        setOrdenes(res.data.data);
        setTotalRecords(res.data.pagination.total);
    } catch (e) { console.error(e); }
    setLoading(false);
  };

  useEffect(() => { load(); }, [lazyParams]);

  const header = (
    <div className="flex justify-content-between align-items-center">
      <h3 className="m-0 font-bold">Órdenes de Trabajo</h3>
      <div className="flex gap-2">
        <IconField iconPosition="left">
            <InputIcon className="pi pi-search" />
            <InputText placeholder="Buscar..." onInput={(e: any) => setLazyParams({ ...lazyParams, search: e.target.value })} />
        </IconField>
        <Button label="Nueva Orden" icon="pi pi-plus" onClick={() => navigate('/ordenes/nueva')} />
      </div>
    </div>
  );

  const statusTemplate = (r: OrdenTrabajo) => {
    const status: any = { 0: { v: 'En Proceso', s: 'warning' }, 1: { v: 'Finalizado', s: 'success' }, 2: { v: 'Anulado', s: 'danger' } };
    const conf = status[r.otm_estado] || { v: 'Desconocido', s: 'info' };
    return <Tag value={conf.v} severity={conf.s} />;
  };

  return (
    <Layout>
      <div className="animate-fade-in">
        <Card className="shadow-2 border-round-xl border-none p-0 overflow-hidden">
          <DataTable value={ordenes} lazy paginator rows={lazyParams.rows} totalRecords={totalRecords}
            first={(lazyParams.page - 1) * lazyParams.rows} onPage={(e) => setLazyParams({ ...lazyParams, page: (e.page ?? 0) + 1 })}
            loading={loading} header={header} className="custom-datatable" responsiveLayout="scroll">
            <Column field="otm_nume" header="Nro." body={(r) => <span className="font-bold">#${r.otm_nume}</span>} />
            <Column field="cliente.cli_nombre" header="Cliente" />
            <Column field="vehiculo.placa" header="Placa" />
            <Column field="otm_fecha" header="Fecha" body={(r) => new Date(r.otm_fecha).toLocaleDateString()} />
            <Column field="otm_vr_total" header="Total" body={(r) => `$${Number(r.otm_vr_total).toLocaleString()}`} />
            <Column header="Estado" body={statusTemplate} />
            <Column body={(r) => <Button icon="pi pi-eye" text rounded onClick={() => navigate(`/ordenes/${r.otm_codi}`)} />} />
          </DataTable>
        </Card>
      </div>
    </Layout>
  );
};

export default OrdenList;
