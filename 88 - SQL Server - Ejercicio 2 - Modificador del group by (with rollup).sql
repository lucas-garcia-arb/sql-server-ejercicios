--1
IF OBJECT_ID('visitantes') IS NOT NULL
DROP TABLE visitantes; 
GO

--2
CREATE TABLE visitantes(
	nombre 			VARCHAR(30),
	edad 			TINYINT,
	sexo 			CHAR(1),
	domicilio 		VARCHAR(30),
	ciudad 			VARCHAR(20),
	mail		 	VARCHAR(30) DEFAULT 'no tiene',
	montocompra 	DECIMAL(6,2)
); 
GO

--3
INSERT INTO visitantes VALUES
('Susana Molina',28,'f',null,'Cordoba',null,45.50),
('Marcela Mercado',36,'f','Avellaneda 345','Cordoba',default,22.40),
('Alberto Garcia',35,'m',default,'Alta Gracia','albertogarcia@hotmail.com',25),
('Teresa Garcia',33,'f',default,'Alta Gracia',default,120),
('Roberto Perez',45,'m',null,'Cordoba','robertoperez@xaxamail.com',33.20),
('Marina Torres',22,'f',null,'Villa Dolores',default,95),
('Julieta Gomez',24,'f','San Martin 333','Alta Gracia','julietagomez@gmail.com',53.50),
('Roxana Lopez',20,'f',null,'Alta Gracia',default,240),
('Liliana Garcia',50,'f','Paso 999','Cordoba',default,48),
('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

--4
--ROLLUP
SELECT ciudad,
	sexo,
	SUM(montocompra) monto_total_compra
FROM visitantes
GROUP BY sexo, ciudad
WITH ROLLUP;
--CUBE
SELECT ciudad,
	sexo,
	SUM(montocompra) monto_total_compra
FROM visitantes
GROUP BY sexo, ciudad
WITH CUBE;

--5

--ROLLUP
SELECT ciudad,
	sexo,
	AVG(edad) promedio_edad
FROM visitantes
WHERE mail IS NOT NULL AND NOT mail = 'no tiene'
GROUP BY sexo, ciudad
WITH ROLLUP;

--CUBE
SELECT ciudad,
	sexo,
	AVG(edad) promedio_edad
FROM visitantes
WHERE mail IS NOT NULL AND NOT mail = 'no tiene'
GROUP BY sexo, ciudad;