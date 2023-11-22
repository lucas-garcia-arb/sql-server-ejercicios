--1
IF OBJECT_ID('medicamentos') is not null
	DROP TABLE medicamentos;
--2

CREATE TABLE medicamentos(
	codigo INTEGER NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	laboratorio VARCHAR(20),
	precio FLOAT,
	cantidad INTEGER NOT NULL
);

--3
EXEC sp_columns medicamentos;

--4
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) VALUES 
(1,'Sertal gotas',null,null,100),
(2,'Sertal compuesto',null,8.90,150),
(3,'Buscapina','Roche',null,200); 
--5
SELECT * FROM medicamentos;

--6
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) 
VALUES (4,'Bayaspirina','',0,150); 

--7
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) 
VALUES (0,'','Bayer',15.60,0); 

--8
SELECT *
FROM medicamentos;

--9
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) 
VALUES (null,'Amoxidal jarabe','Bayer',25,120); 

--10
SELECT *
FROM medicamentos
WHERE laboratorio IS NULL;

SELECT *
FROM medicamentos
WHERE laboratorio = '';

--11
SELECT *
FROM medicamentos
WHERE precio IS NULL;

SELECT *
FROM medicamentos
WHERE precio = 0;

--12
SELECT *
FROM medicamentos
WHERE laboratorio <> '';

SELECT *
FROM medicamentos
WHERE laboratorio IS NOT NULL;

--13
SELECT *
FROM medicamentos
WHERE precio <> 0;

SELECT *
FROM medicamentos
WHERE precio IS NOT NULL;