-- ============================================
-- DATOS DE PRUEBA - SERVITECA/TALLER MECÁNICO
-- ============================================
-- Ejecutar en orden: Tablas maestras primero, luego datos de prueba
-- ============================================

-- ============================================
-- 1. TABLAS MAESTRAS DE SEGURIDAD
-- ============================================

-- Roles del sistema
INSERT INTO roles (rol_nombre, rol_descripcion, created_at, updated_at) VALUES
('Administrador', 'Acceso completo al sistema', NOW(), NOW()),
('Supervisor', 'Supervisa operaciones y reporta', NOW(), NOW()),
('Mecánico', 'Realiza mantenimiento y reparaciones', NOW(), NOW()),
('Recepcionista', 'Recibe clientes y crea órdenes', NOW(), NOW()),
('Almacenista', 'Gestiona inventario y bodega', NOW(), NOW());

-- Usuario administrador por defecto
-- Password: admin123 (hash bcrypt generado)
INSERT INTO usuarios (usuario, password, nombre, correo, telefono, estado, rol_codi, created_at, updated_at) VALUES
('admin', '$2a$10$rQZ9vXJxK8zK8zK8zK8zKuQZ9vXJxK8zK8zK8zK8zK8zK8zK8zK8z', 'Administrador Principal', 'admin@serviteca.com', '3001234567', 1, 1, NOW(), NOW());

-- Nota: El password real se debe generar con bcrypt. 
-- Para pruebas, usar el servicio de auth para crear usuarios con contraseña válida.

-- ============================================
-- 2. TABLAS MAESTRAS DE PARAMETRIZACIÓN
-- ============================================

-- Tipos de documento
INSERT INTO tipos_documento (td_abreviado, td_nombre) VALUES
('CC', 'Cédula de Ciudadanía'),
('TI', 'Tarjeta de Identidad'),
('CE', 'Cédula de Extranjería'),
('NIT', 'NIT'),
('RC', 'Registro Civil'),
('PAS', 'Pasaporte');

-- Ciudades (ejemplo Colombia)
INSERT INTO ciudades (ciu_nombre, dep_codigo) VALUES
('Bogotá', 11),
('Medellín', 5),
('Cali', 76),
('Barranquilla', 8),
('Cartagena', 13),
('Bucaramanga', 68),
('Pereira', 66),
('Manizales', 17);

-- Cargos de empleados
INSERT INTO cargos (cg_nombre) VALUES
('Gerente'),
('Supervisor de Taller'),
('Mecánico Senior'),
('Mecánico Junior'),
('Auxiliar de Bodega'),
('Recepcionista'),
('Asistente Administrativo');

-- ============================================
-- 3. TABLAS MAESTRAS - CLIENTES Y VEHÍCULOS
-- ============================================

-- Clientes
INSERT INTO clientes (cod_tipdo, cli_numdoc, cli_nombre, cli_direccion, cli_barrio, cli_tel_movil, cli_tel_fijo, cli_correoe, ciu_codi, cli_observacion, created_at, updated_at) VALUES
(1, '1098765432', 'Juan Pérez Rodríguez', 'Calle 123 #45-67', 'Centro', '3001112233', '6012345678', 'juan.perez@email.com', 1, 'Cliente frecuente', NOW(), NOW()),
(1, '1087654321', 'María García López', 'Carrera 45 #78-90', 'La Esperanza', '3102223344', '6013456789', 'maria.garcia@email.com', 2, NULL, NOW(), NOW()),
(1, '1076543210', 'Carlos Martínez Sánchez', 'Av. Siempre Viva #123', 'Los Pinos', '3203334455', NULL, 'carlos.martinez@email.com', 1, 'Prefiere contacto por WhatsApp', NOW(), NOW()),
(3, '987654321', 'Ana Luisa Fernández', 'Calle 67 #89-12', 'El Prado', '3154445566', '6014567890', 'ana.fernandez@email.com', 3, NULL, NOW(), NOW()),
(1, '1065432109', 'Roberto Gómez Bolaños', 'Transversal 34 #56-78', 'San José', '3115556677', NULL, 'roberto.gomez@email.com', 4, 'Vehículo de alta gama', NOW(), NOW());

-- Marcas de vehículos
INSERT INTO marcas_vehiculo (mr_nombre) VALUES
('Toyota'),
('Chevrolet'),
('Mazda'),
('Renault'),
('Nissan'),
('Hyundai'),
('Kia'),
('Ford'),
('Volkswagen'),
('BMW');

-- Líneas de vehículos por marca
INSERT INTO lineas_vehiculo (mr_codi, li_nombre) VALUES
(1, 'Corolla'),
(1, 'Hilux'),
(1, 'Yaris'),
(2, 'Spark'),
(2, 'Aveo'),
(2, 'Captiva'),
(3, 'Mazda 3'),
(3, 'CX-5'),
(3, 'Mazda 2'),
(4, 'Logan'),
(4, 'Duster'),
(4, 'Sandero'),
(5, 'Sentra'),
(5, 'Kicks'),
(6, 'Accent'),
(6, 'Tucson'),
(7, 'Rio'),
(7, 'Sportage'),
(8, 'Fiesta'),
(9, 'Gol'),
(10, 'Serie 3');

-- Vehículos de clientes
INSERT INTO vhxcliente (cli_codi, placa, mr_codi, li_codi, color, modelo, motor, chasis, kilometro_inicial, kilometro_actual, created_at, updated_at) VALUES
(1, 'ABC123', 1, 1, 'Blanco', 2020, '1NZ-FE-123456', 'JTDBR32E50J123456', 0.00, 45000.00, NOW(), NOW()),
(1, 'XYZ789', 2, 4, 'Rojo', 2019, 'B12D1-789012', '8ACMH4260KB123456', 0.00, 62000.00, NOW(), NOW()),
(2, 'DEF456', 3, 7, 'Gris', 2021, 'PE-VPS-456789', 'JMZBK14F681123456', 0.00, 28000.00, NOW(), NOW()),
(3, 'GHI789', 4, 10, 'Azul', 2018, 'K4M-789012', 'VF1JS000H5J123456', 0.00, 75000.00, NOW(), NOW()),
(4, 'JKL012', 5, 13, 'Negro', 2022, 'HR12-012345', '3N1AB7AP0NY123456', 0.00, 15000.00, NOW(), NOW()),
(5, 'MNO345', 6, 16, 'Plateado', 2020, 'G4FG-345678', 'KMHL14JA1LA123456', 0.00, 38000.00, NOW(), NOW());

-- ============================================
-- 4. TABLAS MAESTRAS - INVENTARIO
-- ============================================

-- Grupos de inventario
INSERT INTO grupos_inv (gru_nombre, gru_observacion) VALUES
('Aceites y Lubricantes', 'Productos para motor'),
('Filtros', 'Filtros de aire, aceite y combustible'),
('Frenos', 'Pastillas, discos y líquido de frenos'),
('Suspensión', 'Amortiguadores, bujes y rótulas'),
('Correas', 'Correas de distribución y accesorios'),
('Bujías', 'Bujías convencionales e Iridium'),
('Baterías', 'Baterías de 12V'),
('Servicios', 'Servicios de mano de obra'),
('Repuestos Generales', 'Varios repuestos'),
('Líquidos', 'Líquido de frenos, refrigerante, etc.');

-- Bodegas
INSERT INTO bodegas (bod_nombre, bod_ubicacion, bod_observacion) VALUES
('Bodega Principal', 'Planta Baja - Zona A', 'Bodega principal del taller'),
('Bodega Repuestos Rápidos', 'Planta Alta - Zona B', 'Para despachos rápidos'),
('Bodega Aceites', 'Planta Baja - Zona C', 'Área especializada para líquidos');

-- Productos
INSERT INTO productos (pro_nombre, pro_descripcion, pro_referencia, pro_cod_barras, pro_precio, pro_precio_costo, pro_maximo, pro_minimo, pro_iva, pro_clase, pro_marca, pro_presentacion, pro_observacion, gru_codi, created_at, updated_at) VALUES
('Aceite de Motor 5W30 Sintético', 'Aceite sintético premium para motor', 'ACE-5W30-001', '7501234567890', 85000.00, 55000.00, 100, 20, 19.00, 0, 'Castrol', 'Botella 1L', 'Alta rotación', 1, NOW(), NOW()),
('Aceite de Motor 10W40 Convencional', 'Aceite convencional para motor', 'ACE-10W40-001', '7501234567891', 45000.00, 28000.00, 150, 30, 19.00, 0, 'Mobil', 'Botella 1L', NULL, 1, NOW(), NOW()),
('Filtro de Aceite Toyota Corolla', 'Filtro original para Corolla 2015-2022', 'FLT-OIL-TOY-001', '7501234567892', 35000.00, 20000.00, 50, 10, 19.00, 0, 'Toyota', 'Unidad', NULL, 2, NOW(), NOW()),
('Filtro de Aire Motor', 'Filtro de aire para motor', 'FLT-AIR-001', '7501234567893', 25000.00, 15000.00, 60, 15, 19.00, 0, 'Mann', 'Unidad', NULL, 2, NOW(), NOW()),
('Pastillas de Freno Delanteras', 'Pastillas cerámicas delanteras', 'BRK-PAD-FRT-001', '7501234567894', 120000.00, 75000.00, 40, 8, 19.00, 0, 'Brembo', 'Juego', NULL, 3, NOW(), NOW()),
('Disco de Freno Ventilado', 'Disco ventilado delantero', 'BRK-DSC-001', '7501234567895', 180000.00, 110000.00, 30, 5, 19.00, 0, 'Brembo', 'Unidad', NULL, 3, NOW(), NOW()),
('Amortiguador Delantero', 'Amortiguador gas delantero', 'SUS-SHK-FRT-001', '7501234567896', 250000.00, 160000.00, 20, 4, 19.00, 0, 'KYB', 'Unidad', NULL, 4, NOW(), NOW()),
('Correa de Distribución', 'Correa de distribución completa con kit', 'TIM-BEL-KIT-001', '7501234567897', 320000.00, 200000.00, 15, 3, 19.00, 0, 'Gates', 'Kit', NULL, 5, NOW(), NOW()),
('Bujía Iridium', 'Bujía de iridium larga duración', 'SPK-IRI-001', '7501234567898', 45000.00, 28000.00, 100, 20, 19.00, 0, 'NGK', 'Unidad', NULL, 6, NOW(), NOW()),
('Batería 12V 60Ah', 'Batería libre de mantenimiento', 'BAT-12V-60AH', '7501234567899', 380000.00, 250000.00, 25, 5, 19.00, 0, 'Willard', 'Unidad', 'Incluye instalación', 7, NOW(), NOW()),
('Mano de Obra - Servicio Básico', 'Servicio de mantenimiento básico (cambio de aceite y filtros)', 'SRV-BAS-001', NULL, 150000.00, 0.00, 999, 1, 19.00, 1, NULL, 'Servicio', NULL, 8, NOW(), NOW()),
('Mano de Obra - Revisión General', 'Diagnóstico y revisión general del vehículo', 'SRV-DIA-001', NULL, 80000.00, 0.00, 999, 1, 19.00, 1, NULL, 'Servicio', NULL, 8, NOW(), NOW()),
('Líquido de Frenos DOT 4', 'Líquido de frenos sintético', 'BRK-FLD-DOT4', '7501234567900', 35000.00, 22000.00, 50, 10, 19.00, 0, 'Bosch', 'Botella 500ml', NULL, 10, NOW(), NOW()),
('Refrigerante de Motor', 'Refrigerante orgánico de larga duración', 'CLNT-ORG-001', '7501234567901', 55000.00, 35000.00, 40, 8, 19.00, 0, 'Motul', 'Botella 1L', NULL, 10, NOW(), NOW()),
('Kit de Embrague Completo', 'Kit de embrague con plato, disco y rodamiento', 'CLT-KIT-001', '7501234567902', 850000.00, 550000.00, 10, 2, 19.00, 0, 'Valeo', 'Kit', NULL, 9, NOW(), NOW());

-- Stock inicial en bodegas
INSERT INTO stock_bodega (pro_codi, bod_codi, st_cantidad, st_reservada, saldo_real) VALUES
(1, 1, 50.00, 0.00, 50.00),
(1, 2, 20.00, 0.00, 20.00),
(2, 1, 80.00, 0.00, 80.00),
(3, 1, 30.00, 0.00, 30.00),
(3, 2, 15.00, 0.00, 15.00),
(4, 1, 40.00, 0.00, 40.00),
(5, 1, 25.00, 0.00, 25.00),
(6, 1, 15.00, 0.00, 15.00),
(7, 1, 10.00, 0.00, 10.00),
(8, 1, 8.00, 0.00, 8.00),
(9, 1, 60.00, 0.00, 60.00),
(9, 2, 30.00, 0.00, 30.00),
(10, 1, 12.00, 0.00, 12.00),
(11, 1, 999.00, 0.00, 999.00),
(12, 1, 999.00, 0.00, 999.00),
(13, 1, 30.00, 0.00, 30.00),
(14, 1, 25.00, 0.00, 25.00),
(15, 1, 5.00, 0.00, 5.00);

-- ============================================
-- 5. TABLAS MAESTRAS - PROVEEDORES Y EMPLEADOS
-- ============================================

-- Proveedores
INSERT INTO proveedores (cod_tipdo, prv_numdoc, prv_nombre, prv_direccion, prv_barrio, prv_tel_movil, prv_tel_fijo, prv_correoe, prv_contacto, prv_observaciones, ciu_codi, created_at, updated_at) VALUES
(4, '900123456-8', 'AUTOPARTES COLOMBIA SAS', 'Calle 80 #90-10', 'Salitre', '3007778888', '6015556666', 'ventas@autopartescolombia.com', 'Pedro Ramírez', 'Proveedor principal de repuestos', 1, NOW(), NOW()),
(4, '900234567-9', 'LUBRICANTES DEL NORTE LTDA', 'Carrera 45 #120-30', 'Chicó Norte', '3108889999', '6016667777', 'contacto@lubricantesnorte.com', 'Laura Mendoza', 'Distribuidor exclusivo Castrol', 1, NOW(), NOW()),
(4, '900345678-0', 'FRENIPOS SAS', 'Av. Calle 26 #70-50', 'Teusaquillo', '3159990000', '6017778888', 'info@frenipos.com', 'Carlos Vega', 'Especialistas en sistemas de freno', 1, NOW(), NOW()),
(1, '1098876543', 'Jorge Alberto Torres', 'Calle 45 #67-89', 'La Soledad', '3200001111', NULL, 'jorge.torres@email.com', 'Jorge Alberto Torres', 'Proveedor informal de baterías', 2, NOW(), NOW());

-- Empleados
INSERT INTO empleados (cod_tipdo, emp_numdoc, emp_nombre, emp_direccion, emp_barrio, emp_tel_movil, emp_tel_fijo, cg_codi, ciu_codi, emp_estado, emp_fecha_ingreso, emp_observacion, created_at, updated_at) VALUES
(1, '1098123456', 'Luis Fernando Morales', 'Calle 34 #56-78', 'El Centro', '3001234567', '6012345678', 3, 1, 'A', '2020-01-15', 'Mecánico especializado en Toyota', NOW(), NOW()),
(1, '1087234567', 'Andrés Felipe Castro', 'Carrera 67 #89-01', 'La Pradera', '3102345678', NULL, 4, 1, 'A', '2021-03-20', 'Mecánico junior en capacitación', NOW(), NOW()),
(1, '1076345678', 'Diego Alejandro Ruiz', 'Av. 68 #45-67', 'Modelia', '3153456789', '6013456789', 2, 1, 'A', '2019-06-10', 'Supervisor de turno mañana', NOW(), NOW()),
(1, '1065456789', 'Patricia Hernández Díaz', 'Calle 12 #34-56', 'Chapinero', '3204567890', NULL, 6, 1, 'A', '2022-02-01', 'Recepcionista turno mañana', NOW(), NOW()),
(1, '1054567890', 'Miguel Ángel Vargas', 'Transversal 90 #12-34', 'Suba', '3115678901', '6014567890', 5, 1, 'A', '2021-08-15', 'Encargado de bodega principal', NOW(), NOW());

-- ============================================
-- 6. TABLAS TRANSACCIONALES - ÓRDENES DE TRABAJO
-- ============================================

-- Órdenes de trabajo
INSERT INTO orden_trabajo (otm_clase_doc, otm_nume, cli_codi, vxc_codi, usu_codi, otm_fecha, otm_fecha_vence, otm_kilometraje, otm_observacion, otm_subtotal, otm_vr_iva, otm_vr_desc, otm_vr_total, fp_codi, otm_estado, created_at, updated_at) VALUES
(0, 1001, 1, 1, NULL, '2025-01-10 08:30:00', '2025-01-12 18:00:00', '45000', 'Servicio de mantenimiento básico - Cambio de aceite y filtros', 230000.00, 43700.00, 0.00, 273700.00, NULL, 1, '2025-01-10 08:30:00', '2025-01-11 15:00:00'),
(0, 1002, 2, 3, NULL, '2025-01-11 09:15:00', '2025-01-13 18:00:00', '28000', 'Revisión de frenos - Ruido al frenar', 350000.00, 66500.00, 0.00, 416500.00, NULL, 0, '2025-01-11 09:15:00', '2025-01-11 09:15:00'),
(0, 1003, 3, 4, NULL, '2025-01-12 10:00:00', '2025-01-15 18:00:00', '75000', 'Cambio de correa de distribución y bomba de agua', 850000.00, 161500.00, 50000.00, 961500.00, NULL, 0, '2025-01-12 10:00:00', '2025-01-12 10:00:00'),
(0, 1004, 4, 5, NULL, '2025-01-13 14:30:00', '2025-01-15 18:00:00', '15000', 'Primer servicio - Garantía', 150000.00, 28500.00, 0.00, 178500.00, NULL, 0, '2025-01-13 14:30:00', '2025-01-13 14:30:00'),
(0, 1005, 5, 6, NULL, '2025-01-14 08:00:00', '2025-01-17 18:00:00', '38000', 'Cambio de amortiguadores delanteros + alineación', 580000.00, 110200.00, 30000.00, 660200.00, NULL, 0, '2025-01-14 08:00:00', '2025-01-14 08:00:00');

-- Detalles de órdenes
INSERT INTO orden_detalle (otm_codi, otd_cont, pr_codi, otd_cantidad, otd_precio, otd_sbtotal, otd_por_iva, otd_vr_iva, otd_por_dsc, otd_vr_dsc, otd_vr_total, emp_codi, bod_codi, otd_observacion) VALUES
-- Orden 1001 - Servicio básico Toyota Corolla
(1, 1, 11, 1.00, 150000.00, 150000.00, 19.00, 28500.00, 0.00, 0.00, 178500.00, 1, NULL, 'Mano de obra servicio básico'),
(1, 2, 1, 4.00, 85000.00, 340000.00, 19.00, 64600.00, 0.00, 0.00, 404600.00, 1, 1, 'Aceite 5W30 sintético - 4 litros'),
(1, 3, 3, 1.00, 35000.00, 35000.00, 19.00, 6650.00, 0.00, 0.00, 41650.00, 1, 1, 'Filtro de aceite original'),
(1, 4, 4, 1.00, 25000.00, 25000.00, 19.00, 4750.00, 0.00, 0.00, 29750.00, 1, 1, 'Filtro de aire'),
-- Orden 1002 - Revisión frenos Mazda 3
(2, 1, 12, 1.00, 80000.00, 80000.00, 19.00, 15200.00, 0.00, 0.00, 95200.00, 2, NULL, 'Diagnóstico sistema de frenos'),
(2, 2, 5, 1.00, 120000.00, 120000.00, 19.00, 22800.00, 0.00, 0.00, 142800.00, 2, 1, 'Pastillas delanteras cerámicas'),
(2, 3, 6, 2.00, 180000.00, 360000.00, 19.00, 68400.00, 0.00, 0.00, 428400.00, 2, 1, 'Discos ventilados x2'),
-- Orden 1003 - Correa distribución Renault Logan
(3, 1, 11, 1.00, 150000.00, 150000.00, 19.00, 28500.00, 0.00, 0.00, 178500.00, 1, NULL, 'Mano de obra cambio correa'),
(3, 2, 8, 1.00, 320000.00, 320000.00, 19.00, 60800.00, 0.00, 0.00, 380800.00, 1, 1, 'Kit correa distribución completo'),
(3, 3, 14, 2.00, 55000.00, 110000.00, 19.00, 20900.00, 0.00, 0.00, 130900.00, 1, 1, 'Refrigerante - 2 litros'),
(3, 4, 13, 1.00, 35000.00, 35000.00, 19.00, 6650.00, 0.00, 0.00, 41650.00, 1, 1, 'Líquido de frenos DOT4'),
-- Orden 1004 - Primer servicio Nissan Kicks
(4, 1, 11, 1.00, 150000.00, 150000.00, 19.00, 28500.00, 0.00, 0.00, 178500.00, 2, NULL, 'Servicio de garantía'),
-- Orden 1005 - Amortiguadores Hyundai Tucson
(5, 1, 11, 1.00, 150000.00, 150000.00, 19.00, 28500.00, 0.00, 0.00, 178500.00, 1, NULL, 'Cambio amortiguadores + alineación'),
(5, 2, 7, 2.00, 250000.00, 500000.00, 19.00, 95000.00, 0.00, 0.00, 595000.00, 1, 1, 'Amortiguadores KYB delanteros x2');

-- ============================================
-- 7. TABLAS TRANSACCIONALES - ENTRADAS DE INVENTARIO
-- ============================================

-- Entradas de mercancía
INSERT INTO entrada (ent_nume, prv_codi, ent_fecha, ent_observaciones, ent_subtotal, ent_vr_iva, ent_vr_total, created_at) VALUES
(5001, 1, '2025-01-05 10:00:00', 'Compra inicial de repuestos', 5000000.00, 950000.00, 5950000.00, '2025-01-05 10:00:00'),
(5002, 2, '2025-01-06 11:30:00', 'Compra de aceites y lubricantes', 2500000.00, 475000.00, 2975000.00, '2025-01-06 11:30:00'),
(5003, 3, '2025-01-08 09:00:00', 'Compra de sistema de frenos', 3000000.00, 570000.00, 3570000.00, '2025-01-08 09:00:00');

-- Detalles de entradas
INSERT INTO entrada_detalle (ent_codi, pro_codi, end_cont, end_cantidad, end_precio, end_sbtotal, end_por_iva, end_vr_iva, end_vr_total, bod_codi, end_observacion) VALUES
-- Entrada 5001
(1, 1, 1, 50.00, 55000.00, 2750000.00, 19.00, 522500.00, 3272500.00, 1, 'Aceite 5W30'),
(1, 3, 2, 30.00, 20000.00, 600000.00, 19.00, 114000.00, 714000.00, 1, 'Filtros aceite'),
(1, 5, 3, 20.00, 75000.00, 1500000.00, 19.00, 285000.00, 1785000.00, 1, 'Pastillas freno'),
(1, 9, 4, 30.00, 28000.00, 840000.00, 19.00, 159600.00, 999600.00, 1, 'Bujías Iridium'),
-- Entrada 5002
(2, 2, 1, 80.00, 28000.00, 2240000.00, 19.00, 425600.00, 2665600.00, 1, 'Aceite 10W40'),
-- Entrada 5003
(3, 6, 5, 10.00, 110000.00, 1100000.00, 19.00, 209000.00, 1309000.00, 1, 'Discos freno'),
(3, 13, 6, 20.00, 22000.00, 440000.00, 19.00, 83600.00, 523600.00, 1, 'Líquido frenos');

-- ============================================
-- 8. MOVIMIENTOS DE INVENTARIO
-- ============================================

INSERT INTO movimientos_inventario (mvi_clase_docu, mvi_fecha_docu, pro_codi, bod_codi, mvi_cantidad, mvi_costo_unit, mvi_observacion, usu_codi, ent_codi) VALUES
(0, '2025-01-05 10:00:00', 1, 1, 50.00, 55000.00, 'Entrada por compra 5001', NULL, 1),
(0, '2025-01-05 10:00:00', 3, 1, 30.00, 20000.00, 'Entrada por compra 5001', NULL, 1),
(0, '2025-01-05 10:00:00', 5, 1, 20.00, 75000.00, 'Entrada por compra 5001', NULL, 1),
(0, '2025-01-05 10:00:00', 9, 1, 30.00, 28000.00, 'Entrada por compra 5001', NULL, 1),
(0, '2025-01-06 11:30:00', 2, 1, 80.00, 28000.00, 'Entrada por compra 5002', NULL, 2),
(0, '2025-01-08 09:00:00', 6, 1, 10.00, 110000.00, 'Entrada por compra 5003', NULL, 3),
(0, '2025-01-08 09:00:00', 13, 1, 20.00, 22000.00, 'Entrada por compra 5003', NULL, 3);

-- ============================================
-- FIN DATOS DE PRUEBA
-- ============================================
