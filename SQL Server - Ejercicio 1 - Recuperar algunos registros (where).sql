IF object_id('agenda') is not null
	DROP TABLE agenda;

CREATE TABLE agenda(
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

EXEC sp_columns agenda;

INSERT INTO agenda (apellido, nombre, domicilio, telefono) VALUES 
('Acosta', 'Ana', 'Colon 123', '4234567'),
('Bustamante', 'Betina', 'Avellaneda 135', '4458787'),
('Lopez', 'Hector', 'Salta 545', '4887788'),
('Lopez', 'Luis', 'Urquiza 333', '4545454'),
('Lopez', 'Marisa', 'Urquiza 333', '4545454');

SELECT *
FROM agenda;

SELECT *
FROM agenda
WHERE nombre = 'Marisa';

SELECT
	nombre,
	domicilio
FROM agenda
WHERE apellido = 'Lopez';

SELECT nombre
FROM agenda
WHERE telefono = '4545454';