--1
IF OBJECT_ID('medicamentos') IS NOT NULL
    DROP TABLE medicamentos;
GO

--2
CREATE TABLE medicamentos (
    codigo              INT IDENTITY,
    nombre              VARCHAR(20),
    laboratorio         VARCHAR(20),
    precio              DECIMAL(6,2),
    cantidad            TINYINT,
    fechavencimiento    DATETIME NOT NULL,
    PRIMARY KEY(codigo)
);

--3
INSERT INTO medicamentos VALUES
('Sertal','Roche',5.2,1,'2015-02-01'),
('Buscapina','Roche',4.10,3,'2016-03-01'),
('Amoxidal 500','Bayer',15.60,100,'2017-05-01'),
('Paracetamol 500','Bago',1.90,20,'2018-02-01'),
('Bayaspirina','Bayer',2.10,150,'2019-12-01'),
('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01');

--4
SELECT nombre,
    precio
FROM medicamentos
WHERE laboratorio in ('Bayer', 'Bago');

--5
SELECT * 
FROM medicamentos
WHERE cantidad BETWEEN 1 AND 5;

SELECT * 
FROM medicamentos
WHERE cantidad IN (1,2,3,4,5);