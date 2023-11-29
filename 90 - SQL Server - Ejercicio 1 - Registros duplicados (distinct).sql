--1
IF OBJECT_ID('clientes') IS NOT NULL
DROP TABLE clientes; 
GO

--2
CREATE TABLE clientes (
    codigo          INT IDENTITY,
    nombre          VARCHAR(30) NOT NULL,
    domicilio       VARCHAR(30),
    ciudad          VARCHAR(20),
    provincia       VARCHAR (20),
    PRIMARY KEY(codigo)
); 
GO

--3
INSERT INTO clientes VALUES 
('Lopez Marcos','Colon 111','Cordoba','Cordoba'),
('Perez Ana','San Martin 222','Cruz del Eje','Cordoba'),
('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba'),
('Perez Luis','Sarmiento 444','Rosario','Santa Fe'),
('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba'),
('Gomez Ines','San Martin 666','Santa Fe','Santa Fe'),
('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba'),
('Lopez Carlos',null,'Cruz del Eje','Cordoba'),
('Ramos Betina','San Martin 999','Cordoba','Cordoba'),
('Lopez Lucas','San Martin 1010','Posadas','Misiones'); 
GO

--4 
SELECT DISTINCT provincia
FROM clientes;

--5
SELECT COUNT(DISTINCT provincia) cant_provincias
FROM clientes;

--6
SELECT DISTINCT ciudad
FROM clientes;

--7
SELECT COUNT(DISTINCT ciudad) cant_ciudades
FROM clientes;

--8
SELECT COUNT(DISTINCT ciudad) cant_ciudades_cordoba
FROM clientes
WHERE provincia = 'Cordoba';

--9
SELECT provincia,
    COUNT(DISTINCT ciudad) cant_ciudades
FROM clientes
GROUP BY provincia;