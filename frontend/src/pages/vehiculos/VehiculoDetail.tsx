import React, { useState, useEffect, useRef } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { Card } from 'primereact/card';
import { Button } from 'primereact/button';
import { Divider } from 'primereact/divider';
import { Toast } from 'primereact/toast';
import Layout from '../../components/Layout';
import { vehiculoService } from '../../services/vehiculo.service';

const VehiculoDetail: React.FC = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const toast = useRef<Toast>(null);
  const [vehiculo, setVehiculo] = useState<any>(null);

  useEffect(() => {
    if (id) vehiculoService.getVehiculoById(parseInt(id)).then(res => setVehiculo(res.data));
  }, [id]);

  if (!vehiculo) return null;

  return (
    <Layout>
      <div className="max-w-40rem mx-auto animate-fade-in p-2">
        <Toast ref={toast} />
        <Button icon="pi pi-arrow-left" text onClick={() => navigate('/vehiculos')} label="Volver" className="mb-3" />
        <Card className="shadow-2 border-round-xl border-none overflow-hidden">
            <div className="flex justify-content-between align-items-center mb-4">
                <div>
                    <h2 className="m-0 text-900 font-bold">{vehiculo.marca?.mr_nombre} {vehiculo.linea?.li_nombre}</h2>
                    <span className="placa-badge mt-2 inline-block">{vehiculo.placa}</span>
                </div>
                <Button icon="pi pi-pencil" label="Editar" onClick={() => navigate(`/vehiculos/editar/${vehiculo.vxc_codi}`)} />
            </div>
            <Divider />
            <div className="grid">
                <div className="col-6">
                    <p className="text-600 mb-1">Dueño</p>
                    <p className="font-bold">{vehiculo.cliente?.cli_nombre}</p>
                </div>
                <div className="col-6">
                    <p className="text-600 mb-1">Modelo</p>
                    <p className="font-bold">{vehiculo.modelo || 'N/A'}</p>
                </div>
                <div className="col-6">
                    <p className="text-600 mb-1">Color</p>
                    <p className="font-bold">{vehiculo.color || 'N/A'}</p>
                </div>
                <div className="col-6">
                    <p className="text-600 mb-1">Kilometraje Actual</p>
                    <p className="font-bold">{vehiculo.kilómetro_actual || 0} KM</p>
                </div>
            </div>
            <div className="mt-5">
                <Button label="Ver Historial de Órdenes" icon="pi pi-history" className="w-full" severity="secondary" onClick={() => navigate(`/historial/placa/${vehiculo.placa}`)} />
            </div>
        </Card>
      </div>
    </Layout>
  );
};

export default VehiculoDetail;
