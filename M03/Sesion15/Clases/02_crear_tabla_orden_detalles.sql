CREATE TABLE orden_detalles (
    orden_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL,

    PRIMARY KEY (orden_id, producto_id),

    CONSTRAINT fk_orden_detalles_ordenes
        FOREIGN KEY (orden_id)
        REFERENCES ordenes(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_orden_detalles_productos
        FOREIGN KEY (producto_id)
        REFERENCES productos(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
