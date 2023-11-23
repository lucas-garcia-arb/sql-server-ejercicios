--1
IF OBJECT_ID('medicamentos') IS NOT NULL
    DROP TABLE medicamentos;

-- 2
CREATE TABLE medicamentos (
    codigo          INTEGER IDENTITY,
    nombre          VARCHAR(20),
    laboratorio     VARCHAR(20),
    precio          DECIMAL(5,2),
    cantidad        TINYINT,
    PRIMARY KEY(codigo)
);

--3
INSERT INTO medicamentos
VALUES('Sertal','Roche',5.2,100),
('Buscapina','Roche',4.10,200),
('Amoxidal 500','Bayer',15.60,100),
('Paracetamol 500','Bago',1.90,200),
('Bayaspirina','Bayer',2.10,150),
('Amoxidal jarabe','Bayer',5.10,250); 

-- 4
SELECT codigo,
    nombre
FROM medicamentos
WHERE laboratorio='Roche' AND precio<5;

--5
SELECT * 
FROM medicamentos
WHERE laboratorio='Roche' OR precio < 5;

--6
SELECT *
FROM medicamentos
WHERE laboratorio<>'Bayer' AND cantidad = 100;

--7
SELECT *
FROM medicamentos
WHERE laboratorio = 'Bayer' AND cantidad <> 100;

--8
DELETE
FROM medicamentos
WHERE laboratorio = 'Bayer' AND precio > 10;

--9
UPDATE medicamentos
SET cantidad=200
WHERE laboratorio='Roche' AND precio > 5;

--10
DELETE
FROM medicamentos
WHERE laboratorio='Bayer' OR precio < 3;

SELECT *
FROM medicamentos;