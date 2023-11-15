--1

IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;
GO

--2
CREATE TABLE alumnos(
	legajo			VARCHAR(4) NOT NULL,
	documento		VARCHAR(8),
	nombre			VARCHAR(30),
	domicilio		VARCHAR(30),
	PRIMARY KEY(documento),
	PRIMARY KEY(legajo)
);
--AGREGO SENTENCIA GO PARA PASAR EL ERROR Y SEGUIR EJECUTANDO
GO

CREATE TABLE alumnos(
	legajo			VARCHAR(4) NOT NULL,
	documento		VARCHAR(8),
	nombre			VARCHAR(30),
	domicilio		VARCHAR(30),
	PRIMARY KEY(documento),
);

--4
EXEC sp_columns alumnos;

--5
INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES
('A233','22345345','Perez Mariana','Colon 234'),
('A567','23545345','Morales Marcos','Avellaneda 348'); 

--6
INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES
('A567','23545345','Morales Marcos','Avellaneda 348'); 
--AGREGO SENTENCIA GO PARA PASAR EL ERROR Y SEGUIR EJECUTANDO
GO

--7
INSERT INTO alumnos (legajo,documento,nombre,domicilio) VALUES
('A334',NULL,'Perez Mariana','Colon 234');

SELECT *
FROM alumnos;