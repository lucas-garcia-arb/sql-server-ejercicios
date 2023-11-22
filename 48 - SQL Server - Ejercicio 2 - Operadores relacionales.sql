IF object_id('peliculas') is not null
	DROP TABLE peliculas;

CREATE TABLE peliculas (
	titulo		VARCHAR(20),
	actor		VARCHAR(20),
	duracion	INTEGER,
	cantidad	INTEGER
);

INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES 
('Mision imposible','Tom Cruise',120,3),
('Mision imposible 2','Tom Cruise',180,4),
('Mujer bonita','Julia R.',90,1),
('Elsa y Fred','China Zorrilla',80,2);

SELECT *
FROM peliculas
WHERE duracion <= 90;

SELECT titulo
FROM peliculas
WHERE actor <> 'Tom Cruise';

SELECT 
	titulo,
	actor,
	cantidad
FROM peliculas
WHERE cantidad > 2;