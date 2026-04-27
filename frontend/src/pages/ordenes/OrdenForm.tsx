import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useForm, Controller, useFieldArray } from 'react-hook-form';
import { Card } from 'primereact/card';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import { Dropdown } from 'primereact/dropdown';
import { Divider } from 'primereact/divider';
import Layout from '../../components/Layout';
import ordenService from '../../services/orden.service';
import { clienteService } from '../../services/cliente.service';
import { vehiculoService } from '../../services/vehiculo.service';
import { productoService } from '../../services/producto.service';

const OrdenForm: React.FC = () => {
  const navigate = useNavigate();
  const [clientes, setClientes] = useState<any[]>([]);
  const [vehiculos, setVehiculos] = useState<any[]>([]);
  const [productos, setProductos] = useState<any[]>([]);
  const { control, handleSubmit, watch, setValue } = useForm({
    defaultValues: {
      cli_codi: null, vxc_codi: null, otm_clase_doc: 0,
      detalles: [{ pr_codi: null, otd_cantidad: 1, otd_precio: 0, otd_vr_total: 0 }]
    }
  });
  const { fields, append, remove } = useFieldArray({ control, name: 'detalles' });

  const watchedDetails = watch('detalles');
  const selectedCliente = watch('cli_codi');

  useEffect(() => {
    clienteService.getClientes({ limite: 100 }).then(res => setClientes(res.data));
    productoService.getProductos({ limite: 100 }).then(res => setProductos(res.data));
  }, []);

  useEffect(() => {
    if (selectedCliente) vehiculoService.getVehiculosPorCliente(selectedCliente).then(setVehiculos);
    else setVehiculos([]);
  }, [selectedCliente]);

  const calculateSubtotal = () => watchedDetails.reduce((acc, curr) => acc + (Number(curr.otd_cantidad) * Number(curr.otd_precio)), 0);

  const onSubmit = async (data: any) => {
    await ordenService.createOrden(data);
    navigate('/ordenes');
  };

  return (
    <Layout>
      <div className="animate-fade-in max-w-60rem mx-auto">
        <Button icon="pi pi-arrow-left" text label="Volver" onClick={() => navigate('/ordenes')} className="mb-3" />
        <Card title="Nueva Orden de Trabajo" className="shadow-4 border-round-xl border-none">
          <form onSubmit={handleSubmit(onSubmit)} className="p-fluid grid">
            <div className="field col-6">
              <label>Cliente</label>
              <Controller name="cli_codi" control={control} render={({ field }) => (
                <Dropdown {...field} options={clientes} optionLabel="cli_nombre" optionValue="cli_codi" filter placeholder="Seleccione cliente" />
              )} />
            </div>
            <div className="field col-6">
              <label>Vehículo</label>
              <Controller name="vxc_codi" control={control} render={({ field }) => (
                <Dropdown {...field} options={vehiculos} optionLabel="placa" optionValue="vxc_codi" placeholder="Seleccione vehículo" disabled={!selectedCliente} />
              )} />
            </div>
            <div className="col-12"><Divider align="left"><b>Servicios y Productos</b></Divider></div>
            <div className="col-12">
               {fields.map((field, index) => (
                 <div key={field.id} className="grid align-items-center mb-2">
                    <div className="col-5">
                        <Controller name={`detalles.${index}.pr_codi`} control={control} render={({ field: f }) => (
                            <Dropdown {...f} options={productos} optionLabel="pro_nombre" optionValue="pro_codi" filter placeholder="Producto/Servicio" onChange={(e) => {
                                f.onChange(e.value);
                                const p = productos.find(x => x.pro_codi === e.value);
                                if (p) setValue(`detalles.${index}.otd_precio`, p.pro_precio);
                            }} />
                        )} />
                    </div>
                    <div className="col-2">
                        <Controller name={`detalles.${index}.otd_cantidad`} control={control} render={({ field: f }) => (
                            <InputText
                                type="number"
                                value={f.value?.toString() || ''}
                                onChange={(e) => f.onChange(Number(e.target.value))}
                                onBlur={f.onBlur}
                                name={f.name}
                                ref={f.ref}
                            />
                        )} />
                    </div>
                    <div className="col-3">
                        <Controller name={`detalles.${index}.otd_precio`} control={control} render={({ field: f }) => (
                            <InputText
                                type="number"
                                value={f.value?.toString() || ''}
                                onChange={(e) => f.onChange(Number(e.target.value))}
                                onBlur={f.onBlur}
                                name={f.name}
                                ref={f.ref}
                            />
                        )} />
                    </div>
                    <div className="col-2 flex gap-1">
                        <Button icon="pi pi-trash" text severity="danger" onClick={() => remove(index)} disabled={fields.length === 1} />
                    </div>
                 </div>
               ))}
               <Button label="Agregar Ítem" icon="pi pi-plus" text className="w-auto mt-2" onClick={() => append({ pr_codi: null, otd_cantidad: 1, otd_precio: 0, otd_vr_total: 0 })} />
            </div>
            <div className="col-12 mt-4 flex justify-content-between align-items-center">
                <div className="text-2xl font-bold text-primary">Total: $${calculateSubtotal().toLocaleString()}</div>
                <Button type="submit" label="Crear Orden" className="w-auto px-6" />
            </div>
          </form>
        </Card>
      </div>
    </Layout>
  );
};

export default OrdenForm;
