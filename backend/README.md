# Backend - Serviteca/Taller Mecánico

API RESTful para gestión de serviteca/taller mecánico construida con **Node.js 18**, **TypeScript**, **Express** y **Prisma ORM** (MySQL).

## 📋 Características Principales

- ✅ **Autenticación JWT** con roles y permisos
- ✅ **Gestión de Roles/Perfiles** con permisos CRUD por opción
- ✅ **Base de datos MySQL** con schema completo en español
- ✅ **TypeScript** con tipado estricto
- ✅ **Prisma ORM** para acceso a datos tipo-safe
- ✅ **Arquitectura MVC** (Modelo-Vista-Controlador)
- ✅ **Manejo de errores** centralizado
- ✅ **Validaciones** con express-validator

## 🗂️ Estructura del Proyecto

```
backend/
├── prisma/
│   ├── schema.prisma          # Schema de base de datos
│   └── seed.ts                # Seed inicial (opcional)
├── src/
│   ├── config/                # Configuración de la app
│   │   ├── index.ts           # Variables de entorno
│   │   └── database.ts        # Conexión Prisma
│   ├── controllers/           # Controladores HTTP
│   │   ├── auth.controller.ts
│   │   ├── clientes.controller.ts
│   │   └── ordenes.controller.ts
│   ├── middleware/            # Middlewares personalizados
│   │   ├── auth.middleware.ts # Autenticación y permisos
│   │   ├── error.middleware.ts
│   │   └── validate.middleware.ts
│   ├── routes/                # Definición de rutas
│   │   ├── auth.routes.ts
│   │   ├── clientes.routes.ts
│   │   └── ordenes.routes.ts
│   ├── services/              # Lógica de negocio
│   │   ├── auth.service.ts
│   │   ├── clientes.service.ts
│   │   └── ordenes.service.ts
│   ├── types/                 # Tipos TypeScript
│   │   └── index.ts
│   ├── utils/                 # Utilidades helpers
│   │   └── helpers.ts
│   └── index.ts               # Punto de entrada
├── .env.example               # Ejemplo de variables de entorno
├── package.json
├── tsconfig.json
└── README.md
```

## 🚀 Instalación

### Requisitos Previos

- Node.js 18+
- MySQL 8.0+
- npm o yarn

### Pasos de Instalación

1. **Clonar el repositorio y navegar al backend:**
```bash
cd backend
```

2. **Instalar dependencias:**
```bash
npm install
```

3. **Configurar variables de entorno:**
```bash
cp .env.example .env
# Editar .env con tus credenciales de MySQL
```

4. **Generar cliente de Prisma:**
```bash
npm run prisma:generate
```

5. **Ejecutar migraciones (crear tablas en MySQL):**
```bash
npm run prisma:migrate
```

6. **Iniciar en modo desarrollo:**
```bash
npm run dev
```

## 📡 Endpoints Principales

### Autenticación (`/api/auth`)

| Método | Endpoint | Descripción | Auth |
|--------|----------|-------------|------|
| POST | `/login` | Iniciar sesión | ❌ |
| GET | `/profile` | Obtener perfil usuario | ✅ |
| PUT | `/change-password` | Cambiar contraseña | ✅ |

### Clientes (`/api/clientes`)

| Método | Endpoint | Descripción | Permiso |
|--------|----------|-------------|---------|
| GET | `/` | Listar clientes (paginado) | Leer |
| GET | `/:id` | Obtener cliente por ID | Leer |
| GET | `/stats` | Estadísticas de clientes | Leer |
| POST | `/` | Crear nuevo cliente | Crear |
| PUT | `/:id` | Actualizar cliente | Modificar |
| DELETE | `/:id` | Eliminar cliente | Borrar |

### Órdenes de Trabajo (`/api/ordenes`)

| Método | Endpoint | Descripción | Permiso |
|--------|----------|-------------|---------|
| GET | `/` | Listar órdenes (paginado) | Leer |
| GET | `/:id` | Obtener orden por ID | Leer |
| GET | `/stats` | Estadísticas de órdenes | Leer |
| POST | `/` | Crear nueva orden | Crear |
| PUT | `/:id` | Actualizar orden | Modificar |
| POST | `/:id/finalizar` | Finalizar orden | Modificar |
| POST | `/:id/anular` | Anular orden | Borrar |

## 🔐 Sistema de Permisos

El sistema maneja permisos por **rol** y por **usuario individual**:

### Tablas de Permisos

- **`roles`**: Define los perfiles del sistema (Admin, Supervisor, Mecánico, etc.)
- **`permisos_rol`**: Permisos CRUD por rol y opción de menú
- **`permisos`**: Permisos individuales que sobrescriben los del rol

### Opciones de Menú (Ejemplo)

| ID | Opción |
|----|--------|
| 1 | Clientes |
| 2 | Vehículos |
| 3 | Órdenes de Trabajo |
| 4 | Inventario |
| 5 | Proveedores |
| 6 | Empleados |
| 7 | Reportes |
| 8 | Configuración |

### Tipos de Permiso

- `per_leer`: Consultar registros
- `per_crear`: Crear nuevos registros
- `per_modificar`: Editar registros existentes
- `per_borrar`: Eliminar registros
- `per_imprimir`: Imprimir documentos

## 📊 Modelo de Datos Principal

### Tablas Maestras

- `usuarios`, `roles`, `permisos`, `permisos_rol`
- `clientes`, `vhxcliente` (vehículos)
- `productos`, `bodegas`, `stock_bodega`
- `proveedores`, `empleados`
- `tipos_documento`, `ciudades`, `cargos`

### Tablas Transaccionales

- `orden_trabajo`, `orden_detalle`
- `entradas`, `entradas_detalle`
- `movimientos_inventario`

## 🛠️ Scripts Disponibles

```bash
npm run dev              # Desarrollo con hot-reload
npm run build            # Compilar TypeScript a JavaScript
npm run start            # Ejecutar en producción
npm run prisma:generate  # Generar cliente Prisma
npm run prisma:migrate   # Ejecutar migraciones
npm run prisma:seed      # Poblar datos iniciales
npm run prisma:studio    # Abrir Prisma Studio (GUI)
```

## 🔧 Variables de Entorno

Ver archivo `.env.example`:

```env
PORT=3000
DATABASE_URL="mysql://usuario:password@localhost:3306/serviteca"
JWT_SECRET=tu_secreto_muy_seguro
JWT_EXPIRES_IN=8h
NODE_ENV=development
ALLOWED_ORIGINS=http://localhost:5173
BCRYPT_SALT_ROUNDS=10
```

## 📝 Notas Importantes

1. **Campos en español**: Todas las tablas y campos están nombrados en español según requerimiento
2. **Soft Delete**: Algunas entidades usan estado en lugar de eliminación física
3. **Transacciones**: Las operaciones críticas usan transacciones de base de datos
4. **Stock**: El inventario se maneja por bodegas múltiples
5. **IVA**: Cálculo automático de IVA configurable por producto

## 📄 Licencia

MIT
