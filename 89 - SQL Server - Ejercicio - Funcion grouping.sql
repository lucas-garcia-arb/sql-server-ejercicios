--1
IF OBJECT_ID('empleados') IS NOT NULL
    DROP TABLE empleados; 

--2
CREATE TABLE empleados (
    documento       VARCHAR(8) NOT NULL,
    nombre          VARCHAR(30),
    sexo            CHAR(1),
    estadocivil     CHAR(1),--c=casado, s=soltero,v=viudo
    seccion         VARCHAR(20),
    PRIMARY KEY (documento)
); 

--3
INSERT INTO empleados VALUES
('22222222','Alberto Lopez','m','c','Sistemas'),
('23333333','Beatriz Garcia','f','c','Administracion'),
('24444444','Carlos Fuentes','m','s','Administracion'),
('25555555','Daniel Garcia','m','s','Sistemas'),
('26666666','Ester Juarez',null,'c','Sistemas'),
('27777777','Fabian Torres',null,'s','Sistemas'),
('28888888','Gabriela Lopez','f',null,'Sistemas'),
('29999999','Hector Garcia','m',null,'Administracion'); 

--4 
SELECT estadocivil,
	sexo,
	COUNT(*) cant_empleados
FROM empleados
GROUP BY sexo, estadocivil
WITH ROLLUP;

--5
SELECT estadocivil,
	sexo,
	COUNT(*) cant_empleados,
	GROUPING(estadocivil) agrupado_ec,
	GROUPING(sexo) agrupado_sexo
FROM empleados
GROUP BY sexo, estadocivil
WITH ROLLUP;

--6
SELECT estadocivil,
	sexo,
	COUNT(*) cant_empleados,
	GROUPING(estadocivil) agrupado_ec,
	GROUPING(sexo) agrupado_sexo
FROM empleados
GROUP BY sexo, estadocivil
WITH CUBE;