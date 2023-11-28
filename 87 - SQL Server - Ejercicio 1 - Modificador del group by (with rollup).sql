--1
IF OBJECT_ID('ventas') IS NOT NULL
DROP TABLE ventas; 
GO

--2
CREATE TABLE ventas(
	numero 				INT IDENTITY,
	montocompra 		DECIMAL(6,2),
	tipopago 			CHAR(1),--c=contado, t=tarjeta
	vendedor 			VARCHAR(30),
	PRIMARY KEY (numero)
); 
GO

--3
INSERT INTO ventas VALUES
(100.50,'c','Marisa Perez'),
(200,'c','Marisa Perez'),
(50,'t','Juan Lopez'),
(220,'c','Juan Lopez'),
(150,'t','Marisa Perez'),
(550.80,'c','Marisa Perez'),
(300,'t','Juan Lopez'),
(25,'c','Marisa Perez'); 

--4
SELECT vendedor,
	tipopago,
	count(*) ventas_realizadas
FROM ventas
GROUP BY vendedor, tipopago
WITH ROLLUP;

--5
SELECT vendedor,
	tipopago,
	count(*) ventas_realizadas
FROM ventas
GROUP BY vendedor, tipopago
WITH CUBE;