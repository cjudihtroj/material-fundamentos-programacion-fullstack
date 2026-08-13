<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Ejercicios - Sesión 14

Ejercicios resueltos durante la clase. 

## DDL

### `CREATE TABLE`

1. Crea la tabla `productos` con las siguientes columnas:
   - `id`: identificador único generado automáticamente, clave primaria.
   - `nombre`: nombre del producto, no puede ser nulo.
   - `precio`: valor numérico con decimales para el precio del producto.
   - `stock`: valor numérico entero que indica la cantidad disponible en inventario.

### `ALTER TABLE`

2. Agrega una columna `telefono` de tipo `VARCHAR(15)` a la tabla `clientes`.
3. Elimina la columna `stock` de la tabla `productos`.
4. Cambia el nombre de la columna `direccion` a `domicilio` en la tabla `clientes`.
5. Cambia el tipo de dato de la columna `precio` en la tabla `productos` a `NUMERIC(12, 2)`.
6. Agrega un constraint `CHECK` a la tabla `productos` para que el `stock` sea mayor o igual a 0.

### `DROP TABLE`

7. Eliminar tabla
   - Crear la tabla `ventas` (definir campos, tipo de datos y reglas).
   - Renombrar la última columna `genera`.
   - Renombrar la tabla con `ventas_peru`.
   - Eliminar la tabla `ventas_peru`.

## DML

### `INSERT INTO`

8. Usando el archivo CSV `clientes`, inserta 2 registros para cada tabla.
9. Usando el archivo CSV `productos`, inserta 2 registros para cada tabla.

### `UPDATE` | `DELETE` - Revisión

10. Inserta un nuevo cliente con nombre "Laura Martínez", email "laura.martinez@email.com" y dirección "Av. Los Jardines 123, Lima".
11. Cambia el precio del producto con `id = 1` a 749.99.
12. Elimina el cliente con `id = 10`.
13. Vacía la tabla `productos` y reinicia los contadores de `SERIAL` usando `TRUNCATE TABLE`.
14. Inserta múltiples productos:
    - nombre: "Cargador USB-C", precio: 19.99, stock: 50
    - nombre: "Cable HDMI", precio: 12.99, stock: 100

### `DDL` / `DML` - Práctica final

15. Crea la tabla `pedidos` con las siguientes columnas:
    - `id`: entero autoincremental y clave primaria.
    - `cliente_id`: entero que referencia al cliente.
    - `fecha_pedido`: fecha del pedido.
    - `total`: valor numérico con decimales.
    - `estado`: texto que indica el estado del pedido.
16. Agrega la columna `metodo_pago` de tipo `VARCHAR(20)` a la tabla `pedidos`.
17. Inserta 3 registros en la tabla `pedidos`.
18. Actualiza el estado del pedido con `id = 1` a `enviado`.
19. Elimina el pedido con `id = 3`.

### `DDL` / `DML` - Bloque Intermedio (Tabla pedidos)

20. Agrega una columna `cantidad_articulos` de tipo `INTEGER` a la tabla `pedidos`.
21. Modifica la tabla `pedidos` para agregar un constraint `CHECK` en `cantidad_articulos` (debe ser mayor a 0).
22. Agrega una columna `observaciones` de tipo `TEXT` a la tabla `pedidos` con valor por defecto `'Sin observaciones'`.
23. Inserta 2 nuevos pedidos con valores completos, incluyendo `cantidad_articulos` y `observaciones`.
24. Actualiza el `total` del pedido con `id = 1` a 350.50 y el `estado` a `completado`.
25. Actualiza todos los pedidos con `estado = 'pendiente'` para cambiar a `procesando`.
26. Agrega una columna `numero_referencia` de tipo `VARCHAR(50)` con constraint `UNIQUE` a la tabla `pedidos`.
27. Intenta insertar un pedido con `cantidad_articulos = 0`. ¿Qué error genera? Documéntalo.
28. Obtén el recuento total de pedidos, agrupados por `estado`. Luego elimina todos los pedidos con `estado = 'cancelado'`.

> Las soluciones de estos ejercicios se encuentran en  [Sesion14-Ejercicios.sql](Sesion14-Ejercicios.sql).
