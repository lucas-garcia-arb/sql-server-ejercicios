--1
IF OBJECT_ID('peliculas') IS NOT NULL
    DROP TABLE peliculas;

--2
CREATE TABLE peliculas (
    codigo      INTEGER IDENTITY,
    titulo      VARCHAR(40) not null,
    actor       VARCHAR(20),
    duracion    TINYINT,
    PRIMARY KEY (codigo)
);

--3
INSERT INTO peliculas VALUES
('Mision imposible','Tom Cruise',120),
('Harry Potter y la piedra filosofal','Daniel R.',null),
('Harry Potter y la camara secreta','Daniel R.',190),
('Mision imposible 2','Tom Cruise',120),
('Mujer bonita',null,120),
('Tootsie','D. Hoffman',90);

INSERT INTO peliculas (titulo)
VALUES('Un oso rojo'); 

--4
SELECT *
FROM peliculas
WHERE actor IS NULL;

--5
UPDATE peliculas
SET duracion = 0
WHERE duracion IS NULL;

-- 6
DELETE
FROM peliculas
WHERE actor IS NULL AND duracion = 0;