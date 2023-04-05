CREATE TABLE pax (
  id_pasajero INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  documentacion VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  sexo VARCHAR(10) NOT NULL,
);

CREATE TABLE tipo_servicio (
  id_reserva INT PRIMARY KEY AUTO_INCREMENT,
  id_pax id_metodo_pago INT NOT NULL,
fecha_compra DATE NOT NULL,
id_servicio INT NOT NULL,
id_facturacion INT NOT NULL,
);

CREATE TABLE tipo_servicio (
  id_servicio INT PRIMARY KEY AUTO_INCREMENT,
  nombre_servicio VARCHAR(50) NOT NULL,
);

CREATE TABLE factura (
  id_facturacion INT PRIMARY KEY AUTO_INCREMENT,
  id_metodo_pago INT NOT NULL,
  monto_total DECIMAL(10,2) NOT NULL,
  id_tipo_factura VARCHAR(50) NOT NULL
id_servicio VARCHAR(255) NOT NULL,	
);

CREATE TABLE metodo_pago (
  id_metodo_pago INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE TipoFactura (
  id_tipo_factura INT PRIMARY KEY AUTO_INCREMENT,
  tipo_factura VARCHAR(2) NOT NULL,
tipo_consumidor VARCHAR(50),
);