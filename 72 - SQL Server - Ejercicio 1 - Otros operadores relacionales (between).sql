--1
IF OBJECT_ID('visitas') IS NOT NULL
    DROP TABLE visitas;

--2
CREATE TABLE visitas (
    numero          INTEGER IDENTITY,
    nombre          VARCHAR(30) default 'Anonimo',
    mail            VARCHAR(50),
    pais            VARCHAR(20),
    fechayhora      DATETIME,
    PRIMARY KEY (numero)
);

--3
INSERT INTO visitas (nombre,mail,pais,fechayhora) VALUES 
('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10'),
('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30'),
('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45'),
('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15'),
('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45'),
('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20'),
('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
INSERT INTO visitas (nombre,mail,pais)
VALUES ('Federico1','federicogarcia@xaxamail.com','Argentina'); 

--4
SELECT *
FROM visitas
WHERE fechayhora BETWEEN '2006-09-12' AND '2006-10-11';

--5
SELECT *
FROM visitas
WHERE numero BETWEEN 2 AND 5;