import { config } from 'dotenv';

config();

export const configApp = {
  // Servidor
  port: process.env.PORT || 3000,
  nodeEnv: process.env.NODE_ENV || 'development',
  
  // Base de datos
  databaseUrl: process.env.DATABASE_URL || '',
  
  // JWT
  jwtSecret: process.env.JWT_SECRET || 'default_secret_change_in_production',
  jwtExpiresIn: process.env.JWT_EXPIRES_IN || '8h',
  
  // CORS
  allowedOrigins: process.env.ALLOWED_ORIGINS?.split(',') || ['http://localhost:5173'],
  
  // Bcrypt
  bcryptSaltRounds: parseInt(process.env.BCRYPT_SALT_ROUNDS || '10', 10),
};

// Validación de variables críticas
if (!configApp.databaseUrl) {
  console.error('❌ ERROR: DATABASE_URL no está definida en las variables de entorno');
  process.exit(1);
}

if (configApp.nodeEnv === 'production' && configApp.jwtSecret === 'default_secret_change_in_production') {
  console.warn('⚠️  WARNING: JWT_SECRET debe ser cambiado en producción');
}
