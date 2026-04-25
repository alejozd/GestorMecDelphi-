import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Card } from 'primereact/card';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import { Dropdown } from 'primereact/dropdown';
import { InputTextarea } from 'primereact/inputtextarea';
import { Toast } from 'primereact/toast';
import { classNames } from 'primereact/utils';
import { clienteService, ClienteCreate } from '../../services/cliente.service';

// Esquema de validación con Zod
const clienteSchema = z.object({
  cod_tipdo: z.number({ required_error: 'El tipo de documento es requerido' }),
  cli_numdoc: z.string().min(5, 'El número de documento debe tener al menos 5 caracteres'),
  cli_nombre: z.string().min(3, 'El nombre debe tener al menos 3 caracteres'),
  cli_direccion: z.string().optional(),
  cli_tel_movil: z.string().min(10, 'El teléfono móvil debe tener 10 dígitos').max(10),
  cli_tel_fijo: z.string().optional(),
  cli_correoe: z.string().email('Correo electrónico inválido').optional().or(z.literal('')),
  ciu_codi: z.number({ required_error: 'La ciudad es requerida' }),
  cli_observacion: z.string().optional(),
});

type ClienteFormData = z.infer<typeof clienteSchema>;

const ClienteForm: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const isEditMode = !!id;
  const navigate = useNavigate();
  const toast = useRef<Toast>(null);

  const [tiposDocumento, setTiposDocumento] = useState<any[]>([]);
  const [ciudades, setCiudades] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);
  const [fetching, setFetching] = useState(isEditMode);

  const {
    control,
    handleSubmit,
    formState: { errors },
    reset
  } = useForm<ClienteFormData>({
    resolver: zodResolver(clienteSchema),
    defaultValues: {
      cli_nombre: '',
      cli_numdoc: '',
      cli_tel_movil: '',
      cli_correoe: '',
    }
  });

  useEffect(() => {
    const loadCatalogos = async () => {
      try {
        const [resTipos, resCiudades] = await Promise.all([
          clienteService.getTiposDocumento(),
          clienteService.getCiudades()
        ]);
        setTiposDocumento(resTipos as any);
        setCiudades(resCiudades as any);
      } catch (error) {
        toast.current?.show({
          severity: 'error',
          summary: 'Error',
          detail: 'Error cargando catálogos',
        });
      }
    };

    const loadCliente = async () => {
      if (!id) return;
      try {
        const response = await clienteService.getClienteById(parseInt(id));
        if (response.success && response.data) {
          const cliente = response.data;
          reset({
            cod_tipdo: cliente.cod_tipdo,
            cli_numdoc: cliente.cli_numdoc,
            cli_nombre: cliente.cli_nombre,
            cli_direccion: cliente.cli_direccion || '',
            cli_tel_movil: cliente.cli_tel_movil || '',
            cli_tel_fijo: cliente.cli_tel_fijo || '',
            cli_correoe: cliente.cli_correoe || '',
            ciu_codi: cliente.ciu_codi,
            cli_observacion: (cliente as any).cli_observacion || '',
          });
        }
      } catch (error) {
        toast.current?.show({
          severity: 'error',
          summary: 'Error',
          detail: 'Error cargando datos del cliente',
        });
        navigate('/clientes');
      } finally {
        setFetching(false);
      }
    };

    loadCatalogos().then(() => {
      if (isEditMode) {
        loadCliente();
      }
    });
  }, [id, reset, navigate, isEditMode]);

  const onSubmit = async (data: ClienteFormData) => {
    setLoading(true);
    try {
      if (isEditMode) {
        await clienteService.updateCliente({
          ...data,
          cli_codi: parseInt(id as string)
        });
        toast.current?.show({
          severity: 'success',
          summary: 'Éxito',
          detail: 'Cliente actualizado correctamente'
        });
      } else {
        await clienteService.createCliente(data as ClienteCreate);
        toast.current?.show({
          severity: 'success',
          summary: 'Éxito',
          detail: 'Cliente creado correctamente'
        });
      }

      setTimeout(() => {
        navigate('/clientes');
      }, 1500);
    } catch (error: any) {
      toast.current?.show({
        severity: 'error',
        summary: 'Error',
        detail: error.message || 'Error al guardar el cliente'
      });
    } finally {
      setLoading(false);
    }
  };

  if (fetching) {
    return (
      <div className="flex justify-content-center align-items-center min-h-screen">
        <i className="pi pi-spin pi-spinner" style={{ fontSize: '2rem' }}></i>
      </div>
    );
  }

  return (
    <div className="cliente-form-container animate-fade-in p-2 md:p-4">
      <Toast ref={toast} />

      <div className="flex align-items-center mb-4">
        <Button
          icon="pi pi-arrow-left"
          text
          rounded
          className="mr-3"
          onClick={() => navigate('/clientes')}
          tooltip="Volver a la lista"
        />
        <h2 className="m-0 text-primary">
          {isEditMode ? 'Editar Cliente' : 'Nuevo Cliente'}
        </h2>
      </div>

      <Card className="shadow-4 border-round-xl">
        <form onSubmit={handleSubmit(onSubmit)} className="p-fluid grid">

          <div className="field col-12 md:col-6">
            <label htmlFor="cod_tipdo" className="font-bold">Tipo de Documento *</label>
            <Controller
              name="cod_tipdo"
              control={control}
              render={({ field }) => (
                <Dropdown
                  id={field.name}
                  value={field.value}
                  options={tiposDocumento}
                  onChange={(e) => field.onChange(e.value)}
                  optionLabel="td_nombre"
                  optionValue="td_codi"
                  placeholder="Seleccione tipo"
                  className={classNames({ 'p-invalid': errors.cod_tipdo })}
                />
              )}
            />
            {errors.cod_tipdo && <small className="p-error">{errors.cod_tipdo.message}</small>}
          </div>

          <div className="field col-12 md:col-6">
            <label htmlFor="cli_numdoc" className="font-bold">Número de Documento *</label>
            <Controller
              name="cli_numdoc"
              control={control}
              render={({ field }) => (
                <InputText
                  id={field.name}
                  {...field}
                  className={classNames({ 'p-invalid': errors.cli_numdoc })}
                  placeholder="Ej: 1020304050"
                />
              )}
            />
            {errors.cli_numdoc && <small className="p-error">{errors.cli_numdoc.message}</small>}
          </div>

          <div className="field col-12">
            <label htmlFor="cli_nombre" className="font-bold">Nombre Completo *</label>
            <Controller
              name="cli_nombre"
              control={control}
              render={({ field }) => (
                <InputText
                  id={field.name}
                  {...field}
                  className={classNames({ 'p-invalid': errors.cli_nombre })}
                  placeholder="Ej: Juan Pérez"
                />
              )}
            />
            {errors.cli_nombre && <small className="p-error">{errors.cli_nombre.message}</small>}
          </div>

          <div className="field col-12 md:col-6">
            <label htmlFor="cli_tel_movil" className="font-bold">Teléfono Móvil *</label>
            <Controller
              name="cli_tel_movil"
              control={control}
              render={({ field }) => (
                <InputText
                  id={field.name}
                  {...field}
                  className={classNames({ 'p-invalid': errors.cli_tel_movil })}
                  placeholder="10 dígitos"
                />
              )}
            />
            {errors.cli_tel_movil && <small className="p-error">{errors.cli_tel_movil.message}</small>}
          </div>

          <div className="field col-12 md:col-6">
            <label htmlFor="cli_correoe" className="font-bold">Correo Electrónico</label>
            <Controller
              name="cli_correoe"
              control={control}
              render={({ field }) => (
                <InputText
                  id={field.name}
                  {...field}
                  className={classNames({ 'p-invalid': errors.cli_correoe })}
                  placeholder="ejemplo@correo.com"
                />
              )}
            />
            {errors.cli_correoe && <small className="p-error">{errors.cli_correoe.message}</small>}
          </div>

          <div className="field col-12 md:col-6">
            <label htmlFor="ciu_codi" className="font-bold">Ciudad *</label>
            <Controller
              name="ciu_codi"
              control={control}
              render={({ field }) => (
                <Dropdown
                  id={field.name}
                  value={field.value}
                  options={ciudades}
                  onChange={(e) => field.onChange(e.value)}
                  optionLabel="ciu_nombre"
                  optionValue="ciu_codi"
                  filter
                  placeholder="Seleccione ciudad"
                  className={classNames({ 'p-invalid': errors.ciu_codi })}
                />
              )}
            />
            {errors.ciu_codi && <small className="p-error">{errors.ciu_codi.message}</small>}
          </div>

          <div className="field col-12 md:col-6">
            <label htmlFor="cli_direccion" className="font-bold">Dirección</label>
            <Controller
              name="cli_direccion"
              control={control}
              render={({ field }) => (
                <InputText
                  id={field.name}
                  {...field}
                />
              )}
            />
          </div>

          <div className="field col-12">
            <label htmlFor="cli_observacion" className="font-bold">Observaciones</label>
            <Controller
              name="cli_observacion"
              control={control}
              render={({ field }) => (
                <InputTextarea
                  id={field.name}
                  {...field}
                  rows={3}
                  autoResize
                />
              )}
            />
          </div>

          <div className="col-12 flex justify-content-end gap-2 mt-4">
            <Button
              label="Cancelar"
              icon="pi pi-times"
              text
              severity="secondary"
              type="button"
              onClick={() => navigate('/clientes')}
              disabled={loading}
            />
            <Button
              label={isEditMode ? 'Actualizar Cliente' : 'Guardar Cliente'}
              icon="pi pi-check"
              type="submit"
              loading={loading}
            />
          </div>

        </form>
      </Card>
    </div>
  );
};

export default ClienteForm;
