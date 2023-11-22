--1
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

--2
CREATE TABLE peliculas(
	codigo		INTEGER IDENTITY,
	titulo		VARCHAR(40),
	actor		VARCHAR(20),
	duracion	INTEGER,
	PRIMARY KEY(codigo)
);

--3
EXEC sp_columns peliculas;

--4
INSERT INTO peliculas (titulo,actor,duracion) VALUES
('Mision imposible','Tom Cruise',120),
('Harry Potter y la piedra filosofal','Daniel R.',180), 
('Harry Potter y la camara secreta','Daniel R.',190),
('Mision imposible 2','Tom Cruise',120),
('La vida es bella','zzz',220); 

--5
SELECT *
FROM peliculas;

--6
UPDATE peliculas
SET codigo=6
WHERE codigo=5;
GO

--7
DELETE
FROM peliculas
WHERE titulo='La vida es bella';

--8
INSERT INTO peliculas (titulo, actor, duracion) 
VALUES ('El rey león', null, 123);

--9
SELECT *
FROM peliculas;
