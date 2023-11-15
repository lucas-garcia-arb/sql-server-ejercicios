--1
IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos; 
--2

CREATE TABLE medicamentos(
	codigo			INTEGER IDENTITY,
	nombre			VARCHAR(20) NOT NULL,
	laboratorio		VARCHAR(20),
	precio			FLOAT,
	cantidad		INTEGER
); 

--3
EXEC sp_columns medicamentos;

--4
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad) VALUES
('Sertal','Roche',5.2,100),
('Buscapina','Roche',4.10,200),
('Amoxidal 500','Bayer',15.60,100); 

--5
SELECT *
FROM medicamentos;

--6
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) 
VALUES(4,'Sertal','Roche',5.2,100);
GO --Evito error de ejecución

--7
UPDATE medicamentos
SET codigo=5
WHERE codigo=1;
GO --Evito error de ejecución

--8
DELETE
FROM medicamentos
WHERE codigo=3;

SELECT *
FROM medicamentos;

--9
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad) 
VALUES('Amoxilina 500','Bayer',15.60,100);

--10
SELECT *
FROM medicamentos;