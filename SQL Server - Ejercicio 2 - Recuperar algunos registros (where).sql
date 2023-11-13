IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros(
	titulo VARCHAR(20),
	autor VARCHAR(30),
	editorial VARCHAR(15)
);

EXEC sp_columns libros;

INSERT INTO libros (titulo, autor, editorial) VALUES 
('El aleph', 'Borges', 'Emece'),
('Martin Fierro', 'Jos� Hernandez', 'Emece'),
('Martin Fierro', 'Jos� Hernandez', 'Planeta'),
('Aprenda PHP', 'Mario Molina', 'Siglo XXI');

SELECT *
FROM libros
WHERE autor = 'Borges';

SELECT titulo
FROM libros
WHERE editorial = 'Emece';

SELECT editorial
FROM libros
WHERE titulo = 'Martin Fierro';
