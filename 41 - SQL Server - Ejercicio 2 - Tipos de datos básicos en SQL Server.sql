IF object_id('empleados') IS NOT NULL
	DROP TABLE empleados;

CREATE TABLE empleados(
	nombre			VARCHAR(20),
	documento		VARCHAR(8),
	sexo			VARCHAR(1),
	domicilio		VARCHAR(30),
	sueldobasico	FLOAT
);

EXEC sp_columns empleados;

INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES
('Juan Perez','22333444','m','Sarmiento 123',500),
('Ana Acosta','24555666','f','Colon 134',650),
('Bartolome Barrios','27888999','m','Urquiza 479',800); 

SELECT *
FROM empleados;