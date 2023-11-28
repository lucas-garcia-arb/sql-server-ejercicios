--1
IF OBJECT_ID('notas') IS NOT NULL
DROP TABLE notas; 
GO

--2
CREATE TABLE notas(
documento CHAR(8) NOT NULL,
materia VARCHAR(30),
nota DECIMAL(4,2)
); 
GO

--3
INSERT INTO notas VALUES 
('22333444','Programacion',8),
('22333444','Programacion',9),
('22333444','Ingles',8),
('22333444','Ingles',7),
('22333444','Ingles',6),
('22333444','Sistemas de datos',10),
('22333444','Sistemas de datos',9),
('23444555','Programacion',5),
('23444555','Programacion',4),
('23444555','Programacion',3),
('23444555','Ingles',9),
('23444555','Ingles',7),
('23444555','Sistemas de datos',9),
('24555666','Programacion',1),
('24555666','Programacion',3.5),
('24555666','Ingles',4.5),
('24555666','Sistemas de datos',6); 

--4
SELECT documento, 
	materia, 
	AVG(nota) promedio
FROM notas
GROUP BY documento, materia
WITH ROLLUP;

--5
SELECT documento, 
	AVG(nota) promedio
FROM notas
GROUP BY documento
WITH ROLLUP;

--6
SELECT documento, 
	materia,
	COUNT(nota) cant_notas
FROM notas
GROUP BY documento, materia
ORDER BY documento;

--7
SELECT documento, 
	materia,
	COUNT(nota) cant_notas
FROM notas
GROUP BY documento, materia
WITH ROLLUP;

--8
SELECT documento,
	MAX(nota) mayor_nota,
	MIN(nota) menor_nota
FROM notas
GROUP BY documento
WITH ROLLUP;