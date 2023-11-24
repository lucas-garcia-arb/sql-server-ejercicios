--1
IF OBJECT_ID('autos') IS NOT NULL
    DROP TABLE autos;

--2
CREATE TABLE autos (
    patente     CHAR(6),
    marca       VARCHAR(20),
    modelo      CHAR(4),
    precio      DECIMAL(8,2),
    PRIMARY KEY(patente)
);

--3
INSERT INTO autos VALUES
('ACD123','Fiat 128','1970',15000),
('ACG234','Renault 11','1980',40000),
('BCD333','Peugeot 505','1990',80000),
('GCD123','Renault Clio','1995',70000),
('BCC333','Renault Megane','1998',95000),
('BVF543','Fiat 128','1975',20000); 

--4 
SELECT *
FROM autos
WHERE modelo BETWEEN '1970' AND '1990'
ORDER BY modelo;

--5
SELECT *
FROM autos
WHERE precio BETWEEN 50000 AND 100000;
