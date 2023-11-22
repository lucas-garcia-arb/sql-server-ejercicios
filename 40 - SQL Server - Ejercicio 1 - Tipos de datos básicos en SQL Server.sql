if object_id('peliculas') is not null
	drop table peliculas;

CREATE TABLE peliculas(
	nombre VARCHAR(20),
	actor VARCHAR(20),
	duracion INTEGER,
	cantidad INTEGER
);

EXEC sp_columns peliculas;

INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES
('Misión imposible', 'Tom Cruise', 128, 3),
('Misión imposible 2', 'Tom Cruise', 130, 2),
('Mujer Bonita', 'Julia Roberts', 118, 3),
('Elsa y Fred', 'China Zorrilla', 110, 2);

SELECT *
FROM peliculas;