import { useState } from 'react';
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import { Password } from 'primereact/password';
import { useForm, SubmitHandler } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../../context/AuthContext';
import { loginSchema, LoginFormData } from '../../utils/validators';
import './Login.css';

export default function Login() {
  const navigate = useNavigate();
  const { login } = useAuth();
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string>('');

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<LoginFormData>({
    resolver: zodResolver(loginSchema),
  });

  const onSubmit: SubmitHandler<LoginFormData> = async (data: LoginFormData) => {
    setLoading(true);
    setError('');

    console.log('Intentando login con:', { usuario: data.usuario });

    try {
      await login(data.usuario, data.password);
      console.log('Login exitoso, navegando al dashboard');
      navigate('/');
    } catch (err: unknown) {
      console.error('Error en login:', err);
      if (err instanceof Error) {
        setError(err.message || 'Error al iniciar sesión');
      } else {
        setError('Error al iniciar sesión');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="login-container">
      <div className="login-card card">
        <div className="text-center mb-4">
          <i className="pi pi-wrench icon-wrench"></i>
          <h1 className="mt-3 mb-2">Serviteca Pro</h1>
          <p className="text-secondary m-0">Gestión de Taller Mecánico</p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="flex flex-column gap-3">
          {error && (
            <div className="error-message">
              <i className="pi pi-exclamation-circle"></i>
              <span>{error}</span>
            </div>
          )}

          <div className="field">
            <label htmlFor="usuario" className="block text-900 font-medium mb-2">
              Usuario
            </label>
            <InputText
              id="usuario"
              placeholder="Ingrese su usuario"
              className={`w-full ${errors.usuario ? 'p-invalid' : ''}`}
              {...register('usuario')}
              disabled={loading}
            />
            {errors.usuario && (
              <small className="error-text">{errors.usuario.message}</small>
            )}
          </div>

          <div className="field">
            <label htmlFor="password" className="block text-900 font-medium mb-2">
              Contraseña
            </label>
            <Password
              id="password"
              placeholder="Ingrese su contraseña"
              className={`w-full ${errors.password ? 'p-invalid' : ''}`}
              inputClassName="w-full"
              toggleMask
              feedback={false}
              {...register('password')}
              disabled={loading}
            />
            {errors.password && (
              <small className="error-text">{errors.password.message}</small>
            )}
          </div>

          <div className="flex justify-content-between align-items-center mt-3">
            <a href="#" className="forgot-password-link">
              ¿Olvidó su contraseña?
            </a>
          </div>

          <Button
            type="submit"
            label="Iniciar Sesión"
            icon="pi pi-sign-in"
            loading={loading}
            className="w-full mt-4"
            severity="help"
          />
        </form>

        <div className="footer-text">
          <small>
            © 2024 Serviteca Pro - Todos los derechos reservados
          </small>
        </div>
      </div>
    </div>
  );
}
