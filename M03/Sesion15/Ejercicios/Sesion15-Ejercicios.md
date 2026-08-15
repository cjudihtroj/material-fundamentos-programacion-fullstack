# Ejercicios - Sesión 15

Ejercicios resueltos durante la clase. Caso de estudio: **TechStore**.

## Creación de tablas relacionadas

1. Crear una tabla llamada `ordenes` para registrar las transacciones. La tabla debe contener:
   - Un `id` único que se auto-incremente para cada nueva orden.
   - Una columna `cliente_id` que se relacione con la tabla `clientes`.
   - Una columna `fecha` que registre automáticamente la fecha y hora de creación.

2. Crear la tabla `orden_detalles` que funcionará como tabla intermedia para conectar `ordenes` y `productos`. La tabla debe contener:
   - Una llave foránea `orden_id` que apunte a la tabla `ordenes`.
   - Una llave foránea `producto_id` que apunte a la tabla `productos`.
   - Una columna `cantidad` para el número de unidades, que no puede ser nula y debe ser mayor a cero.
   - Una columna `precio_unitario` para registrar el precio al momento de la compra.
   - Una llave primaria compuesta por `orden_id` y `producto_id`.

3. Generar las sentencias `INSERT INTO` utilizando los archivos `ordenes.csv` y `orden_detalle.csv`.

## `INNER JOIN`

4. Generar un reporte que muestre el ID de la orden, la fecha, y el nombre y email del cliente que la realizó (tablas `ordenes` y `clientes`).

## `JOIN` triple

5. Mostrar todos los productos, junto con su cantidad y precio unitario, que pertenecen a la orden con ID 2 (tablas `ordenes`, `orden_detalles` y `productos`).

## `LEFT JOIN`

6. Generar un listado de todas las órdenes realizadas por la clienta 'María López'. El reporte debe mostrar el ID de la orden y la fecha, ordenados de la más reciente a la más antigua.
7. Mostrar el nombre, la cantidad y el precio unitario de todos los productos incluidos en la orden con `id = 5`.
8. Identificar a todos los clientes que no han realizado ninguna orden. El resultado debe mostrar el nombre y el email de dichos clientes.

## Funciones de agregación

9. ¿Cuántos clientes se han registrado?
10. ¿Cuántas órdenes se han realizado en total?
11. ¿Cuántas unidades de productos se han vendido en total?
12. ¿Cuál ha sido el ingreso total por ventas?

> Las soluciones de estos ejercicios se encuentran en la rama `M03-Sesion15-solution`.
