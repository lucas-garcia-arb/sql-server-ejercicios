--1
IF OBJECT_ID('empleados') IS NOT NULL
    DROP TABLE empleados; 

--2
CREATE TABLE empleados(
    nombre          VARCHAR(30) not null,
    apellido        VARCHAR(20) not null,
    documento       CHAR(8),
    fechanacimiento DATETIME,
    fechaingreso    DATETIME,
    sueldo          DECIMAL(6,2),
    primary key(documento)
); 

--3
INSERT INTO empleados VALUES ('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50); 
INSERT INTO empleados VALUES ('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
INSERT INTO empleados VALUES ('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68); 
INSERT INTO empleados VALUES ('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25); 
INSERT INTO empleados VALUES ('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98); 

--4 hay 2 alternativas (usando concatenación o STUFF)
SELECT nombre + ' ' + UPPER(apellido) AS nombre_y_apellido,
    'DNI N° ' + documento AS DNI,
    '$ ' + LTRIM(STR(sueldo,30,2)) AS sueldo
    --es preferible pasarle un número grande al largo de STR(x,largo,decimales) y luego borrar los espacio con LTRIM()
    --por si luego se agregan valores más grandes
FROM empleados;

SELECT STUFF(UPPER(apellido),1,0,nombre + ' ') AS nombre_apellido,
	STUFF(documento,1,0, 'DNI N° ') AS documento,
	STUFF(sueldo, 1, 0, '$ ') AS sueldo
FROM empleados;

--5 hay 2 alternativas
SELECT documento,
    '$ ' + LTRIM(STR(CEILING(sueldo),30,2)) AS sueldo
    --CEILING(redondeo el número hacia arría)
    --STR(transformo el número a string, luego de haberlo redondeado) 
	--y lo paso por LTRIM para borrar los espacios
FROM empleados;
   
SELECT documento,
	STUFF(CEILING(sueldo),1,0,'$ ') as sueldo
FROM empleados;

--6 hay 2 alternativas (datepart o month)
SELECT nombre, 
    apellido
FROM empleados
WHERE DATEPART(month, fechaingreso) = 10;

SELECT nombre, 
    apellido
FROM empleados
WHERE MONTH(fechaingreso) = 10;

--7 hay 2 registros para 1998 y 2 para 2000
-- hay 2 alternativas para hacerlo (con DATEPART o con YEAR)
SELECT nombre
    apellido
FROM empleados
WHERE DATEPART(year, fechaingreso) = 1998;

SELECT nombre,
    apellido
FROM empleados
WHERE year(fechaingreso) = 1998;

SELECT nombre,
    apellido
FROM empleados
WHERE DATEPART(year, fechaingreso) = 2000;

SELECT nombre,
    apellido
FROM empleados
WHERE year(fechaingreso) = 2000;
