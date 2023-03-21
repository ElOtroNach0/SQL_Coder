CREATE SCHEMA vendedores;

CREATE TABLE vendedor (
 id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL UNIQUE,
 telefono VARCHAR(20) NOT NULL
);

CREATE TABLE servicio_vendedor (
 id_servicio INT NOT NULL,
 id_vendedor INT NOT NULL,
 PRIMARY KEY (id_servicio, id_vendedor),
 FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio),
 FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

CREATE TABLE factura_vendedor (
 id_facturacion INT NOT NULL,
 id_vendedor INT NOT NULL,
 PRIMARY KEY (id_facturacion, id_vendedor),
 FOREIGN KEY (id_facturacion) REFERENCES factura(id_facturacion),
 FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);