--1
IF OBJECT_ID('empleados') IS NOT NULL
DROP TABLE empleados; 
GO

--2
CREATE TABLE empleados(
    nombre          VARCHAR(30),
    documento       CHAR(8),
    domicilio       VARCHAR(30),
    seccion         VARCHAR(20),
    sueldo          DECIMAL(6,2),
    cantidadhijos   TINYINT,
    PRIMARY KEY(documento)
); 
GO

--3
INSERT INTO empleados VALUES
('Juan Perez','22333444','Colon 123','Gerencia',5000,2),
('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0),
('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1),
('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3),
('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0),
('Yolanda Perez','35111222','Colon 180','Administracion',3200,1),
('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3),
('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4),
('Andres Costa','28444555',DEFAULT,'Secretaria',NULL,NULL); 
GO

--4
SELECT COUNT(*) cant_empleados
FROM empleados;

--5
SELECT COUNT(sueldo)
FROM empleados;

--6
SELECT MAX(sueldo) sueldo_mas_alto,
    MIN(sueldo) sueldo_mas_bajo
FROM empleados;

--7
SELECT MAX(cantidadhijos) cantidad_hijos
FROM empleados
WHERE nombre LIKE '%Perez%';

--8
SELECT AVG(sueldo) sueldo_promedio
FROM empleados;

--9
SELECT AVG(sueldo) sueldo_prom_secretarias
FROM empleados
WHERE seccion LIKE '%Secretar__%';

--10
SELECT AVG(cantidadhijos) cant_hijos_sistemas
FROM empleados
WHERE seccion = 'Sistemas';