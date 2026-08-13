<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Problemas Propuestos - Sesión 14

Resuelve los siguientes problemas de forma autónoma. Trabaja sobre una base de datos `tech_store` propia (o la que configuraste en clase).

## DDL

1. Diseña y crea una tabla `categorias` con: `id` (PK autoincremental), `nombre` (obligatorio y único).
2. Agrega una columna `categoria_id` a la tabla `productos` (sin relacionarla todavía con Foreign Key; eso se verá en la Sesión 15).
3. Agrega un constraint `CHECK` a la tabla `productos` para que el `precio` sea mayor a 0.
4. Cambia el tipo de dato de una columna de texto que hayas definido como `VARCHAR(50)` a `VARCHAR(100)`.
5. Elimina una tabla de prueba que ya no necesites.

## DML

6. Inserta al menos 5 categorías distintas en la tabla `categorias`.
7. Actualiza el stock de 3 productos distintos, sumando 10 unidades a cada uno (usando `UPDATE ... SET stock = stock + 10`).
8. Elimina todos los productos cuyo stock sea igual a 0.
9. Vacía por completo la tabla `categorias` usando `TRUNCATE TABLE` y reinicia sus contadores.
10. Vuelve a insertar las categorías eliminadas en el paso anterior, verificando que el `id` reinicie desde 1.

> Estos problemas no se resuelven en clase; son para practicar de forma autónoma.
