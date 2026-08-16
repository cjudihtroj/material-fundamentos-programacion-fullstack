# Problemas Propuestos - Sesión 15

## Caso de estudio: ShopEasy

ShopEasy es una tienda online de productos tecnológicos. Debe permitir:

- registrar usuarios con roles,
- gestionar clientes y direcciones,
- administrar categorías y productos,
- registrar proveedores,
- crear pedidos y detalle de pedido,
- registrar pagos,
- controlar stock y ventas.

> Trabajen a partir del caso de negocio y construyan su propio modelo de datos.

---

## 1. Modelo de datos

### Problema 1

Identifica las entidades principales del sistema y sus atributos más importantes.

Responde:

1. ¿Cuáles son las entidades?
2. ¿Qué atributos debe tener cada una?
3. ¿Qué campos son obligatorios?
4. ¿Qué atributos deben ser únicos?
5. ¿Qué relaciones existen entre ellas?

---

### Problema 2

Diseña un diagrama entidad-relación (DER) para ShopEasy.

Debe incluir como mínimo:

- usuarios y roles,
- clientes y direcciones,
- categorías,
- productos,
- proveedores,
- pedidos,
- detalle de pedido,
- pagos.

Indica:

- clave primaria,
- clave foránea,
- tipo de relación,
- cardinalidad.

---

### Problema 3

Explica las relaciones entre:

1. `clientes` y `pedidos`
2. `pedidos` y `detalle_pedido`
3. `productos` y `categorias`
4. `productos` y `proveedores`
5. `clientes` y `direcciones`
6. `usuarios` y `roles`

---

## 2. Normalización

### Problema 4

Considera esta tabla desnormalizada:

```sql
ventas_inicial (
    id_venta,
    cliente_nombre,
    cliente_email,
    cliente_direccion,
    producto_nombre,
    categoria_nombre,
    proveedor_nombre,
    precio_unitario,
    cantidad,
    subtotal,
    metodo_pago,
    estado_pedido
)
```

Responde:

1. ¿Qué problemas tiene esta estructura?
2. ¿Por qué no está normalizada?
3. ¿Qué columnas deberían pasar a otras tablas?
4. ¿Qué problema aparece si se repite información en varias filas?

---

### Problema 5

Explica cómo quedaría una versión normalizada de la estructura.

- ¿Qué columnas dependen directamente de la clave primaria?
- ¿Qué columnas dependen de otra columna?
- ¿Qué tablas separarías para llegar a 3FN?

---

## 3. DDL y restricciones

### Problema 6

Crea el esquema base para `shopeasy` con las tablas principales:

- `roles`
- `usuarios`
- `usuario_rol`
- `clientes`
- `direcciones`
- `categorias`
- `proveedores`
- `productos`
- `pedidos`
- `detalle_pedido`
- `pagos`

Define:

- tipos de dato,
- PK y FK,
- `NOT NULL`, `UNIQUE`, `CHECK` y `DEFAULT` cuando corresponda.

---

### Problema 7

Añade estas reglas de negocio:

1. El precio del producto debe ser mayor que 0.
2. El stock no puede ser negativo.
3. La cantidad del detalle de pedido debe ser mayor que 0.
4. El correo del cliente debe ser único.
5. El estado del pedido debe ser uno de: `PENDIENTE`, `PROCESADO`, `ENVIADO`, `ENTREGADO`, `CANCELADO`.
6. El método de pago debe ser uno de: `EFECTIVO`, `TARJETA`, `TRANSFERENCIA`, `YAPE`.
7. El total del pedido debe ser mayor que 0.

Escribe la SQL necesaria.

---

## 4. Datos de prueba

### Problema 8

Carga datos mínimos para probar la base de datos:

- 5 clientes
- 3 direcciones
- 4 categorías
- 3 proveedores
- 8 productos
- 4 pedidos
- 8 registros en detalle de pedido
- 3 pagos
- 2 roles
- 4 usuarios
- 6 relaciones en `usuario_rol`

---

## 5. Consultas con JOIN

### Problema 9

Escribe consultas para responder:

1. Listar pedidos con el nombre del cliente.
2. Mostrar cada pedido con su total y el método de pago.
3. Mostrar productos con su categoría y proveedor.
4. Listar clientes y sus direcciones.
5. Obtener el detalle completo de un pedido.
6. Mostrar clientes sin pedidos.
7. Mostrar productos no vendidos.

> Deben incluir `INNER JOIN` y `LEFT JOIN`.

---

### Problema 10

Responde:

1. ¿Cuántos pedidos ha hecho cada cliente?
2. ¿Cuál es el total vendido por producto?
3. ¿Cuál es el ingreso total por categoría?
4. ¿Cuántos productos tiene cada proveedor?
5. ¿Qué clientes tienen más de 2 pedidos?
6. ¿Cuáles son los 5 productos más vendidos?
7. ¿Cuál es el cliente que más ha gastado?

---

## 6. Subconsultas y agregación

### Problema 11

Escribe consultas con subconsultas para:

1. Mostrar pedidos cuyo total supera el promedio general.
2. Encontrar el producto más caro.
3. Listar productos por encima del promedio de precios.
4. Mostrar usuarios con rol de administrador.
5. Encontrar clientes que pagaron con tarjeta.

---

### Problema 12

Responde:

1. ¿Cuál es el precio promedio de los productos?
2. ¿Cuál es el total de ingresos acumulados?
3. ¿Cuál es el pedido con mayor valor?
4. ¿Cuántos clientes están registrados?
5. ¿Cuántos productos tienen stock menor a 5?
6. ¿Cuántos pagos hay por cada método de pago?

---

## 7. Reto final

### Problema 13

Diseña la base de datos completa para ShopEasy con:

1. Diagrama ER.
2. Esquema normalizado.
3. Script DDL con PK/FK/UNIQUE/CHECK.
4. Datos iniciales de prueba.
5. 6 consultas con JOIN.
6. 4 consultas con agregación.
7. 3 consultas con subconsultas.
8. Justificación breve de decisiones de diseño.

Esto será la base para el taller final del módulo.

---

## Recomendaciones

1. Empieza por las entidades.
2. Luego define las relaciones.
3. Normaliza antes de crear tablas.
4. Escribe el DDL con restricciones.
5. Comprueba las consultas con datos reales.

Este ejercicio es suficiente para reforzar los conceptos de la sesión 15 sin hacerla excesivamente larga.
