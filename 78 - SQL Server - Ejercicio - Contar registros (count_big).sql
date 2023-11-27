
--1
IF OBJECT_ID('medicamentos') IS NOT NULL
DROP TABLE medicamentos; 
GO

--2

CREATE TABLE medicamentos(
    codigo              INT IDENTITY,
    nombre              VARCHAR(20),
    laboratorio         VARCHAR(20),
    precio              DECIMAL(6,2),
    cantidad            TINYINT,
    fechavencimiento    DATETIME NOT NULL,
    numerolote          INT DEFAULT NULL,
    PRIMARY KEY (codigo)
);

GO
--3
INSERT INTO medicamentos VALUES
('Sertal','Roche',5.2,1,'2015-02-01',null),
('Buscapina','Roche',4.10,3,'2016-03-01',null),
('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null),
('Paracetamol 500','Bago',1.90,20,'2018-02-01',null),
('Bayaspirina',null,2.10,null,'2019-12-01',null),
('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

--4
SELECT COUNT_BIG(*)
FROM medicamentos;

--5
SELECT COUNT_BIG(DISTINCT laboratorio)
FROM medicamentos;

--6
SELECT COUNT_BIG(precio),
    COUNT_BIG(cantidad)
FROM medicamentos;