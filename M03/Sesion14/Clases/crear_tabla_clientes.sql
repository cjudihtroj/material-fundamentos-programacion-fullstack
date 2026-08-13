CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL, 
    email VARCHAR(100) UNIQUE,
    direccion VARCHAR(255),
    edad INT CHECK (edad >= 18),
    estado VARCHAR(20) DEFAULT 'Activo'
);