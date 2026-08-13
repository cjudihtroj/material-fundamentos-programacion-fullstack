<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Problemas Propuestos Avanzados - Sesión 14

## Proyecto: Diseño de base de datos para una tienda online (ShopEasy)

En estos ejercicios, diseñarás y crearás las **tablas principales** de una tienda online usando solo conceptos de **DDL y DML** (Sesión 14). Las características avanzadas como relaciones complejas, normalización y consultas con JOINs se verán en sesiones posteriores.

**Nota:** Trabaja sobre una nueva base de datos llamada `shopeasy`.

---

## Parte 1: DDL - Diseño del esquema

### 1. Crear la base de datos y tabla de categorías

1. Crea la base de datos `shopeasy`.
2. Crea la tabla `categorias` con:
   - `id`: SERIAL PRIMARY KEY
   - `nombre`: VARCHAR(100) NOT NULL UNIQUE
   - `descripcion`: TEXT

### 2. Crear tabla de usuarios

3. Crea la tabla `usuarios` con:
   - `id`: SERIAL PRIMARY KEY
   - `nombre`: VARCHAR(100) NOT NULL
   - `email`: VARCHAR(150) NOT NULL UNIQUE
   - `password`: VARCHAR(255) NOT NULL
   - `activo`: BOOLEAN DEFAULT true
   - `fecha_registro`: TIMESTAMP DEFAULT CURRENT_TIMESTAMP

### 3. Crear tabla de productos

4. Crea la tabla `productos` con:
   - `id`: SERIAL PRIMARY KEY
   - `nombre`: VARCHAR(200) NOT NULL
   - `descripcion`: TEXT
   - `precio`: NUMERIC(10,2) NOT NULL
   - `stock`: INTEGER NOT NULL DEFAULT 0
   - `categoria_id`: INTEGER (relación con categorías)
   - `imagen_url`: VARCHAR(500)
   - `fecha_creacion`: TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   - **Constraints:**
     - `precio > 0`
     - `stock >= 0`

### 4. Crear tabla de órdenes

5. Crea la tabla `ordenes` con:
   - `id`: SERIAL PRIMARY KEY
   - `usuario_id`: INTEGER (relación con usuarios)
   - `estado`: VARCHAR(30) NOT NULL (puede ser: PENDIENTE, ENVIADO, ENTREGADO, CANCELADO)
   - `total`: NUMERIC(12,2) NOT NULL
   - `fecha_orden`: DATE NOT NULL
   - **Constraint:** `total > 0`

### 5. Crear tabla de detalles de órdenes

6. Crea la tabla `orden_items` con:
   - `id`: SERIAL PRIMARY KEY
   - `orden_id`: INTEGER (relación con órdenes)
   - `producto_id`: INTEGER (relación con productos)
   - `cantidad`: INTEGER NOT NULL
   - `precio_unitario`: NUMERIC(10,2) NOT NULL
   - **Constraints:**
     - `cantidad > 0`
     - `precio_unitario > 0`

### 6. Modificar tablas existentes

7. Agrega a la tabla `usuarios` una columna `ciudad` de tipo VARCHAR(100).
8. Agrega a la tabla `ordenes` una columna `observaciones` de tipo TEXT con valor por defecto `'Sin observaciones'`.
9. Modifica la tabla `productos` para cambiar el tipo de `imagen_url` a VARCHAR(1000).

---

## Parte 2: DML - Poblar y manipular datos

### 10. Insertar categorías

10. Inserta al menos 5 categorías distintas:
    - Electrónica
    - Ropa
    - Hogar
    - Libros
    - Accesorios

### 11. Insertar usuarios

11. Inserta 4 usuarios con información completa (nombre, email, password hasheado ficticio, activo, ciudad).

### 12. Insertar productos

12. Inserta 8 productos distribuidos entre las categorías creadas, con valores realistas para precio y stock.

### 13. Insertar órdenes

13. Inserta 3 órdenes con diferentes usuarios, estados y fechas.

### 14. Insertar detalles de órdenes

14. Inserta al menos 6 registros en `orden_items` relacionando productos existentes con las órdenes creadas.

---

## Parte 3: DML - Actualizar y eliminar

### 15. Actualizar datos

15. Actualiza el `stock` de todos los productos cuyo `precio` sea mayor a 100, **restando** 5 unidades a cada uno.

16. Cambia el `estado` de la orden con `id = 1` a `ENTREGADO` y actualiza el `total` a 299.99.

17. Actualiza el email de un usuario específico (ej: `id = 1`).

18. Aumenta el `precio` en un 10% de todos los productos de la categoría 'Electrónica' (Pista: usa `UPDATE ... SET precio = precio * 1.1 WHERE ...`).

### 16. Eliminar datos

19. Elimina todos los `orden_items` con `cantidad = 1`.

20. Elimina todas las órdenes con `estado = 'CANCELADO'`.

21. Elimina todos los productos con `stock = 0`.

---

## Parte 4: Validación y documentación

### 17. Pruebas de constraints

22. Intenta insertar un producto con `precio = -50`. Registra el error que genera.

23. Intenta insertar una orden con `total = 0`. Registra el error que genera.

24. Intenta insertar un `orden_items` con `cantidad = -3`. Registra el error que genera.

### 18. TRUNCATE y reinicio de contadores

25. Trunca la tabla `orden_items` y reinicia sus contadores.

26. Inserta nuevamente 2 registros y verifica que los IDs reinicien desde 1.

---

## Parte 5: Desafío integrador (Opcional)

27. **Desafío:** Sin usar JOINs (eso es Sesión 15), realiza las siguientes operaciones:
    - Inserta una nueva orden para el usuario con `id = 1`, con estado `PENDIENTE` y una fecha actual.
    - Inserta 3 `orden_items` para esa orden, con productos y cantidades reales.
    - Calcula manualmente el `total` de la orden (cantidad × precio_unitario) y actualiza el campo `total`.
    - Documenta el proceso.

---

## Notas importantes

- **Relaciones sin FOREIGN KEY:** En estos ejercicios, las columnas `usuario_id`, `categoria_id`, etc., son solo referencias lógicas. Las restricciones de clave foránea real se verán en Sesión 15.
- **Próximas sesiones:** 
  - Sesión 15: Agregarás FOREIGN KEYs, entenderás normalización y aprenderás JOINs.
  - Luego: Más consultas avanzadas, vistas, y otros temas.

> Esta serie de ejercicios prepara el terreno para un diseño de base de datos profesional. Complétala antes de la Sesión 15.
