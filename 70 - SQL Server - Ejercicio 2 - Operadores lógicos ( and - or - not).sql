--1
IF OBJECT_ID('peliculas') IS NOT NULL
    DROP TABLE peliculas;

--2
CREATE TABLE peliculas(
    codigo          INTEGER IDENTITY,
    titulo          VARCHAR(40) NOT NULL,
    actor           VARCHAR(20),
    duracion        TINYINT,
    PRIMARY KEY (codigo)
);

--3
INSERT INTO peliculas VALUES
('Mision imposible','Tom Cruise',120),
('Harry Potter y la piedra filosofal','Daniel R.',180),
('Harry Potter y la camara secreta','Daniel R.',190),
('Mision imposible 2','Tom Cruise',120),
('Mujer bonita','Richard Gere',120),
('Tootsie','D. Hoffman',90),
('Un oso rojo','Julio Chavez',100),
('Elsa y Fred','China Zorrilla',110); 

--4
SELECT *
FROM peliculas
WHERE actor = 'Tom Cruise' OR actor = 'Richard Gere';

--5
SELECT *
FROM peliculas
WHERE actor = 'Tom Cruise' AND duracion < 100;

--6
UPDATE peliculas
SET duracion=200
WHERE actor = 'Daniel R.' AND duracion = 180;

SELECT *
FROM peliculas;

--7
DELETE
FROM peliculas
WHERE actor <> 'Tom Cruise' AND duracion <= 100;

SELECT *
FROM peliculas;