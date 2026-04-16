# Instrucciones para Cargar Datos de Prueba

## 📋 Archivos Generados

Se han creado los siguientes archivos:

1. **`prisma/seed_data.sql`** - Script SQL con datos de prueba
2. **`ENDPOINTS.md`** - Documentación completa de todos los endpoints
3. **`Serviteca_API.postman_collection.json`** - Colección para importar en Postman

---

## 🗄️ Opción 1: Cargar Datos desde DBeaver (Recomendado)

### Pasos:

1. **Abrir DBeaver** y conectarte a tu base de datos MySQL

2. **Ejecutar el script SQL**:
   - Abrir el archivo `backend/prisma/seed_data.sql`
   - Copiar todo el contenido
   - Pegar en el editor SQL de DBeaver
   - Ejecutar (Ctrl+Enter o F9)

3. **Verificar datos cargados**:
   ```sql
   SELECT * FROM roles;
   SELECT * FROM clientes;
   SELECT * FROM orden_trabajo;
   ```

---

## 🔐 Crear Usuario Administrador con Contraseña Válida

El script SQL incluye un usuario admin, pero la contraseña está encriptada. Para crear un usuario funcional:

### Opción A: Usando la API (Recomendado)

1. **Inicia la aplicación**:
   ```bash
   cd backend
   npm run dev
   ```

2. **Crear usuario administrador** desde Postman o curl:
   ```bash
   # Primero necesitas un usuario existente para autenticarte
   # Luego puedes crear nuevos usuarios desde la API si existe el endpoint
   ```

### Opción B: Generar Hash Manualmente

1. **Generar hash bcrypt** para `admin123`:
   ```javascript
   // En Node.js
   const bcrypt = require('bcryptjs');
   const hash = bcrypt.hashSync('admin123', 10);
   console.log(hash);
   ```

2. **Actualizar el usuario en la base de datos**:
   ```sql
   UPDATE usuarios 
   SET password = '$2a$10$XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' 
   WHERE usuario = 'admin';
   ```

---

## 📤 Opción 2: Importar Colección en Postman

### Pasos:

1. **Abrir Postman**

2. **Importar colección**:
   - Click en "Import" (esquina superior izquierda)
   - Seleccionar "File"
   - Buscar y seleccionar `backend/Serviteca_API.postman_collection.json`
   - Click en "Import"

3. **Configurar variables**:
   - La colección ya incluye variables configuradas:
     - `base_url`: `http://localhost:3000/api`
     - `jwt_token`: Se llena automáticamente al hacer login

4. **Probar la API**:
   - Ir a la carpeta "🔐 Autenticación"
   - Ejecutar request "Login"
   - El token se guarda automáticamente
   - Ahora puedes ejecutar cualquier request protegido

---

## 🧪 Datos de Prueba Incluidos

### Roles (5):
- Administrador
- Supervisor
- Mecánico
- Recepcionista
- Almacenista

### Clientes (5):
- Juan Pérez Rodríguez
- María García López
- Carlos Martínez Sánchez
- Ana Luisa Fernández
- Roberto Gómez Bolaños

### Vehículos (6):
- Toyota Corolla 2020 - ABC123
- Chevrolet Spark 2019 - XYZ789
- Mazda 3 2021 - DEF456
- Renault Logan 2018 - GHI789
- Nissan Kicks 2022 - JKL012
- Hyundai Tucson 2020 - MNO345

### Productos (15):
- Aceites de motor
- Filtros
- Pastillas de freno
- Discos de freno
- Amortiguadores
- Correa de distribución
- Bujías
- Batería
- Servicios de mano de obra
- Líquidos

### Órdenes de Trabajo (5):
- Orden 1001: Servicio básico (Finalizada)
- Orden 1002: Revisión frenos (En proceso)
- Orden 1003: Correa distribución (En proceso)
- Orden 1004: Primer servicio (En proceso)
- Orden 1005: Amortiguadores (En proceso)

### Empleados (5):
- Luis Fernando Morales (Mecánico Senior)
- Andrés Felipe Castro (Mecánico Junior)
- Diego Alejandro Ruiz (Supervisor)
- Patricia Hernández Díaz (Recepcionista)
- Miguel Ángel Vargas (Almacenista)

### Proveedores (4):
- AUTOPARTES COLOMBIA SAS
- LUBRICANTES DEL NORTE LTDA
- FRENIPOS SAS
- Jorge Alberto Torres

---

## 🚀 Flujo de Prueba Recomendado

1. **Cargar datos SQL** en DBeaver
2. **Generar hash bcrypt** para la contraseña del admin
3. **Actualizar password** en la tabla usuarios
4. **Iniciar servidor**: `npm run dev`
5. **Importar colección** en Postman
6. **Ejecutar Login** en Postman
7. **Probar endpoints** de clientes y órdenes

---

## ⚠️ Notas Importantes

- Los IDs en los requests de ejemplo asumen que los datos se cargaron correctamente
- Si hay errores de llaves foráneas, verifica el orden de inserción
- Las órdenes de trabajo requieren que existan clientes, vehículos y productos
- El stock debe existir antes de crear órdenes que consuman productos

---

## 📞 Endpoints Principales para Probar

| Endpoint | Método | Descripción |
|----------|--------|-------------|
| `/api/auth/login` | POST | Obtener token JWT |
| `/api/clientes` | GET | Listar clientes |
| `/api/clientes` | POST | Crear cliente |
| `/api/ordenes` | GET | Listar órdenes |
| `/api/ordenes` | POST | Crear orden |
| `/api/ordenes/stats` | GET | Ver estadísticas |

¡Listo para probar! 🎉
