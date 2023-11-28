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
    estado          VARCHAR(20),
    pais            VARCHAR(20),
    PRIMARY KEY(codigo)
); 
GO

--3
INSERT INTO clientes VALUES
('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina'),
('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina'),
('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina'),
('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina'),
('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina'),
('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina'),
('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina'),
('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina'),
('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile'),
('German Rojas','Allende 345', 'Valparaiso','Region V','Chile'),
('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile'),
('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico'); 

--4
SELECT pais,
	COUNT(*) cant_clientes,
GROUPING(pais) agrupado_por
FROM clientes
GROUP BY pais
WITH ROLLUP;

--5
SELECT pais,
	estado,
	COUNT(*) cant_clientes
FROM clientes
GROUP BY pais, estado
WITH ROLLUP;

--6
SELECT pais,
	estado,
	ciudad,
	COUNT(*) cant_clientes
FROM clientes
GROUP BY pais, estado, ciudad
WITH ROLLUP;