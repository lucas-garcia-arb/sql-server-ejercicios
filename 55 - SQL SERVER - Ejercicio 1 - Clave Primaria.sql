--1
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

--2
CREATE TABLE libros(
	codigo		INTEGER NOT NULL,
	titulo		VARCHAR(40) NOT NULL,
	autor		VARCHAR(20),
	editorial	VARCHAR(15),
	PRIMARY KEY (codigo)
);

--3
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES
(1,'El aleph','Borges','Emece'),
(2,'Martin Fierro','Jose Hernandez','Planeta'),
(3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

--4
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES
(3,'Aprenda NodeJS','Gaby','Arbusta Platform');

--5
INSERT INTO libros (codigo,titulo,autor,editorial) VALUES
(null,'React Js','Gaby','Campus Arbusta');

--6
UPDATE libros
SET codigo=1
WHERE titulo='Martin Fierro';

SELECT *
FROM libros;