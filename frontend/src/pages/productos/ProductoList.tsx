import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import { Card } from 'primereact/card';
import { Toolbar } from 'primereact/toolbar';
import { Tag } from 'primereact/tag';
import { IconField } from 'primereact/iconfield';
import { InputIcon } from 'primereact/inputicon';
import Layout from '../../components/Layout';
import { productoService, Producto } from '../../services/producto.service';

const ProductoList: React.FC = () => {
  const [productos, setProductos] = useState<Producto[]>([]);
  const [totalRecords, setTotalRecords] = useState(0);
  const [loading, setLoading] = useState(true);
  const [lazyParams, setLazyParams] = useState({ page: 1, rows: 10, search: '' });
  const navigate = useNavigate();

  const load = async () => {
    setLoading(true);
    const res = await productoService.getProductos({ page: lazyParams.page, limit: lazyParams.rows, search: lazyParams.search });
    setProductos(res.data);
    setTotalRecords(res.pagination.total);
    setLoading(false);
  };

  useEffect(() => { load(); }, [lazyParams]);

  const header = (
    <div className="flex justify-content-between align-items-center">
      <h3 className="m-0 font-bold">Inventario de Productos</h3>
      <IconField iconPosition="left">
        <InputIcon className="pi pi-search" />
        <InputText placeholder="Buscar..." onInput={(e: any) => setLazyParams({ ...lazyParams, search: e.target.value })} />
      </IconField>
    </div>
  );

  return (
    <Layout>
      <div className="animate-fade-in">
        <Card className="shadow-2 border-round-xl border-none p-0 overflow-hidden">
          <div className="px-4 py-3 border-bottom-1 surface-border bg-surface-50">
             <Toolbar left={() => <Button label="Nuevo Producto" icon="pi pi-plus" severity="success" onClick={() => navigate('/productos/nuevo')} />} />
          </div>
          <DataTable value={productos} lazy paginator rows={lazyParams.rows} totalRecords={totalRecords}
            first={(lazyParams.page - 1) * lazyParams.rows} onPage={(e) => setLazyParams({ ...lazyParams, page: (e.page ?? 0) + 1 })}
            loading={loading} header={header} className="custom-datatable" responsiveLayout="scroll">
            <Column field="pro_nombre" header="Producto" />
            <Column field="pro_referencia" header="Ref." />
            <Column field="grupo.gp_nombre" header="Grupo" />
            <Column field="pro_precio_vta" header="Precio" body={(r) => `$${r.pro_precio_vta.toLocaleString()}`} />
            <Column field="pro_es_servicio" header="Tipo" body={(r) => <Tag value={r.pro_es_servicio ? 'Servicio' : 'Producto'} severity={r.pro_es_servicio ? 'info' : 'warning'} />} />
            <Column body={(r) => <Button icon="pi pi-pencil" text rounded severity="warning" onClick={() => navigate(`/productos/editar/${r.pro_codi}`)} />} />
          </DataTable>
        </Card>
      </div>
    </Layout>
  );
};

export default ProductoList;
