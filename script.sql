-- Creación de la tabla pax
CREATE TABLE pax (
  id_pasajero INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  documentacion VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  sexo VARCHAR(10) NOT NULL
);

-- Creación de la tabla tipo_servicio
CREATE TABLE tipo_servicio (
  id_servicio INT PRIMARY KEY AUTO_INCREMENT,
  nombre_servicio VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL
);

-- Creación de la tabla factura
CREATE TABLE factura (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha_emision DATE NOT NULL,
  monto_total DECIMAL(10,2) NOT NULL,
  tipo_factura VARCHAR(50) NOT NULL
);

-- Creación de la tabla metodo_pago
CREATE TABLE metodo_pago (
  id_metodo_pago INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL
);