<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Ejercicios - Sesión 13

Ejercicios resueltos durante la clase. Caso de estudio: **TechStore** (tablas `productos`, `clientes`).

## `SELECT`

1. Obtén todas las columnas y filas de la tabla `productos`.
2. Crea una lista que muestre solo el nombre y el precio de cada producto.
3. Obtén toda la información disponible de la tabla `clientes`.
4. Genera un directorio simple de clientes que muestre únicamente su nombre y su dirección.
5. Necesitamos un reporte de inventario. Muestra el nombre de cada producto junto con su stock actual.

## `WHERE`

6. Encontrar el producto con el `id` = 10.
7. Listar los productos que cuestan más de $100.
8. Encontrar productos que cuesten menos de $50 Y tengan más de 40 unidades en stock.
9. Buscar todos los productos que contengan la palabra 'Laptop' en su nombre.
10. Encontrar el producto cuyo `id` es exactamente 75.
11. Listar todos los productos con un precio menor a $50.
12. Mostrar los productos que tienen 20 o menos unidades en stock.
13. Encontrar todos los clientes que no son de la región de 'Lima'.
14. Listar los productos que cuestan más de $500 Y tienen más de 10 unidades en stock.
15. Mostrar los clientes de la región de 'Cusco' O de la región de 'Arequipa'.
16. Encontrar todos los productos que tengan la palabra 'Gaming' en su nombre.
17. Listar todos los clientes cuyo nombre empiece con la letra 'A'.
18. Mostrar los productos cuyos IDs son 10, 20, 30, 40 y 50.
19. Encontrar los clientes que no están en las regiones 'Puno' ni 'Tacna'.
20. Versión extendida con `OR` para los IDs 10, 20, 30, 40 y 50.

## `ORDER BY` + `LIMIT`

21. Listar productos ordenados por precio, del más barato al más caro.
22. Obtener los 10 productos más caros.

## Combinados: `WHERE` + `ORDER BY` + `LIMIT`

23. Encontrar los 5 productos más baratos que tengan más de 50 unidades en stock.
24. Listar los 3 clientes de la región 'Lima' con los IDs más altos (los más nuevos).
25. Mostrar el producto más caro que contenga la palabra 'USB' en su nombre.
26. Encontrar los 10 productos con menos stock, excluyendo aquellos que cuestan más de $1000.
27. Listar los 5 clientes cuyo nombre empiece por 'M', ordenados alfabéticamente.
28. Mostrar los 3 'Smartwatch' más caros disponibles.
29. Encontrar los 5 productos más baratos que pertenezcan a la categoría 'Silla' o 'Teclado'.
30. Listar los 10 clientes con IDs entre 15 y 45, ordenados por su ID de forma descendente.
31. Mostrar el producto con el stock más bajo que cueste menos de $20.
32. Encontrar los 5 clientes que no son de 'Lima' ni de 'Arequipa', ordenados por nombre de la Z a la A.

> Los ejercicios de práctica adicional y los problemas propuestos de la sesión están en [M03/Sesion13/Problemas propuestos/Sesion13-Problemas-Propuestos.md](../Problemas%20propuestos/Sesion13-Problemas-Propuestos.md).

> Las soluciones del bloque de ejercicios de clase están en los archivos `.sql` de esta carpeta en el mismo orden numérico.
