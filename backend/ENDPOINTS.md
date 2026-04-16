# API Endpoints - Serviteca/Taller Mecánico

## Base URL
```
http://localhost:3000/api
```

## Autenticación
Todas las rutas protegidas requieren un token JWT en el header:
```
Authorization: Bearer <tu_token_jwt>
```

---

## 📋 Endpoints Disponibles

### 🔐 Autenticación (`/api/auth`)

| Método | Endpoint | Descripción | Auth | Permiso |
|--------|----------|-------------|------|---------|
| POST | `/auth/login` | Iniciar sesión | ❌ No requiere | - |
| GET | `/auth/profile` | Obtener perfil del usuario | ✅ Sí | - |
| PUT | `/auth/change-password` | Cambiar contraseña | ✅ Sí | - |

#### Login
```bash
POST /api/auth/login
Content-Type: application/json

{
  "usuario": "admin",
  "password": "admin123"
}
```

**Respuesta:**
```json
{
  "success": true,
  "message": "Inicio de sesión exitoso",
  "data": {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "usuario": {
      "usu_codi": 1,
      "usuario": "admin",
      "nombre": "Administrador Principal",
      "correo": "admin@serviteca.com",
      "rol_codi": 1,
      "rol_nombre": "Administrador"
    }
  }
}
```

#### Obtener Perfil
```bash
GET /api/auth/profile
Authorization: Bearer <token>
```

#### Cambiar Contraseña
```bash
PUT /api/auth/change-password
Authorization: Bearer <token>
Content-Type: application/json

{
  "currentPassword": "admin123",
  "newPassword": "nuevaPassword123"
}
```

---

### 👥 Clientes (`/api/clientes`)
**Opción de menú: 1**

| Método | Endpoint | Descripción | Auth | Permiso |
|--------|----------|-------------|------|---------|
| GET | `/clientes` | Listar clientes (paginación) | ✅ Sí | leer |
| GET | `/clientes/stats` | Estadísticas de clientes | ✅ Sí | leer |
| GET | `/clientes/:id` | Obtener cliente por ID | ✅ Sí | leer |
| POST | `/clientes` | Crear nuevo cliente | ✅ Sí | crear |
| PUT | `/clientes/:id` | Actualizar cliente | ✅ Sí | modificar |
| DELETE | `/clientes/:id` | Eliminar cliente | ✅ Sí | borrar |

#### Listar Clientes
```bash
GET /api/clientes?page=1&limit=10&search=Juan
Authorization: Bearer <token>
```

**Query Params:**
- `page`: Número de página (default: 1)
- `limit`: Cantidad de registros por página (default: 10)
- `search`: Término de búsqueda (opcional)

#### Crear Cliente
```bash
POST /api/clientes
Authorization: Bearer <token>
Content-Type: application/json

{
  "cod_tipdo": 1,
  "cli_numdoc": "1234567890",
  "cli_nombre": "Nuevo Cliente",
  "cli_direccion": "Calle 123 #45-67",
  "cli_barrio": "Centro",
  "cli_tel_movil": "3001234567",
  "cli_tel_fijo": "6012345678",
  "cli_correoe": "cliente@email.com",
  "ciu_codi": 1,
  "cli_observacion": "Cliente nuevo"
}
```

#### Actualizar Cliente
```bash
PUT /api/clientes/1
Authorization: Bearer <token>
Content-Type: application/json

{
  "cli_nombre": "Cliente Actualizado",
  "cli_tel_movil": "3109876543"
}
```

---

### 📝 Órdenes de Trabajo (`/api/ordenes`)
**Opción de menú: 3**

| Método | Endpoint | Descripción | Auth | Permiso |
|--------|----------|-------------|------|---------|
| GET | `/ordenes` | Listar órdenes (paginación) | ✅ Sí | leer |
| GET | `/ordenes/stats` | Estadísticas de órdenes | ✅ Sí | leer |
| GET | `/ordenes/:id` | Obtener orden por ID | ✅ Sí | leer |
| POST | `/ordenes` | Crear nueva orden | ✅ Sí | crear |
| PUT | `/ordenes/:id` | Actualizar orden | ✅ Sí | modificar |
| POST | `/ordenes/:id/finalizar` | Finalizar orden | ✅ Sí | modificar |
| POST | `/ordenes/:id/anular` | Anular orden | ✅ Sí | borrar |

#### Listar Órdenes
```bash
GET /api/ordenes?page=1&limit=10&estado=0
Authorization: Bearer <token>
```

**Query Params:**
- `page`: Número de página (default: 1)
- `limit`: Cantidad de registros por página (default: 10)
- `estado`: Estado de la orden (0=En Proceso, 1=Finalizado, 2=Anulado)
- `cliente`: ID del cliente (opcional)
- `fecha_desde`: Fecha inicial (opcional)
- `fecha_hasta`: Fecha final (opcional)

#### Crear Orden
```bash
POST /api/ordenes
Authorization: Bearer <token>
Content-Type: application/json

{
  "otm_clase_doc": 0,
  "cli_codi": 1,
  "vxc_codi": 1,
  "otm_kilometraje": "45000",
  "otm_observacion": "Servicio de mantenimiento básico",
  "detalles": [
    {
      "pr_codi": 11,
      "otd_cantidad": 1,
      "otd_precio": 150000,
      "emp_codi": 1,
      "otd_observacion": "Mano de obra"
    },
    {
      "pr_codi": 1,
      "otd_cantidad": 4,
      "otd_precio": 85000,
      "bod_codi": 1,
      "otd_observacion": "Aceite de motor"
    }
  ]
}
```

#### Finalizar Orden
```bash
POST /api/ordenes/1/finalizar
Authorization: Bearer <token>
```

#### Anular Orden
```bash
POST /api/ordenes/1/anular
Authorization: Bearer <token>
```

---

### 🔍 Health Check

| Método | Endpoint | Descripción | Auth |
|--------|----------|-------------|------|
| GET | `/health` | Verificar estado de la API | ❌ No requiere |

```bash
GET /api/health
```

**Respuesta:**
```json
{
  "success": true,
  "message": "API funcionando correctamente",
  "timestamp": "2025-01-15T10:30:00.000Z"
}
```

---

## 📊 Códigos de Respuesta

| Código | Descripción |
|--------|-------------|
| 200 | Éxito - Operación completada |
| 201 | Creado - Recurso creado exitosamente |
| 400 | Bad Request - Datos inválidos |
| 401 | Unauthorized - Token inválido o expirado |
| 403 | Forbidden - Sin permisos suficientes |
| 404 | Not Found - Recurso no encontrado |
| 409 | Conflict - El recurso ya existe |
| 500 | Internal Server Error - Error del servidor |

---

## 🔑 Sistema de Permisos

La API utiliza un sistema de permisos basado en roles:

- **Opción 1**: Clientes
- **Opción 3**: Órdenes de Trabajo

Cada permiso tiene 4 niveles:
- `leer`: Puede consultar información
- `crear`: Puede crear nuevos registros
- `modificar`: Puede editar registros existentes
- `borrar`: Puede eliminar/anular registros

Los permisos se configuran por rol y pueden ser sobrescritos a nivel de usuario individual.

---

## 💡 Ejemplo de Flujo Completo

1. **Login** para obtener token:
```bash
curl -X POST http://localhost:3000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"usuario":"admin","password":"admin123"}'
```

2. **Guardar el token** de la respuesta

3. **Listar clientes** con el token:
```bash
curl -X GET http://localhost:3000/api/clientes \
  -H "Authorization: Bearer <tu_token>"
```

4. **Crear una orden**:
```bash
curl -X POST http://localhost:3000/api/ordenes \
  -H "Authorization: Bearer <tu_token>" \
  -H "Content-Type: application/json" \
  -d '{...}'
```
