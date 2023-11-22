--1
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

--2
CREATE TABLE peliculas(
	codigo		INTEGER IDENTITY(50,3),
	titulo		VARCHAR(40),
	actor		VARCHAR(20),
	duracion	INTEGER
);

--3
INSERT INTO peliculas (titulo,actor,duracion) VALUES 
('Mision imposible','Tom Cruise',120),
('Harry Potter y la piedra filosofal','Daniel R.',180),
('Harry Potter y la camara secreta','Daniel R.',190); 

--4
SELECT * 
FROM peliculas;

--5
SET IDENTITY_INSERT peliculas ON;

--6
INSERT INTO peliculas (codigo, titulo,actor,duracion) VALUES 
(30,'Godfather','Al Pacino', 190);

--7
INSERT INTO peliculas (codigo, titulo,actor,duracion) VALUES 
(57,'Godfather II','Robert De Niro', 190);

--8
SELECT IDENT_SEED('peliculas');

--9
SELECT IDENT_INCR('peliculas');

GO

--10
INSERT INTO peliculas (titulo,actor,duracion) VALUES 
('Godfather III','Robert De Niro', 192);

--Salta error, agrego GO para evistar el fin de la query
GO 


--11
SET IDENTITY_INSERT peliculas OFF;

--12
INSERT INTO peliculas (titulo,actor,duracion) VALUES 
('Harry Potter and The Prisoner of Azkaban','Daniel Radcliffe', 120);

SELECT *
FROM peliculas;