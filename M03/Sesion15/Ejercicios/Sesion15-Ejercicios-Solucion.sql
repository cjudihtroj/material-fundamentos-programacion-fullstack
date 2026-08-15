-- ============================================================================
-- SOLUCIONARIO - SESION 15: JOINs y Consultas Avanzadas
-- Caso de estudio: TechStore
-- ============================================================================

-- ============================================================================
-- EJERCICIO 1: Crear tabla ordenes
-- ============================================================================

CREATE TABLE ordenes (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL REFERENCES clientes(id),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- EJERCICIO 2: Crear tabla orden_detalles
-- ============================================================================

CREATE TABLE orden_detalles (
    orden_id INTEGER NOT NULL REFERENCES ordenes(id),
    producto_id INTEGER NOT NULL REFERENCES productos(id),
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (orden_id, producto_id)
);

-- ============================================================================
-- EJERCICIO 3: INSERT INTO usando datos de CSV
-- ============================================================================

-- Insertar datos en tabla ordenes
INSERT INTO ordenes (id, cliente_id, fecha) VALUES
(1, 1, '2026-08-10 10:15:00'),
(2, 2, '2026-08-11 11:30:00'),
(3, 3, '2026-08-12 09:00:00'),
(4, 4, '2026-08-13 16:45:00'),
(5, 5, '2026-08-14 14:20:00'),
(6, 6, '2026-08-15 18:10:00'),
(7, 7, '2026-08-16 12:55:00'),
(8, 8, '2026-08-17 08:30:00'),
(9, 9, '2026-08-18 20:05:00'),
(10, 10, '2026-08-19 19:40:00');

-- Insertar datos en tabla orden_detalles
INSERT INTO orden_detalles (orden_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 699.99),
(1, 3, 1, 450.00),
(2, 2, 1, 1299.99),
(2, 5, 2, 19.99),
(3, 4, 1, 1499.99),
(3, 7, 1, 35.50),
(4, 3, 2, 450.00),
(5, 6, 3, 12.99),
(5, 8, 1, 89.90),
(6, 9, 1, 249.99),
(6, 10, 2, 59.99),
(7, 1, 1, 699.99),
(7, 2, 1, 1299.99),
(8, 5, 4, 19.99),
(8, 6, 2, 12.99),
(9, 8, 1, 89.90),
(9, 10, 1, 59.99),
(10, 2, 1, 1299.99),
(10, 4, 1, 1499.99);

-- ============================================================================
-- EJERCICIO 4: INNER JOIN
-- Generar un reporte que muestre el ID de la orden, la fecha, y el nombre 
-- y email del cliente que la realizó (tablas ordenes y clientes)
-- ============================================================================

SELECT 
    o.id AS orden_id,
    o.fecha,
    c.nombre,
    c.email
FROM ordenes AS o
INNER JOIN clientes AS c ON o.cliente_id = c.id
ORDER BY o.id;

-- ============================================================================
-- EJERCICIO 5: Triple JOIN
-- Mostrar todos los productos, junto con su cantidad y precio unitario, 
-- que pertenecen a la orden con ID 2
-- ============================================================================

SELECT
    o.id AS orden_id,
    p.nombre AS producto,
    od.cantidad,
    od.precio_unitario
FROM ordenes AS o
INNER JOIN orden_detalles AS od ON o.id = od.orden_id
INNER JOIN productos AS p ON od.producto_id = p.id
WHERE o.id = 2;

-- ============================================================================
-- EJERCICIO 6: LEFT JOIN
-- Generar un listado de todas las órdenes realizadas por la clienta 'María López'. 
-- El reporte debe mostrar el ID de la orden y la fecha, ordenados de la más 
-- reciente a la más antigua.
-- ============================================================================

SELECT 
    o.id AS orden_id,
    o.fecha
FROM clientes AS c
LEFT JOIN ordenes AS o ON c.id = o.cliente_id
WHERE c.nombre = 'María López'
ORDER BY o.fecha DESC;

-- ============================================================================
-- EJERCICIO 7: 
-- Mostrar el nombre, la cantidad y el precio unitario de todos los productos 
-- incluidos en la orden con id = 5
-- ============================================================================

SELECT
    p.nombre,
    od.cantidad,
    od.precio_unitario
FROM ordenes AS o
INNER JOIN orden_detalles AS od ON o.id = od.orden_id
INNER JOIN productos AS p ON od.producto_id = p.id
WHERE o.id = 5;

-- ============================================================================
-- EJERCICIO 8: LEFT JOIN
-- Identificar a todos los clientes que no han realizado ninguna orden. 
-- El resultado debe mostrar el nombre y el email de dichos clientes.
-- ============================================================================

SELECT 
    c.nombre,
    c.email
FROM clientes AS c
LEFT JOIN ordenes AS o ON c.id = o.cliente_id
WHERE o.id IS NULL;

-- ============================================================================
-- EJERCICIO 9: Funciones de agregación
-- ¿Cuántos clientes se han registrado?
-- ============================================================================

SELECT COUNT(*) AS total_clientes
FROM clientes;

-- ============================================================================
-- EJERCICIO 10: Funciones de agregación
-- ¿Cuántas órdenes se han realizado en total?
-- ============================================================================

SELECT COUNT(*) AS total_ordenes
FROM ordenes;

-- ============================================================================
-- EJERCICIO 11: Funciones de agregación
-- ¿Cuántas unidades de productos se han vendido en total?
-- ============================================================================

SELECT SUM(cantidad) AS total_unidades_vendidas
FROM orden_detalles;

-- ============================================================================
-- EJERCICIO 12: Funciones de agregación
-- ¿Cuál ha sido el ingreso total por ventas?
-- ============================================================================

SELECT SUM(cantidad * precio_unitario) AS ingreso_total
FROM orden_detalles;
