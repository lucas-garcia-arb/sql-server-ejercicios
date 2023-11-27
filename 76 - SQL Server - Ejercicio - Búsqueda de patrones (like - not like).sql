--1
IF OBJECT_ID('empleados') IS NOT NULL
DROP TABLE empleados; 

GO
--2
CREATE TABLE empleados(
    nombre          VARCHAR(30),
    documento       CHAR(8),
    domicilio       VARCHAR(30),
    fechaingreso    DATETIME,
    seccion         VARCHAR(20),
    sueldo          DECIMAL(6,2),
    PRIMARY KEY(documento)
); 

GO

--3
INSERT INTO empleados VALUES
('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50),
('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30),
('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790),
('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550),
('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70),
('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400),
('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800); 

--4
SELECT *
FROM empleados
WHERE nombre LIKE '%Perez%';

--5
SELECT *
FROM empleados
WHERE domicilio LIKE 'Co%' AND domicilio LIKE '%8%';

--6
SELECT *
FROM empleados
WHERE documento LIKE '%[02468]';

--7
SELECT *
FROM empleados
WHERE documento NOT LIKE '[13]%'
AND nombre LIKE '%ez';

--8
SELECT *
FROM empleados
WHERE nombre LIKE '%[yj]%';

--9
SELECT nombre,
	seccion
FROM empleados
WHERE seccion LIKE '[SG]%'
AND LEN(seccion) = 8;

--10
SELECT nombre,
	seccion
FROM empleados
WHERE seccion LIKE '[^SG]%';

--11
SELECT nombre,
	sueldo
FROM empleados
WHERE sueldo NOT LIKE '%.00';

--12
SELECT *
FROM empleados 
WHERE fechaingreso LIKE '%1990%';
