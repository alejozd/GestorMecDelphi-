import React, { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import { Card } from 'primereact/card';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import { Dropdown } from 'primereact/dropdown';
import { InputSwitch } from 'primereact/inputswitch';
import { IconField } from 'primereact/iconfield';
import { InputIcon } from 'primereact/inputicon';
import Layout from '../../components/Layout';
import { productoService } from '../../services/producto.service';

const ProductoForm: React.FC = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [grupos, setGrupos] = useState<any[]>([]);
  const { control, handleSubmit, reset } = useForm();

  useEffect(() => {
    productoService.getGrupos().then(res => setGrupos(res.data));
    if (id) productoService.getProductoById(parseInt(id)).then(res => reset(res.data));
  }, [id]);

  const onSubmit = async (data: any) => {
    if (id) await productoService.updateProducto(parseInt(id), data);
    else await productoService.createProducto(data);
    navigate('/productos');
  };

  return (
    <Layout>
      <div className="max-w-30rem mx-auto animate-fade-in p-2">
        <Button icon="pi pi-arrow-left" text onClick={() => navigate(-1)} label="Volver" className="mb-3" />
        <Card title={id ? 'Editar Producto' : 'Nuevo Producto'} className="shadow-4 border-round-xl border-none">
          <form onSubmit={handleSubmit(onSubmit)} className="p-fluid">
            <div className="field">
              <label>Nombre del Producto</label>
              <Controller name="pro_nombre" control={control} render={({ field }) => (
                  <IconField iconPosition="left"><InputIcon className="pi pi-box" /><InputText {...field} /></IconField>
              )} />
            </div>
            <div className="field">
              <label>Referencia</label>
              <Controller name="pro_referencia" control={control} render={({ field }) => (
                  <IconField iconPosition="left"><InputIcon className="pi pi-tag" /><InputText {...field} /></IconField>
              )} />
            </div>
            <div className="field">
              <label>Grupo</label>
              <Controller name="gp_codi" control={control} render={({ field }) => (
                  <Dropdown {...field} options={grupos} optionLabel="gp_nombre" optionValue="gp_codi" />
              )} />
            </div>
            <div className="field">
                <label>Precio de Venta</label>
                <Controller name="pro_precio_vta" control={control} render={({ field }) => (
                    <InputText type="number" {...field} />
                )} />
            </div>
            <div className="field flex align-items-center gap-3">
                <label className="mb-0">¿Es un Servicio?</label>
                <Controller name="pro_es_servicio" control={control} render={({ field }) => (
                    <InputSwitch checked={field.value} onChange={(e) => field.onChange(e.value)} />
                )} />
            </div>
            <Button type="submit" label="Guardar Producto" className="mt-4" />
          </form>
        </Card>
      </div>
    </Layout>
  );
};

export default ProductoForm;
