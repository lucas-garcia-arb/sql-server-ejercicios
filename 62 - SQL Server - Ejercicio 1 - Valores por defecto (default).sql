--1
IF OBJECT_ID('visitantes') IS NOT NULL
    DROP TABLE visitantes;

--2
CREATE TABLE visitantes(
    nombre          VARCHAR(30),
    edad            TINYINT,
    sexo            CHAR(1) DEFAULT 'f',
    domicilio       VARCHAR(30),
    ciudad          VARCHAR(30) DEFAULT 'Cordoba',
    telefono        VARCHAR(11),
    mail            VARCHAR(30) DEFAULT 'no tiene',
    montocompra     DECIMAL(6,2)
);

--3
EXEC sp_columns visitantes;

--4
INSERT INTO visitantes (nombre, domicilio, montocompra)
VALUES ('Susana Molina','Colon 123',59.80); 


INSERT INTO visitantes (nombre, edad, ciudad, mail)
VALUES ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select * from visitantes; 


SELECT * FROM visitantes; 

--5
INSERT INTO visitantes (nombre,edad,sexo,domicilio,ciudad,telefono,mail,montocompra) VALUES 
('Susana Molina',54,DEFAULT,'Colon 123',DEFAULT,'12312312312',DEFAULT,59.80);
SELECT * FROM visitantes; 

--6
INSERT INTO visitantes DEFAULT VALUES;
SELECT * FROM visitantes; 