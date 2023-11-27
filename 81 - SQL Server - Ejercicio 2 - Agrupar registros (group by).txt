--1
IF OBJECT_ID('empleados') IS NOT NULL
DROP TABLE empleados; 
GO

--2
CREATE TABLE empleados(
    nombre              VARCHAR(30),
    documento           CHAR(8),
    domicilio           VARCHAR(30),
    seccion             VARCHAR(20),
    sueldo              DECIMAL(6,2),
    cantidadhijos       TINYINT,
    fechaingreso        DATETIME,
    PRIMARY KEY(documento)
); 
GO

--3
INSERT INTO empleados VALUES
('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10'), 
('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12'), 
('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25'), 
('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25'), 
('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01'), 
('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01'), 
('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01'), 
('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01'), 
('Andres Costa','28444555',default,'Secretaria',null,null,null); 
GO

--4
SELECT seccion,
    COUNT(*) AS empleados
FROM empleados
GROUP BY seccion;

--5
SELECT seccion,
	AVG(cantidadhijos) AS cantidad_hijos
FROM empleados
GROUP BY seccion;

--6
SELECT DATEPART(year, fechaingreso) AS anio_ingreso,
	COUNT(*) empleados
FROM empleados
GROUP BY DATEPART(year, fechaingreso);

--7
SELECT seccion,
	AVG(sueldo) AS sueldo_promedio
FROM empleados
WHERE cantidadhijos > 0
GROUP BY seccion;

--8
SELECT seccion,
	AVG(sueldo) AS sueldo_promedio
FROM empleados
WHERE cantidadhijos > 0
GROUP BY ALL seccion;