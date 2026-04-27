import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, useParams, useSearchParams } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Card } from 'primereact/card';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import { Dropdown } from 'primereact/dropdown';
import { Toast } from 'primereact/toast';
import { IconField } from 'primereact/iconfield';
import { InputIcon } from 'primereact/inputicon';
import { classNames } from 'primereact/utils';
import Layout from '../../components/Layout';
import { vehiculoService, VehiculoCreate } from '../../services/vehiculo.service';
import { clienteService } from '../../services/cliente.service';

const vehiculoSchema = z.object({
  cli_codi: z.number({ required_error: 'El cliente es requerido' }),
  placa: z.string().min(6, 'Placa inválida').max(10),
  mr_codi: z.number({ required_error: 'La marca es requerida' }),
  li_codi: z.number({ required_error: 'La línea es requerida' }),
  color: z.string().optional(),
  modelo: z.number().min(1900).max(2100).optional(),
});

type VehiculoFormData = z.infer<typeof vehiculoSchema>;

const VehiculoForm: React.FC = () => {
  const { id } = useParams();
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();
  const toast = useRef<Toast>(null);

  const [clientes, setClientes] = useState<any[]>([]);
  const [marcas, setMarcas] = useState<any[]>([]);
  const [lineas, setLineas] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);

  const { control, handleSubmit, reset, watch, setValue, formState: { errors } } = useForm<VehiculoFormData>({
    resolver: zodResolver(vehiculoSchema),
  });

  const selectedMarca = watch('mr_codi');

  useEffect(() => {
    const init = async () => {
      try {
        const [resClientes, resMarcas] = await Promise.all([
          clienteService.getClientes({ limit: 100 }),
          vehiculoService.getMarcas()
        ]);
        setClientes(resClientes.data);
        setMarcas(resMarcas as any);

        const cliParam = searchParams.get('cliente');
        if (cliParam) setValue('cli_codi', parseInt(cliParam));

        if (id) {
          const res = await vehiculoService.getVehiculoById(parseInt(id));
          if (res.success) reset(res.data);
        }
      } catch (e) { console.error(e); }
    };
    init();
  }, [id, searchParams]);

  useEffect(() => {
    if (selectedMarca) {
      vehiculoService.getLineasPorMarca(selectedMarca).then(res => setLineas(res as any));
    } else {
      setLineas([]);
    }
  }, [selectedMarca]);

  const onSubmit = async (data: VehiculoFormData) => {
    setLoading(true);
    try {
      if (id) await vehiculoService.updateVehiculo({ ...data, vxc_codi: parseInt(id) });
      else await vehiculoService.createVehiculo(data as VehiculoCreate);
      toast.current?.show({ severity: 'success', summary: 'Éxito', detail: 'Guardado' });
      setTimeout(() => navigate('/vehiculos'), 1500);
    } catch (error: any) {
      toast.current?.show({ severity: 'error', summary: 'Error', detail: error.message });
    } finally { setLoading(false); }
  };

  return (
    <Layout>
      <div className="max-w-30rem mx-auto animate-fade-in p-2">
        <Toast ref={toast} />
        <Button icon="pi pi-arrow-left" text onClick={() => navigate(-1)} label="Volver" className="mb-3" />
        <Card title={id ? 'Editar Vehículo' : 'Nuevo Vehículo'} className="shadow-4 border-round-xl overflow-hidden border-none">
          <form onSubmit={handleSubmit(onSubmit)} className="p-fluid">
            <div className="field">
              <label>Propietario <span className="text-red-500">*</span></label>
              <Controller name="cli_codi" control={control} render={({ field }) => (
                <IconField iconPosition="left">
                  <InputIcon className="pi pi-user" />
                  <Dropdown {...field} options={clientes} optionLabel="cli_nombre" optionValue="cli_codi" filter placeholder="Seleccione dueño" className={classNames({ 'p-invalid': errors.cli_codi })} />
                </IconField>
              )} />
              {errors.cli_codi && <small className="p-error ml-1">{errors.cli_codi.message}</small>}
            </div>
            <div className="field">
              <label>Placa <span className="text-red-500">*</span></label>
              <Controller name="placa" control={control} render={({ field }) => (
                <IconField iconPosition="left">
                  <InputIcon className="pi pi-tag" />
                  <InputText {...field} placeholder="ABC123" className={classNames({ 'p-invalid': errors.placa })} />
                </IconField>
              )} />
              {errors.placa && <small className="p-error ml-1">{errors.placa.message}</small>}
            </div>
            <div className="field">
              <label>Marca <span className="text-red-500">*</span></label>
              <Controller name="mr_codi" control={control} render={({ field }) => (
                <IconField iconPosition="left">
                  <InputIcon className="pi pi-car" />
                  <Dropdown {...field} options={marcas} optionLabel="mr_nombre" optionValue="mr_codi" placeholder="Marca" className={classNames({ 'p-invalid': errors.mr_codi })} />
                </IconField>
              )} />
              {errors.mr_codi && <small className="p-error ml-1">{errors.mr_codi.message}</small>}
            </div>
            <div className="field">
              <label>Línea <span className="text-red-500">*</span></label>
              <Controller name="li_codi" control={control} render={({ field }) => (
                <IconField iconPosition="left">
                  <InputIcon className="pi pi-list" />
                  <Dropdown {...field} options={lineas} optionLabel="li_nombre" optionValue="li_codi" placeholder="Línea" disabled={!selectedMarca} className={classNames({ 'p-invalid': errors.li_codi })} />
                </IconField>
              )} />
              {errors.li_codi && <small className="p-error ml-1">{errors.li_codi.message}</small>}
            </div>
            <div className="flex gap-2">
              <div className="field flex-1">
                <label>Modelo (Año)</label>
                <Controller name="modelo" control={control} render={({ field }) => (
                    <InputText
                        type="number"
                        value={field.value?.toString() || ''}
                        onChange={e => field.onChange(parseInt(e.target.value))}
                        onBlur={field.onBlur}
                        name={field.name}
                        ref={field.ref}
                    />
                )} />
              </div>
              <div className="field flex-1">
                <label>Color</label>
                <Controller name="color" control={control} render={({ field }) => (
                    <InputText {...field} />
                )} />
              </div>
            </div>
            <Button type="submit" label="Guardar" loading={loading} className="mt-4 w-full" />
          </form>
        </Card>
      </div>
    </Layout>
  );
};

export default VehiculoForm;
