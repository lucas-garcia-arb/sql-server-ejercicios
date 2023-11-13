IF object_id('usuarios') is not null
	DROP TABLE usuarios;

CREATE TABLE usuarios (
	nombre VARCHAR(30),
	clave VARCHAR(10)
);

INSERT INTO usuarios (nombre, clave) VALUES
('Marcelo','River'),
('Susana','chapita'),
('CarlosFuentes','Boca'),
('FedericoLopez','Boca');

SELECT *
FROM usuarios;

DELETE
FROM usuarios
WHERE nombre = 'Marcelo';

SELECT *
FROM usuarios;

DELETE
FROM usuarios
WHERE nombre = 'Marcelo';

SELECT *
FROM usuarios;

DELETE
FROM usuarios;

SELECT *
FROM usuarios;