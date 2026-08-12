-- WHERE
------------------------------------------------------------------------------------------------------
-- Lista los productos cuyo precio sea $100 o más
SELECT * FROM productos WHERE precio >= 100;
-- Encontrar productos que cuesten menos de $50 Y tengan más de 40 unidades en stock
SELECT * FROM productos WHERE precio < 50 AND stock > 40;
-- Buscar todos los productos que contengan la palabra 'Laptop' en su nombre.
SELECT * FROM productos WHERE nombre LIKE '%Laptop%';
-- Quiero saber que productos tienen 30, 40, 50 unidades de stock
SELECT * FROM productos WHERE stock IN (30, 40, 50);

-- Encontrar el producto cuyo id es exactamente 75.
SELECT * FROM productos WHERE id = 75;
-- Listar todos los productos con un precio menor a $50.
SELECT * FROM productos WHERE precio < 50;
-- Mostrar los productos que tienen 20 o menos unidades en stock.
SELECT * FROM productos WHERE stock <= 20;
-- Encontrar todos los clientes que no son de la región de 'Lima'.
SELECT * FROM clientes WHERE direccion NOT LIKE '%Lima%';
-- Listar los productos que cuestan más de $500 Y tienen más de 10 unidades en stock.
SELECT * FROM productos WHERE precio > 50 AND stock > 10;
-- Mostrar los clientes de la región de 'Cusco' O de la región de 'Arequipa'.
SELECT * FROM clientes WHERE direccion LIKE '%Cusco%' OR direccion LIKE '%Arequipa%';
-- Encontrar todos los productos que tengan la palabra 'Gaming' en su nombre.
SELECT * FROM productos WHERE nombre LIKE '%Gaming%';
-- Listar todos los clientes cuyo nombre empiece con la letra 'A'.
SELECT * FROM clientes WHERE nombre LIKE 'A%';
-- Mostrar los productos cuyos IDs son 10, 20, 30, 40 y 50.
SELECT * FROM productos WHERE id IN (10, 20, 30, 40, 50);
-- Versión extendida con OR
SELECT * FROM productos WHERE id = 10 OR id = 20 OR id = 30 OR id = 40 OR id = 50;
-- Encontrar los clientes que no están en las regiones 'Puno', 'Tacna'
SELECT * FROM clientes WHERE direccion NOT LIKE '%Puno%' AND direccion NOT LIKE '%Tacna%';