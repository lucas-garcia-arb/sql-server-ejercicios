--1
IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

--2
CREATE TABLE medicamentos(
	codigo			INTEGER IDENTITY(10,1),
	nombre			VARCHAR(20) NOT NULL,
	laboratorio		VARCHAR(20),
	precio			FLOAT,
	cantidad		INTEGER
);

--3
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad) VALUES
('Sertal','Roche',5.2,100),
('Buscapina','Roche',4.10,200),
('Amoxidal 500','Bayer',15.60,100); 

--4
SELECT *
FROM medicamentos;

--5
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad) VALUES
(23,'Sertal','Roche',5.2,100);

--6
SET identity_insert medicamentos on;

--7
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
VALUES('Amoxilina 500','Bayer',15.60,100); 

--8
INSERT INTO medicamentos (codigo,nombre,laboratorio,precio,cantidad)
VALUES(12,'Amoxilina 500','Bayer',15.60,100);

--9
SELECT IDENT_SEED('medicamentos');

--10
SELECT IDENT_INCR('medicamentos');