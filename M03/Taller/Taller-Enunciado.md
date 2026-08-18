<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Taller - Diseño e Implementación de una Base de Datos desde Cero

## Objetivo

Aplicar de forma práctica lo visto en las sesiones 13, 14 y 15 al caso de negocio de cada grupo: diseñar el modelo relacional de la primera versión de su sistema, implementarlo en PostgreSQL, cargarlo con datos y consultarlo. Este trabajo será la base para continuar construyendo el backend y el frontend del proyecto.

## Duración

1.5 - 2 horas

## Actividad

### Bloque 1 - Diseño

- Presentar brevemente el caso de negocio, los usuarios del sistema y las principales funcionalidades que se desean resolver.
- Identificar las entidades, atributos y relaciones necesarias para la primera versión de su sistema.
- Identificar las relaciones 1 a 1, 1 a N y N a M que existan en el caso. Cuando exista una relación N a M, resolverla mediante una tabla intermedia.
- Construir el Diagrama Entidad-Relación (ERD) e indicar las Primary Keys y Foreign Keys.

### Bloque 2 - Construcción del esquema

- Traducir el ERD a sentencias `CREATE TABLE`.
- Definir tipos de datos y constraints (`PK`, `FK`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`) según las necesidades del caso.
- Incluir al menos un valor automático mediante `DEFAULT`, por ejemplo, la fecha y hora de creación de un registro.
- Configurar las acciones referenciales (`ON UPDATE` y `ON DELETE`) de las Foreign Keys y justificar las decisiones principales.

### Bloque 3 - Carga y manipulación de datos

- Insertar datos de prueba con `INSERT INTO` (manual o generado con ayuda de un LLM).
- Practicar `UPDATE` y `DELETE FROM` sobre el esquema propio.
- Verificar que los datos de prueba respeten las restricciones y relaciones definidas.

### Bloque 4 - Consultas

- Responder preguntas de negocio usando `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`.
- Resolver entre 2 y 3 preguntas de negocio usando consultas sobre el esquema propio.
- Incluir, cuando el modelo lo permita, una consulta con `INNER JOIN`, una consulta con `JOIN` múltiple y una consulta con `LEFT JOIN` para identificar registros sin relación.
- Generar reportes con funciones de agregación (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).
- Incluir al menos una consulta de agregación o una consulta de validación de los datos cargados.

### Bloque 5 - Cierre

- Cada grupo presenta el enunciado de su caso de negocio, el alcance de la primera versión de su sistema y su ERD.
- Explicar las principales decisiones de diseño y mostrar 1 o 2 consultas clave sobre su propio esquema.

## Entregables

- Diagrama ERD (imagen o enlace a herramienta de diseño).
- Enunciado breve de su caso de negocio, usuarios, problema y alcance.
- Script SQL con la creación del esquema (`CREATE TABLE`).
- Script SQL con la carga de datos de prueba.
- Un script SQL con las operaciones de `UPDATE` y `DELETE` realizadas durante el taller.
- Entre 2 y 3 consultas que respondan preguntas de negocio relevantes para el caso elegido. Se recomienda incluir ejemplos con `JOIN`, `LEFT JOIN` y funciones de agregación, según corresponda al modelo.
