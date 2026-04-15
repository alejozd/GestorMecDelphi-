import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import prisma from '../config/database.js';
import { configApp } from '../config/index.js';
import { AppError } from '../middleware/error.middleware.js';

interface LoginDto {
  usuario: string;
  password: string;
}

interface UsuarioToken {
  usu_codi: number;
  usuario: string;
  nombre: string;
  correo?: string;
  rol_codi: number;
  rol_nombre: string;
}

/**
 * Servicio de autenticación y autorización
 */
export class AuthService {
  /**
   * Inicia sesión con usuario y contraseña
   */
  async login(credentials: LoginDto): Promise<{ token: string; usuario: UsuarioToken }> {
    const { usuario, password } = credentials;

    // Buscar usuario por username
    const user = await prisma.usuario.findFirst({
      where: {
        usuario: usuario.toLowerCase(),
        estado: 1,
      },
      include: {
        rol: true,
      },
    });

    if (!user) {
      throw new AppError('Usuario o contraseña incorrectos', 401);
    }

    // Verificar contraseña
    const isValidPassword = await bcrypt.compare(password, user.password);

    if (!isValidPassword) {
      throw new AppError('Usuario o contraseña incorrectos', 401);
    }

    // Generar token JWT
    const tokenPayload: UsuarioToken = {
      usu_codi: user.usu_codi,
      usuario: user.usuario,
      nombre: user.nombre,
      correo: user.correo || undefined,
      rol_codi: user.rol_codi,
      rol_nombre: user.rol.rol_nombre,
    };

    const token = jwt.sign(tokenPayload, configApp.jwtSecret, {
      expiresIn: configApp.jwtExpiresIn,
    });

    return { token, usuario: tokenPayload };
  }

  /**
   * Cambia la contraseña de un usuario
   */
  async changePassword(
    usu_codi: number,
    currentPassword: string,
    newPassword: string
  ): Promise<void> {
    const user = await prisma.usuario.findUnique({
      where: { usu_codi },
    });

    if (!user) {
      throw new AppError('Usuario no encontrado', 404);
    }

    // Verificar contraseña actual
    const isValidPassword = await bcrypt.compare(currentPassword, user.password);

    if (!isValidPassword) {
      throw new AppError('Contraseña actual incorrecta', 400);
    }

    // Hashear nueva contraseña
    const hashedPassword = await bcrypt.hash(newPassword, configApp.bcryptSaltRounds);

    // Actualizar contraseña
    await prisma.usuario.update({
      where: { usu_codi },
      data: { password: hashedPassword },
    });
  }

  /**
   * Crea un nuevo usuario (solo administradores)
   */
  async createUser(data: {
    usuario: string;
    password: string;
    nombre: string;
    correo?: string;
    telefono?: string;
    rol_codi: number;
  }): Promise<any> {
    // Verificar si el usuario ya existe
    const existingUser = await prisma.usuario.findUnique({
      where: { usuario: data.usuario.toLowerCase() },
    });

    if (existingUser) {
      throw new AppError('El nombre de usuario ya está en uso', 409);
    }

    // Hashear contraseña
    const hashedPassword = await bcrypt.hash(data.password, configApp.bcryptSaltRounds);

    // Crear usuario
    const newUser = await prisma.usuario.create({
      data: {
        usuario: data.usuario.toLowerCase(),
        password: hashedPassword,
        nombre: data.nombre,
        correo: data.correo,
        telefono: data.telefono,
        rol_codi: data.rol_codi,
        estado: 1,
      },
      include: {
        rol: true,
      },
    });

    return {
      usu_codi: newUser.usu_codi,
      usuario: newUser.usuario,
      nombre: newUser.nombre,
      correo: newUser.correo,
      telefono: newUser.telefono,
      rol: newUser.rol.rol_nombre,
      estado: newUser.estado,
    };
  }

  /**
   * Obtiene información del usuario autenticado
   */
  async getProfile(usu_codi: number): Promise<any> {
    const user = await prisma.usuario.findUnique({
      where: { usu_codi },
      include: {
        rol: true,
        permisos: true,
      },
    });

    if (!user) {
      throw new AppError('Usuario no encontrado', 404);
    }

    return {
      usu_codi: user.usu_codi,
      usuario: user.usuario,
      nombre: user.nombre,
      correo: user.correo,
      telefono: user.telefono,
      rol: {
        codi: user.rol_codi,
        nombre: user.rol.rol_nombre,
        descripcion: user.rol.rol_descripcion,
      },
      permisos: user.permisos.map(p => ({
        opcion: p.per_opcion,
        leer: p.per_leer === 1,
        crear: p.per_crear === 1,
        modificar: p.per_modificar === 1,
        borrar: p.per_borrar === 1,
        imprimir: p.per_imprimir === 1,
      })),
      estado: user.estado,
    };
  }
}

export const authService = new AuthService();
export default authService;
