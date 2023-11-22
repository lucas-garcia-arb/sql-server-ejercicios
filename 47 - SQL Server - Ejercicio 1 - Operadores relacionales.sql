IF object_id('articulos') is not null
	DROP TABLE articulos;

CREATE TABLE articulos(
	codigo		INTEGER,
	nombre		VARCHAR(20),
	descripcion VARCHAR(30),
	precio		FLOAT,
	cantidad	INTEGER
);

EXEC sp_columns articulos;

INSERT INTO articulos (codigo, nombre, descripcion, precio, cantidad) VALUES 
(1,'impresora','Epson Stylus C45',400.80,20),
(2,'impresora','Epson Stylus C85',500,30),
(3,'monitor','Samsung 14',800,10),
(4,'teclado','ingles Biswal',100,50),
(5,'teclado','español Biswal',90,50);

SELECT *
FROM articulos
WHERE nombre = 'impresora';

SELECT *
FROM articulos
WHERE precio >= 400;

SELECT
	codigo,
	nombre
FROM articulos
WHERE cantidad > 30;

SELECT
	nombre,
	descripcion
FROM articulos
WHERE precio <> 100;

