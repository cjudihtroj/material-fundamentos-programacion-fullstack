-- WHERE
------------------------------------------------------------------------------------------------------
-- Ejercicio 6: Encontrar el producto con el id = 10.
SELECT * FROM productos WHERE id = 10;

-- Ejercicio 7: Listar los productos que cuestan más de $100.
SELECT * FROM productos WHERE precio > 100;

-- Ejercicio 8: Encontrar productos que cuesten menos de $50 Y tengan más de 40 unidades en stock.
SELECT * FROM productos WHERE precio < 50 AND stock > 40;

-- Ejercicio 9: Buscar todos los productos que contengan la palabra 'Laptop' en su nombre.
SELECT * FROM productos WHERE nombre LIKE '%Laptop%';

-- Ejercicio 10: Encontrar el producto cuyo id es exactamente 75.
SELECT * FROM productos WHERE id = 75;

-- Ejercicio 11: Listar todos los productos con un precio menor a $50.
SELECT * FROM productos WHERE precio < 50;

-- Ejercicio 12: Mostrar los productos que tienen 20 o menos unidades en stock.
SELECT * FROM productos WHERE stock <= 20;

-- Ejercicio 13: Encontrar todos los clientes que no son de la región de 'Lima'.
SELECT * FROM clientes WHERE direccion NOT LIKE '%Lima%';

-- Ejercicio 14: Listar los productos que cuestan más de $500 Y tienen más de 10 unidades en stock.
SELECT * FROM productos WHERE precio > 500 AND stock > 10;

-- Ejercicio 15: Mostrar los clientes de la región de 'Cusco' O de la región de 'Arequipa'.
SELECT * FROM clientes WHERE direccion LIKE '%Cusco%' OR direccion LIKE '%Arequipa%';

-- Ejercicio 16: Encontrar todos los productos que tengan la palabra 'Gaming' en su nombre.
SELECT * FROM productos WHERE nombre LIKE '%Gaming%';

-- Ejercicio 17: Listar todos los clientes cuyo nombre empiece con la letra 'A'.
SELECT * FROM clientes WHERE nombre LIKE 'A%';

-- Ejercicio 18: Mostrar los productos cuyos IDs son 10, 20, 30, 40 y 50.
SELECT * FROM productos WHERE id IN (10, 20, 30, 40, 50);

-- Ejercicio 19: Versión extendida con OR
SELECT * FROM productos WHERE id = 10 OR id = 20 OR id = 30 OR id = 40 OR id = 50;

-- Ejercicio 20: Encontrar los clientes que no están en las regiones 'Puno', 'Tacna'
SELECT * FROM clientes WHERE direccion NOT LIKE '%Puno%' AND direccion NOT LIKE '%Tacna%';