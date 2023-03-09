-- Inserción de datos en la tabla "pax"
INSERT INTO pax (first_name, last_name, documentacion, fecha_nacimiento, sexo)
VALUES
    ('Juan', 'Pérez', '12345678', '1990-01-01', 'M'),
    ('María', 'García', '87654321', '1995-05-15', 'F'),
    ('Pedro', 'Sánchez', '45678901', '1988-11-20', 'M');

-- Inserción de datos en la tabla "metodo_pago"
INSERT INTO metodo_pago (nombre)
VALUES
    ('Tarjeta de crédito'),
    ('Transferencia bancaria'),
    ('Efectivo');

-- Inserción de datos en la tabla "tipo_servicio"
INSERT INTO tipo_servicio (nombre_servicio)
VALUES
    ('AEREOS'),
    ('HOTELES'),
    ('TRASLADOS');

-- Inserción de datos en la tabla "tipo_factura"
INSERT INTO tipo_factura (tipo_factura, tipo_consumidor)
VALUES
    ('01', 'Consumidor final'),
    ('06', 'Crédito fiscal');

-- Inserción de datos en la tabla "factura"
INSERT INTO factura (id_metodo_pago, monto_total, id_tipo_factura, id_servicio)
VALUES
    (1, 1500.00, '01', 'AEREOS'),
    (2, 3000.00, '06', 'HOTELES'),
    (3, 500.00, '01', 'TRASLADOS');

-- Inserción de datos en la tabla "reserva"
INSERT INTO reserva (id_pax, id_metodo_pago, fecha_compra, id_servicio, id_facturacion)
VALUES
    (1, 1, '2022-01-01', 1, 1),
    (2, 2, '2022-02-15', 2, 2),
    (3, 3, '2022-03-20', 3, 3);