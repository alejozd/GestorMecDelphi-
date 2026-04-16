import express from 'express';
import cors from 'cors';
import { configApp } from './config/index.js';
import { connectDatabase, disconnectDatabase } from './config/database.js';
import routes from './routes/index.js';
import { errorHandler, notFoundHandler } from './middleware/index.js';

/**
 * Aplicación principal del backend - Serviteca/Taller Mecánico
 */
async function main() {
  const app = express();

  // ============================================
  // MIDDLEWARES GLOBALES
  // ============================================

  // CORS
  app.use(cors({
    origin: configApp.allowedOrigins,
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
  }));

  // JSON Parser
  app.use(express.json({ limit: '10mb' }));

  // URL Encoded Parser
  app.use(express.urlencoded({ extended: true, limit: '10mb' }));

  // ============================================
  // RUTAS
  // ============================================

  // API Routes
  app.use('/api', routes);

  // Ruta raíz
  app.get('/', (req, res) => {
    res.json({
      success: true,
      message: 'Bienvenido a la API de Serviteca/Taller Mecánico',
      version: '1.0.0',
      endpoints: {
        health: '/api/health',
        auth: '/api/auth',
        clientes: '/api/clientes',
        ordenes: '/api/ordenes',
      },
    });
  });

  // ============================================
  // MANEJO DE ERRORES
  // ============================================

  // 404 Handler
  app.use(notFoundHandler);

  // Global Error Handler
  app.use(errorHandler);

  // ============================================
  // INICIAR SERVIDOR
  // ============================================

  try {
    // Conectar a la base de datos
    await connectDatabase();

    // Iniciar servidor
    app.listen(configApp.port, () => {
      console.log('');
      console.log('=============================================');
      console.log(`🚀 Servidor corriendo en puerto ${configApp.port}`);
      console.log(`📦 Modo: ${configApp.nodeEnv}`);
      console.log(`🔗 URL: http://localhost:${configApp.port}`);
      console.log(`📚 API: http://localhost:${configApp.port}/api`);
      console.log('=============================================');
      console.log('');
    });

    // Manejo de cierre graceful
    process.on('SIGINT', async () => {
      console.log('\n⏹️  Deteniendo servidor...');
      await disconnectDatabase();
      process.exit(0);
    });

    process.on('SIGTERM', async () => {
      console.log('\n⏹️  Deteniendo servidor...');
      await disconnectDatabase();
      process.exit(0);
    });

  } catch (error) {
    console.error('❌ Error iniciando la aplicación:', error);
    process.exit(1);
  }
}

// Ejecutar aplicación
main();
