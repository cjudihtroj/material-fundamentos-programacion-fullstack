-- SELECT
------------------------------------------------------------------------------------------------------
-- Obtén todas las columnas y filas de la tabla productos.
SELECT * FROM productos;
-- Crea una lista que muestre solo el nombre y el precio de cada producto.
SELECT nombre, precio FROM productos;
-- Obtén toda la información disponible de la tabla clientes.
SELECT * FROM clientes;
-- Genera un directorio simple de clientes que muestre únicamente su nombre y su dirección.
SELECT nombre, direccion FROM clientes;
-- Necesitamos un reporte de inventario. Muestra el nombre de cada producto junto con su stock actual.
SELECT nombre, stock FROM productos;