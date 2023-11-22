--1
IF OBJECT_ID('prestamos') IS NOT NULL
    DROP TABLE prestamos;

--2
CREATE TABLE prestamos(
    titulo              VARCHAR(40)     NOT NULL,
    documento           CHAR(8)         NOT NULL,
    fechaprestamo       DATETIME        NOT NULL,
    fechadevolucion     DATETIME,
    devuelto            CHAR(1)         DEFAULT 'n'
);

--3
INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');

INSERT INTO prestamos (titulo,documento,fechaprestamo)
VALUES ('Alicia en el pais de las maravillas','23456789','2006-12-16');

INSERT INTO prestamos (titulo,documento,fechaprestamo,fechadevolucion)
VALUES ('El aleph','22543987','2006-12-16','2006-08-19');

INSERT INTO prestamos (titulo,documento,fechaprestamo,devuelto)
VALUES ('Manual de geografia 5 grado','25555666','2006-12-18','s'); 

--4
SELECT * 
FROM prestamos;

--5
INSERT INTO prestamos (titulo, documento, fechaprestamo, fechadevolucion, devuelto)
VALUES ('Atomic Habits', '43211123', '2006-10-20', NULL, DEFAULT);

SELECT * 
FROM prestamos;

--6
INSERT INTO prestamos DEFAULT VALUES;