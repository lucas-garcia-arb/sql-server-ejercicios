IF object_id('empleados') is not null
	DROP TABLE empleados;

CREATE TABLE empleados(
	nombre varchar(20),
 	documento varchar(8), 
 	sexo varchar(1), 
 	domicilio varchar(30),
 	sueldo_basico float
);

EXEC sp_columns empleados;

INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldo_basico) VALUES
('Juan Juarez','22333444','m','Sarmiento 123',500),
('Ana Acosta','27888999','f','Colon 134',700),
('Carlos Caseres','31222333','m','Urquiza 479',850);

SELECT *
FROM empleados;

SELECT
	nombre,
	documento,
	domicilio
FROM empleados;

SELECT
	documento,
	sexo,
	sueldo_basico
FROM empleados;