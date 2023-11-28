-- 1
IF OBJECT_ID('visitantes') IS NOT NULL
DROP TABLE visitantes; 
GO

--2
CREATE TABLE visitantes(
    nombre          VARCHAR(30),
    edad            TINYINT,
    sexo            CHAR(1),
    domicilio       VARCHAR(30),
    ciudad          VARCHAR(20),
    telefono        VARCHAR(11),
    montocompra     DECIMAL(6,2) NOT NULL
); 
GO

--3
INSERT INTO visitantes VALUES 
('Susana Molina',28,'f',null,'Cordoba',null,45.50),
('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40),
('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25),
('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120),
('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20),
('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95),
('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50),
('Roxana Lopez',20,'f',null,'Alta Gracia',null,240),
('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48),
('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);
GO

--4
SELECT ciudad,
	sexo,
	SUM(montocompra) monto_compras
FROM visitantes
GROUP BY ciudad, sexo
HAVING SUM(montocompra) > 50;

--5
SELECT ciudad,
	sexo,
	SUM(montocompra) monto_compras
FROM visitantes
WHERE montocompra > 50 AND telefono IS NOT NULL
GROUP BY ALL ciudad, sexo
HAVING ciudad <> 'Cordoba'
ORDER BY ciudad;

--6
SELECT ciudad,
	MAX(montocompra) total_compra
FROM visitantes
WHERE sexo = 'f' AND domicilio IS NOT NULL
GROUP BY ciudad
HAVING MAX(montocompra) > 50;

--7
SELECT ciudad,
	sexo,
	COUNT(*) visitantes,
	SUM(montocompra) suma_total_compras,
	AVG(montocompra) promedio_compra
FROM visitantes
GROUP BY ciudad, sexo
HAVING AVG(montocompra) > 30;