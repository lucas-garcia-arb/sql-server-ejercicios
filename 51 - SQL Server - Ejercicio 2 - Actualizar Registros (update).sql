IF object_id('libros') is not null
	DROP TABLE libros;

CREATE TABLE libros(
	titulo		VARCHAR(30),
	autor		VARCHAR(20),
	editorial	VARCHAR(15),
	precio		FLOAT
);

INSERT INTO libros (titulo, autor, editorial, precio) VALUES 
('El aleph','Borges','Emece',25.00),
('Martin Fierro','Jose Hernandez','Planeta',35.50),
('Aprenda PHP','Mario Molina','Emece',45.50),
('Cervantes y el quijote','Borges','Emece',25),
('Matematica estas ahi','Paenza','Siglo XXI',15);

SELECT *
FROM libros;

UPDATE libros
SET autor='Adrian Paenza'
WHERE autor='Paenza';

SELECT *
FROM libros;

UPDATE libros
SET autor='Adrian Paenza'
WHERE autor='Paenza';

SELECT *
FROM libros;

UPDATE libros
SET precio='27'
WHERE autor='Mario Molina';

SELECT *
FROM libros;

UPDATE libros
SET editorial='Emece S.A.'
WHERE editorial='Emece';

SELECT *
FROM libros;
