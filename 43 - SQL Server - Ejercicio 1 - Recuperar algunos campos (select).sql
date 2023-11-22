IF object_id('peliculas') is not null
	DROP TABLE peliculas;

CREATE TABLE peliculas(
	titulo VARCHAR(20),
	actor VARCHAR(20),
	duracion INTEGER,
	cantidad INTEGER
);

EXEC sp_columns peliculas;

INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES 
('Mision imposible','Tom Cruise',180,3),
('Mision imposible 2','Tom Cruise',190,2),
('Mujer bonita','Julia Roberts',118,3),
('Elsa y Fred','China Zorrilla',110,2);

SELECT 
	titulo, 
	actor
FROM peliculas;

SELECT 
	titulo, 
	duracion
FROM peliculas;

SELECT 
	titulo, 
	cantidad
FROM peliculas;