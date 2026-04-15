# Frontend - Serviteca Pro

SPA (Single Page Application) para la gestión de talleres mecánicos, construida con React 18 + Vite + TypeScript.

## 🚀 Tecnologías

- **React 18** - Biblioteca UI
- **Vite** - Build tool y dev server
- **TypeScript** - Tipado estático
- **React Router DOM v6** - Enrutamiento
- **Axios** - Cliente HTTP
- **PrimeReact** - Componentes UI
- **PrimeFlex** - Utilidades CSS
- **React Hook Form** - Manejo de formularios
- **Zod** - Validación de esquemas
- **Recharts** - Gráficas (futuro)

## 📁 Estructura del Proyecto

```
frontend/
├── src/
│   ├── components/        # Componentes reutilizables
│   │   ├── Layout.tsx     # Layout principal con menú
│   │   └── ProtectedRoute.tsx  # Rutas protegidas
│   ├── context/           # Contextos de React
│   │   └── AuthContext.tsx    # Autenticación global
│   ├── hooks/             # Custom hooks
│   │   └── usePagination.ts   # Paginación y búsqueda
│   ├── pages/             # Vistas/páginas
│   │   ├── auth/          # Login, recuperación
│   │   ├── clientes/      # CRUD clientes
│   │   ├── inventario/    # CRUD productos
│   │   ├── ordenes/       # Órdenes de trabajo
│   │   ├── documentos/    # Facturas y pedidos
│   │   ├── historial/     # Historial servicios
│   │   ├── stock/         # Consulta y ajustes
│   │   └── Dashboard.tsx  # Página principal
│   ├── services/          # Servicios API
│   │   ├── api.ts         # Axios instance
│   │   ├── auth.service.ts
│   │   ├── cliente.service.ts
│   │   ├── vehiculo.service.ts
│   │   ├── producto.service.ts
│   │   ├── orden.service.ts
│   │   ├── historial.service.ts
│   │   └── stock.service.ts
│   ├── utils/             # Utilidades
│   │   └── validators.ts  # Zod schemas + formatters
│   ├── App.tsx            # Configuración de rutas
│   ├── main.tsx           # Entry point
│   └── index.css          # Estilos globales
├── index.html
├── package.json
├── tsconfig.json
├── vite.config.ts
└── .env.example
```

## 🛠️ Instalación

### 1. Clonar e instalar dependencias

```bash
cd frontend
npm install
```

### 2. Configurar variables de entorno

```bash
cp .env.example .env
```

Editar `.env` con los valores apropiados:

```env
VITE_API_URL=http://localhost:4000/api
VITE_TOKEN_EXPIRATION=3600000
VITE_APP_MODE=development
VITE_APP_NAME=Serviteca Pro
VITE_APP_VERSION=1.0.0
```

### 3. Ejecutar en modo desarrollo

```bash
npm run dev
```

La aplicación estará disponible en `http://localhost:3000`

### 4. Build para producción

```bash
npm run build
```

Los archivos compilados estarán en la carpeta `dist/`

### 5. Preview del build

```bash
npm run preview
```

## 📝 Scripts Disponibles

| Comando | Descripción |
|---------|-------------|
| `npm run dev` | Inicia servidor de desarrollo |
| `npm run build` | Compila para producción |
| `npm run preview` | Vista previa del build |
| `npm run lint` | Ejecuta ESLint |

## 🔑 Características Implementadas

### Autenticación
- Login con JWT
- Persistencia de sesión en localStorage
- Rutas protegidas con `ProtectedRoute`
- Contexto global de autenticación (`AuthContext`)

### Servicios API
- Cliente Axios configurado con interceptors
- Token automático en requests
- Manejo de errores 401 (redirecciona a login)
- Servicios tipados para cada entidad:
  - `auth.service.ts` - Autenticación
  - `cliente.service.ts` - Clientes y vehículos
  - `producto.service.ts` - Inventario
  - `orden.service.ts` - Órdenes de trabajo
  - `historial.service.ts` - Historial por cliente/placa
  - `stock.service.ts` - Stock y movimientos

### Validaciones
- Zod schemas para todos los formularios
- Integración con React Hook Form
- Mensajes de error personalizados

### Componentes PrimeReact
- Menú principal responsive
- Tablas con paginación
- Formularios con validación visual
- Diálogos modales
- Notificaciones toast (por implementar)

## 🎨 Páginas Implementadas

| Página | Ruta | Estado |
|--------|------|--------|
| Login | `/login` | ✅ Completa |
| Dashboard | `/` | ✅ Completa (con datos mock) |
| Listado Clientes | `/clientes` | 🔲 Placeholder |
| Nuevo Cliente | `/clientes/nuevo` | 🔲 Placeholder |
| Vehículos | `/vehiculos` | 🔲 Placeholder |
| Productos | `/productos` | 🔲 Placeholder |
| Nueva Orden | `/ordenes/nueva` | 🔲 Placeholder |
| Consultar Órdenes | `/ordenes` | 🔲 Placeholder |
| Facturas | `/documentos/facturas` | 🔲 Placeholder |
| Pedidos | `/documentos/pedidos` | 🔲 Placeholder |
| Historial | `/historial` | 🔲 Placeholder |
| Stock | `/stock` | 🔲 Placeholder |

## 🔌 Integración con Backend

El frontend espera un backend en `http://localhost:4000/api` con los siguientes endpoints:

### Autenticación
- `POST /auth/login` - Iniciar sesión
- `PUT /auth/change-password` - Cambiar contraseña

### Clientes
- `GET /clientes` - Listar con paginación
- `GET /clientes/:id` - Obtener por ID
- `POST /clientes` - Crear
- `PUT /clientes/:id` - Actualizar
- `DELETE /clientes/:id` - Eliminar

### Vehículos
- `GET /vehiculos` - Listar
- `GET /vehiculos/placa/:placa` - Buscar por placa
- `POST /vehiculos` - Crear
- `PUT /vehiculos/:id` - Actualizar

### Productos
- `GET /productos` - Listar
- `GET /productos/cod-barras/:codBarras` - Buscar por código
- `POST /productos` - Crear
- `PUT /productos/:id` - Actualizar

### Órdenes
- `GET /ordenes` - Listar con filtros
- `POST /ordenes` - Crear orden
- `POST /ordenes/:id/items` - Agregar ítem
- `POST /ordenes/:id/finalizar` - Finalizar (Factura/Pedido)

### Historial
- `GET /historial/cliente?cli_codi=X` - Por cliente
- `GET /historial/placa?placa=ABC123` - Por placa

### Stock
- `GET /stock` - Consulta general
- `GET /stock/movimientos` - Movimientos

## 📋 Próximos Pasos

1. **Implementar páginas pendientes** siguiendo el Manual.docx
2. **Conectar con backend real** (actualmente usa datos mock)
3. **Agregar notificaciones Toast** para feedback de usuario
4. **Implementar gráficas** con Recharts en reportes
5. **Agregar exportación a PDF/Excel**
6. **Mejorar manejo de permisos** por rol/opción
7. **Tests unitarios** con Vitest + React Testing Library

## ⚠️ Notas Importantes

- Las páginas actualmente son placeholders - implementar según campos del Manual.docx
- El Dashboard usa datos simulados - conectar con endpoints reales
- Los permisos están simplificados - implementar lógica completa desde backend
- Revisar documentación legacy para validaciones específicas de cada ventana

---

**© 2024 Serviteca Pro** - Sistema de Gestión de Taller Mecánico
