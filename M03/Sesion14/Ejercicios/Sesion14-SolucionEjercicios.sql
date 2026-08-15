-- Ejercicios de la sesión 14
-- Base de datos: tech_store
-- Script con las queries de los ejercicios del archivo de práctica.

-- =====================================================
-- DDL - CREATE TABLE
-- =====================================================

DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS ventas_peru;
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    direccion VARCHAR(255),
    edad INT CHECK (edad >= 18),
    estado VARCHAR(20) DEFAULT 'Activo'
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2),
    stock INT NOT NULL DEFAULT 0
);

-- =====================================================
-- DDL - ALTER TABLE
-- =====================================================

-- 2. Agregar columna telefono a clientes
ALTER TABLE clientes
ADD COLUMN telefono VARCHAR(15);

-- 3. Eliminar columna stock de productos
ALTER TABLE productos
DROP COLUMN stock;

-- 4. Renombrar columna direccion a domicilio
ALTER TABLE clientes
RENAME COLUMN direccion TO domicilio;

-- 5. Cambiar tipo de dato de precio a NUMERIC(12,2)
ALTER TABLE productos
ALTER COLUMN precio TYPE NUMERIC(12,2);

-- 6. Agregar constraint CHECK para stock >= 0
-- Como la columna stock se eliminó antes, la re-creamos y luego la validamos.
ALTER TABLE productos
ADD COLUMN stock INT NOT NULL DEFAULT 0;

ALTER TABLE productos
ADD CONSTRAINT chk_productos_stock CHECK (stock >= 0);

-- =====================================================
-- DDL - DROP TABLE
-- =====================================================

-- 7. Crear tabla ventas, insertar datos, renombrar columna y tabla, y eliminar tabla.
CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INT,
    producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
    genera VARCHAR(50) NOT NULL
);

ALTER TABLE ventas
RENAME COLUMN genera TO categoria;

ALTER TABLE ventas
RENAME TO ventas_peru;

DROP TABLE ventas_peru;

-- =====================================================
-- DML - INSERT INTO
-- =====================================================

-- 8. Insertar 2 registros en clientes usando CSV (opción de importación)
-- Ejemplo con COPY desde un archivo CSV:
-- COPY clientes (nombre, email, domicilio, edad, estado, telefono)
-- FROM 'C:/ruta/a/M03/datos/clientes.csv'
-- WITH (FORMAT csv, HEADER true, DELIMITER ',');

INSERT INTO clientes (nombre, email, domicilio, edad, estado, telefono)
VALUES
    ('Ana Torres', 'ana.torres@email.com', 'Av. Brasil 245, Lima', 28, 'Activo', '987654321'),
    ('Carlos Ruiz', 'carlos.ruiz@email.com', 'Jr. Puno 88, Arequipa', 31, 'Activo', '912345678');

-- 9. Insertar 2 registros en productos usando CSV (opción de importación)
-- Ejemplo con COPY desde un archivo CSV:
-- COPY productos (nombre, precio, stock)
-- FROM 'C:/ruta/a/M03/datos/productos.csv'
-- WITH (FORMAT csv, HEADER true, DELIMITER ',');

INSERT INTO productos (nombre, precio, stock)
VALUES
    ('Laptop Lenovo', 2499.99, 15),
    ('Monitor Samsung', 599.00, 20);

-- =====================================================
-- DML - UPDATE / DELETE - Revisión
-- =====================================================

-- 10. Insertar nuevo cliente
INSERT INTO clientes (nombre, email, domicilio, edad, estado, telefono)
VALUES
    ('Laura Martínez', 'laura.martinez@email.com', 'Av. Los Jardines 123, Lima', 26, 'Activo', '998877665');

-- 11. Cambiar precio del producto con id = 1
UPDATE productos
SET precio = 749.99
WHERE id = 1;

-- 12. Eliminar cliente con id = 10
DELETE FROM clientes
WHERE id = 10;

-- 13. Vaciar tabla productos y reiniciar contadores de SERIAL
TRUNCATE TABLE productos RESTART IDENTITY;

-- 14. Insertar múltiples productos
INSERT INTO productos (nombre, precio, stock)
VALUES
    ('Cargador USB-C', 19.99, 50),
    ('Cable HDMI', 12.99, 100);

-- =====================================================
-- DDL / DML - Práctica final
-- =====================================================

-- 15. Crear tabla pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(id),
    fecha_pedido DATE NOT NULL,
    total NUMERIC(12,2) NOT NULL,
    estado VARCHAR(30) NOT NULL
);

-- 16. Agregar columna metodo_pago a pedidos
ALTER TABLE pedidos
ADD COLUMN metodo_pago VARCHAR(20);

-- 17. Insertar 3 registros en pedidos
INSERT INTO pedidos (cliente_id, fecha_pedido, total, estado, metodo_pago)
VALUES
    (1, '2026-08-01', 299.90, 'pendiente', 'Tarjeta'),
    (2, '2026-08-03', 559.99, 'pagado', 'Yape'),
    (3, '2026-08-05', 120.00, 'pendiente', 'Efectivo');

-- 18. Actualizar estado del pedido con id = 1
UPDATE pedidos
SET estado = 'enviado'
WHERE id = 1;

-- 19. Eliminar pedido con id = 3
DELETE FROM pedidos
WHERE id = 3;

-- =====================================================
-- Consultas extras útiles
-- =====================================================

SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM pedidos;

-- =====================================================
-- DDL / DML - Bloque Intermedio (Tabla pedidos)
-- =====================================================

-- 20. Agregar columna cantidad_articulos a pedidos
ALTER TABLE pedidos
ADD COLUMN cantidad_articulos INTEGER;

-- 21. Agregar constraint CHECK para cantidad_articulos > 0
ALTER TABLE pedidos
ADD CONSTRAINT chk_pedidos_cantidad CHECK (cantidad_articulos > 0);

-- 22. Agregar columna observaciones con valor por defecto
ALTER TABLE pedidos
ADD COLUMN observaciones TEXT DEFAULT 'Sin observaciones';

-- 23. Insertar 2 nuevos pedidos con valores completos
INSERT INTO pedidos (cliente_id, fecha_pedido, total, estado, metodo_pago, cantidad_articulos, observaciones)
VALUES
    (1, '2026-08-10', 450.75, 'procesando', 'Tarjeta', 3, 'Envío urgente'),
    (2, '2026-08-12', 189.50, 'pendiente', 'Yape', 2, 'Cliente solicita entrega en horario matutino');

-- 24. Actualizar total del pedido con id = 1 a 350.50 y estado a completado
UPDATE pedidos
SET total = 350.50, estado = 'completado', cantidad_articulos = 4
WHERE id = 1;

-- 25. Actualizar todos los pedidos con estado 'pendiente' a 'procesando'
UPDATE pedidos
SET estado = 'procesando'
WHERE estado = 'pendiente';

-- 26. Agregar columna numero_referencia con constraint UNIQUE
ALTER TABLE pedidos
ADD COLUMN numero_referencia VARCHAR(50) UNIQUE;

-- Actualizar algunos registros con números de referencia únicos
UPDATE pedidos SET numero_referencia = 'REF-2026-001' WHERE id = 1;
UPDATE pedidos SET numero_referencia = 'REF-2026-002' WHERE id = 2;
UPDATE pedidos SET numero_referencia = 'REF-2026-003' WHERE id = 4;
UPDATE pedidos SET numero_referencia = 'REF-2026-004' WHERE id = 5;

-- 27. Intentar insertar un pedido con cantidad_articulos = 0 (genera error)
-- Descomenta la siguiente línea para ver el error:
-- INSERT INTO pedidos (cliente_id, fecha_pedido, total, estado, cantidad_articulos)
-- VALUES (1, '2026-08-15', 100.00, 'pendiente', 0);
-- ERROR: new row for relation "pedidos" violates check constraint "chk_pedidos_cantidad"

-- 28. Obtener recuento de pedidos por estado
SELECT estado, COUNT(*) as cantidad_pedidos
FROM pedidos
GROUP BY estado
ORDER BY cantidad_pedidos DESC;

-- Eliminar todos los pedidos con estado 'cancelado'
DELETE FROM pedidos
WHERE estado = 'cancelado';

-- Consultar estado final de la tabla pedidos
SELECT * FROM pedidos ORDER BY id;
