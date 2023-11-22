--1
IF OBJECT_ID('articulos') IS NOT NULL
    DROP TABLE articulos;

--2
CREATE TABLE articulos(
    codigo          INTEGER IDENTITY,
    nombre          VARCHAR(20),
    descripcion     VARCHAR(30),
    precio          SMALLMONEY,
    cantidad        TINYINT DEFAULT 0,
    PRIMARY KEY (codigo)
);

--3
INSERT INTO articulos (nombre, descripcion, precio,cantidad)
VALUES ('impresora','Epson Stylus C45',400.80,20);

INSERT INTO articulos (nombre, descripcion, precio)
VALUES ('impresora','Epson Stylus C85',500);

INSERT INTO articulos (nombre, descripcion, precio)
VALUES ('monitor','Samsung 14',800);

INSERT INTO articulos (nombre, descripcion, precio,cantidad)
VALUES ('teclado','ingles Biswal',100,50);

SELECT * 
FROM articulos;

--4
UPDATE articulos 
SET precio=precio+(precio*0.15);

--5
SELECT *
FROM articulos;

--6
SELECT codigo,
    nombre + ',' + descripcion,
    precio,
    cantidad
FROM articulos;

--7
UPDATE articulos
SET precio=precio-5
WHERE nombre='teclado';

SELECT *
FROM articulos;