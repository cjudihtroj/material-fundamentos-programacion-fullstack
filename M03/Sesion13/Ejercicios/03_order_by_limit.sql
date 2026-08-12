


-- ORDER BY
------------------------------------------------------------------------------------------------------
-- Listar nombre y precio de productos ordenados por precio (más barato primero).
SELECT nombre, precio FROM productos ORDER BY precio ASC;

-- LIMIT
------------------------------------------------------------------------------------------------------
-- Obtener los 10 productos más caros.
SELECT nombre, precio, stock FROM productos 
ORDER BY precio DESC
LIMIT 10;

-- Encontrar los 5 productos más baratos que tenga más de 50 unidades en stock.
SELECT * FROM productos WHERE stock > 50 ORDER BY precio ASC LIMIT 5;
-- Listar los 3 clientes de la región 'Lima' con los IDs más altos (los más nuevos).
SELECT * FROM clientes WHERE direccion LIKE '%Lima%'
ORDER BY id DESC
LIMIT 3;
-- Mostrar el producto más caro que contenga la palabra 'USB' en su nombre.
SELECT * FROM productos 
WHERE nombre LIKE '%USB%'
ORDER BY precio DESC
LIMIT 1;
-- Encontrar los 10 productos con menos stock, excluyendo aquellos que cuestan más de $1000.
SELECT * FROM productos WHERE precio <= 1000 ORDER BY stock ASC LIMIT 10;
-- Listar los 5 clientes cuyo nombre empiece por 'M', ordenados alfabéticamente.
SELECT * FROM clientes WHERE nombre LIKE 'M%'
ORDER BY nombre ASC
LIMIT 5;
-- Mostrar los 3 'Smartwatch' más caros disponibles.
SELECT * FROM productos
WHERE nombre LIKE '%Smartwatch%' AND stock > 0
ORDER BY precio DESC
LIMIT 3;

-- Encontrar los 5 productos más baratos que pertenezcan a la categoría 'Silla' o 'Teclado'.
SELECT * FROM productos
WHERE nombre LIKE '%Silla%' OR nombre LIKE '%Teclado%'
ORDER BY precio ASC
LIMIT 5;

-- Listar los 10 clientes con IDs entre 15 y 45, ordenados por su ID de forma descendente.
SELECT * FROM clientes 
WHERE id >= 15 AND id <= 45
ORDER BY id DESC
LIMIT 10;

-- Usando BETWEEN
SELECT * FROM clientes 
WHERE id BETWEEN 15 AND 45
ORDER BY id DESC
LIMIT 10;

-- Mostrar el producto con el stock más bajo que cueste menos de $20.
SELECT * FROM productos
WHERE precio < 20
ORDER BY stock ASC
LIMIT 1;
-- Encontrar los 5 clientes que no son de 'Lima' ni de 'Arequipa', ordenados por nombre de la Z a la A.
SELECT * FROM clientes 
WHERE direccion NOT LIKE '%Lima%' AND direccion NOT LIKE '%Arequipa%'
ORDER BY nombre DESC
LIMIT 5;
