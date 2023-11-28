--1
IF OBJECT_ID('clientes') IS NOT NULL
DROP TABLE clientes; 
GO

--2
create table clientes (
    codigo          INTEGER IDENTITY,
    nombre          VARCHAR(30) NOT NULL,
    domicilio       VARCHAR(30),
    ciudad          VARCHAR(20),
    provincia       VARCHAR(20),
    telefono        VARCHAR(11),
    PRIMARY KEY(codigo)
); 
GO

--3
INSERT INTO clientes VALUES
('Lopez Marcos','Colon 111','Cordoba','Cordoba','null'),
('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585'),
('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445'),
('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null),
('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685'),
('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525'),
('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455'),
('Lopez Carlos',null,'Cruz del Eje','Cordoba',null),
('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366'),
('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745'); 

--4
SELECT ciudad, 
	provincia, 
	COUNT(*) cantidad_clientes
FROM clientes
GROUP BY ciudad, provincia;

--5
SELECT ciudad, 
	provincia, 
	COUNT(*) cantidad_clientes
FROM clientes
GROUP BY ciudad, provincia
HAVING COUNT(*) >= 2;

--6
SELECT provincia,
	ciudad,
	COUNT(*) clientes_ciudad
FROM clientes
WHERE domicilio LIKE 'San Martin%'
GROUP BY ALL provincia, ciudad
HAVING COUNT(*) < 2 AND ciudad <> 'Cordoba';