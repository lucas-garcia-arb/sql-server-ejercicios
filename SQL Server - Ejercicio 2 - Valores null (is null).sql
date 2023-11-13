--1
IF OBJECT_ID('peliculas') is not null
	DROP TABLE peliculas;

--2
CREATE TABLE peliculas (
	codigo		INTEGER NOT NULL,
	titulo		VARCHAR(40) NOT NULL,
	actor		VARCHAR(20),
	duracion	INT
);

--3
EXEC sp_columns peliculas;

--4
INSERT INTO peliculas (codigo, titulo, actor, duracion) VALUES
(1,'Mision imposible','Tom Cruise',120),
(2,'Harry Potter y la piedra filosofal',null,180),
(3,'Harry Potter y la camara secreta','Daniel R.',null),
(0,'Mision imposible 2','',150),
(4,'','L. Di Caprio',220),
(5,'Mujer bonita','R. Gere-J. Roberts',0);

--5
SELECT *
FROM peliculas;

--6
INSERT INTO peliculas (codigo,titulo,actor,duracion)
VALUES(null,'Mujer bonita','R. Gere-J. Roberts',190);

--7
SELECT *
FROM peliculas
WHERE actor IS NULL;

SELECT *
FROM peliculas
WHERE actor = '';

