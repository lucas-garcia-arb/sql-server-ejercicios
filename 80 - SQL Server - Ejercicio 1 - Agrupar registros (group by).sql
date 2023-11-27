--1
IF OBJECT_ID('visitantes') IS NOT NULL
    DROP TABLE visitantes;
GO

--2
CREATE TABLE visitantes(
    nombre          VARCHAR(30), 
    edad            TINYINT, 
    sexo            CHAR(1) DEFAULT 'f', 
    domicilio       VARCHAR(30), 
    ciudad          VARCHAR(20) DEFAULT 'Cordoba', 
    telefono        VARCHAR(11), 
    mail            VARCHAR(30) DEFAULT 'no tiene', 
    montocompra     DECIMAL (6,2) 
);
GO

--3
INSERT INTO visitantes 
VALUES ('Susana Molina',35,default,'Colon 123',default,null,null,59.80); 
INSERT INTO visitantes 
VALUES ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50); 
INSERT INTO visitantes 
VALUES ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90); 
INSERT INTO visitantes (nombre,edad,sexo,telefono,mail) 
VALUES ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com'); 
INSERT INTO visitantes (nombre,ciudad,montocompra) 
VALUES ('Alejandra Gonzalez','La Falda',280.50); 
INSERT INTO visitantes (nombre,edad,sexo,ciudad,mail,montocompra) 
VALUES ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40); 
INSERT INTO visitantes 
VALUES ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85); 
INSERT INTO visitantes 
VALUES ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50); 
GO

--4
SELECT ciudad,
    COUNT(*) AS cantidad_visitantes
FROM visitantes
GROUP BY ciudad;

--5
SELECT ciudad,
    COUNT(telefono) AS telefonos_no_nulos
FROM visitantes
GROUP BY ciudad

--6
SELECT sexo,
    SUM(montocompra) AS monto_total_comprado
FROM visitantes
GROUP BY sexo;

--7
SELECT ciudad,
    sexo,
    MAX(montocompra) AS maximo_gasto,
    MIN(montocompra) AS minimo_gasto
FROM visitantes
GROUP BY sexo, ciudad;

--8
SELECT ciudad,
    AVG(montocompra) AS promedio_compra
FROM visitantes
GROUP BY ciudad;

--9
SELECT ciudad,
    COUNT(*) AS visitantes_con_email
FROM visitantes
WHERE not mail = 'no tiene'
GROUP BY ciudad;

--10
SELECT ciudad,
    COUNT(*) AS visitantes_con_email
FROM visitantes
WHERE not mail = 'no tiene'
GROUP BY ALL ciudad;