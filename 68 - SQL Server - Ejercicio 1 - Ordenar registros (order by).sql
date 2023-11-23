--1
IF OBJECT_ID('visitas') IS NOT NULL
    DROP TABLE visitas;

--2
CREATE TABLE visitas (
    numero      int identity,
    nombre      VARCHAR(30) DEFAULT 'Anonimo',
    mail        VARCHAR(50),
    pais        VARCHAR(20),
    fecha       DATETIME,
    PRIMARY KEY (numero)
);

--3
INSERT INTO visitas (nombre,mail,pais,fecha) VALUES 
('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10'),
('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30'),
('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45'),
('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15'),
('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45'),
('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20'),
('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25'); 

--4
SELECT *
FROM visitas
ORDER BY fecha DESC;

--5
SELECT nombre,
    pais,
    DATEPART(month, fecha) AS mes
FROM visitas
ORDER BY pais ASC, mes DESC;

--6
SELECT pais,
    DATEPART(month, fecha) AS mes,
    DATEPART(day, fecha) AS dia,
    DATEPART(hour, fecha) AS hora
FROM visitas
ORDER BY mes, dia, hora;

--7
SELECT mail,
    pais
FROM visitas
WHERE DATEPART(month, fecha) = 10
ORDER BY pais;