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
import { Divider } from 'primereact/divider';
import { classNames } from 'primereact/utils';
import Layout from '../../components/Layout';
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
    <Layout>
      <div className="cliente-form-container animate-fade-in p-2 md:p-4 max-w-50rem mx-auto">
        <Toast ref={toast} />

        <div className="flex align-items-center justify-content-between mb-4">
          <div className="flex align-items-center">
            <Button
              icon="pi pi-arrow-left"
              text
              rounded
              className="mr-3"
              onClick={() => navigate('/clientes')}
            />
            <div>
              <h2 className="m-0 text-900 font-bold">
                {isEditMode ? 'Editar Perfil de Cliente' : 'Registro de Nuevo Cliente'}
              </h2>
              <p className="m-0 text-600 text-sm">Complete la información técnica y de contacto</p>
            </div>
          </div>
        </div>

        <Card className="shadow-4 border-round-xl border-none overflow-hidden">
          <div className="bg-primary-reverse p-4 border-bottom-1 surface-border mb-4">
            <div className="flex align-items-center gap-3">
              <div className="bg-primary border-round-lg p-2 flex align-items-center justify-content-center">
                <i className="pi pi-id-card text-white text-xl"></i>
              </div>
              <span className="text-xl font-bold text-900">Datos Principales</span>
            </div>
          </div>

          <form onSubmit={handleSubmit(onSubmit)} className="p-fluid grid px-3">

            <div className="field col-12 md:col-6">
              <label htmlFor="cod_tipdo" className="font-bold text-700 mb-2 block">Tipo de Documento <span className="text-red-500">*</span></label>
              <Controller
                name="cod_tipdo"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-id-card" />
                    <Dropdown
                      id={field.name}
                      value={field.value}
                      options={tiposDocumento}
                      onChange={(e) => field.onChange(e.value)}
                      optionLabel="td_nombre"
                      optionValue="td_codi"
                      placeholder="Seleccione tipo"
                      className={classNames('border-round-xl', { 'p-invalid': errors.cod_tipdo })}
                    />
                  </span>
                )}
              />
              {errors.cod_tipdo && <small className="p-error ml-1 mt-1 block">{errors.cod_tipdo.message}</small>}
            </div>

            <div className="field col-12 md:col-6">
              <label htmlFor="cli_numdoc" className="font-bold text-700 mb-2 block">Número de Documento <span className="text-red-500">*</span></label>
              <Controller
                name="cli_numdoc"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-hashtag" />
                    <InputText
                      id={field.name}
                      {...field}
                      className={classNames('border-round-xl', { 'p-invalid': errors.cli_numdoc })}
                      placeholder="Ej: 1020304050"
                    />
                  </span>
                )}
              />
              {errors.cli_numdoc && <small className="p-error ml-1 mt-1 block">{errors.cli_numdoc.message}</small>}
            </div>

            <div className="field col-12">
              <label htmlFor="cli_nombre" className="font-bold text-700 mb-2 block">Nombre Completo <span className="text-red-500">*</span></label>
              <Controller
                name="cli_nombre"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-user" />
                    <InputText
                      id={field.name}
                      {...field}
                      className={classNames('border-round-xl', { 'p-invalid': errors.cli_nombre })}
                      placeholder="Ej: Juan Pérez"
                    />
                  </span>
                )}
              />
              {errors.cli_nombre && <small className="p-error ml-1 mt-1 block">{errors.cli_nombre.message}</small>}
            </div>

            <div className="col-12">
              <Divider align="left" className="my-4">
                <span className="text-600 font-bold flex align-items-center gap-2">
                  <i className="pi pi-phone"></i> Información de Contacto
                </span>
              </Divider>
            </div>

            <div className="field col-12 md:col-6">
              <label htmlFor="cli_tel_movil" className="font-bold text-700 mb-2 block">Teléfono Móvil <span className="text-red-500">*</span></label>
              <Controller
                name="cli_tel_movil"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-mobile" />
                    <InputText
                      id={field.name}
                      {...field}
                      className={classNames('border-round-xl', { 'p-invalid': errors.cli_tel_movil })}
                      placeholder="10 dígitos"
                    />
                  </span>
                )}
              />
              {errors.cli_tel_movil && <small className="p-error ml-1 mt-1 block">{errors.cli_tel_movil.message}</small>}
            </div>

            <div className="field col-12 md:col-6">
              <label htmlFor="cli_correoe" className="font-bold text-700 mb-2 block">Correo Electrónico</label>
              <Controller
                name="cli_correoe"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-envelope" />
                    <InputText
                      id={field.name}
                      {...field}
                      className={classNames('border-round-xl', { 'p-invalid': errors.cli_correoe })}
                      placeholder="ejemplo@correo.com"
                    />
                  </span>
                )}
              />
              {errors.cli_correoe && <small className="p-error ml-1 mt-1 block">{errors.cli_correoe.message}</small>}
            </div>

            <div className="col-12">
              <Divider align="left" className="my-4">
                <span className="text-600 font-bold flex align-items-center gap-2">
                  <i className="pi pi-map-marker"></i> Ubicación y Detalles
                </span>
              </Divider>
            </div>

            <div className="field col-12 md:col-6">
              <label htmlFor="ciu_codi" className="font-bold text-700 mb-2 block">Ciudad <span className="text-red-500">*</span></label>
              <Controller
                name="ciu_codi"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-map" />
                    <Dropdown
                      id={field.name}
                      value={field.value}
                      options={ciudades}
                      onChange={(e) => field.onChange(e.value)}
                      optionLabel="ciu_nombre"
                      optionValue="ciu_codi"
                      filter
                      placeholder="Seleccione ciudad"
                      className={classNames('border-round-xl', { 'p-invalid': errors.ciu_codi })}
                    />
                  </span>
                )}
              />
              {errors.ciu_codi && <small className="p-error ml-1 mt-1 block">{errors.ciu_codi.message}</small>}
            </div>

            <div className="field col-12 md:col-6">
              <label htmlFor="cli_direccion" className="font-bold text-700 mb-2 block">Dirección</label>
              <Controller
                name="cli_direccion"
                control={control}
                render={({ field }) => (
                  <span className="p-input-icon-left">
                    <i className="pi pi-directions" />
                    <InputText
                      id={field.name}
                      {...field}
                      className="border-round-xl"
                      placeholder="Calle/Carrera #..."
                    />
                  </span>
                )}
              />
            </div>

            <div className="field col-12">
              <label htmlFor="cli_observacion" className="font-bold text-700 mb-2 block">Observaciones Adicionales</label>
              <Controller
                name="cli_observacion"
                control={control}
                render={({ field }) => (
                  <InputTextarea
                    id={field.name}
                    {...field}
                    rows={3}
                    autoResize
                    className="border-round-xl"
                    placeholder="Detalles sobre preferencias del cliente, convenios, etc."
                  />
                )}
              />
            </div>

            <div className="col-12 mt-4 border-top-1 surface-border pt-4 flex justify-content-end gap-3 mb-3">
              <Button
                label="Descartar"
                icon="pi pi-times"
                text
                severity="secondary"
                type="button"
                onClick={() => navigate('/clientes')}
                disabled={loading}
                className="border-round-xl font-bold"
              />
              <Button
                label={isEditMode ? 'Actualizar Cliente' : 'Registrar Cliente'}
                icon="pi pi-save"
                type="submit"
                loading={loading}
                className="border-round-xl font-bold px-4"
              />
            </div>

          </form>
        </Card>
      </div>
    </Layout>
  );
};

export default ClienteForm;
