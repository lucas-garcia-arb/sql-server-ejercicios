-- 1
IF OBJECT_ID('inmuebles') IS NOT NULL
DROP TABLE inmuebles; 
GO

-- 2
CREATE TABLE inmuebles (
    documento         VARCHAR(8) NOT NULL,
    apellido          VARCHAR(30),
    nombre            VARCHAR(30),
    domicilio         VARCHAR(20),
    barrio            VARCHAR(20),
    ciudad            VARCHAR(20),
    tipo              CHAR(1),--b=baldio, e: edificado
    superficie        DECIMAL (8,2)
); 
GO

-- 3
INSERT INTO inmuebles VALUES
('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100),
('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200),
('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250),
('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200),
('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300),
('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200),
('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500),
('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350),
('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150); 
GO

-- 4
SELECT DISTINCT apellido
FROM inmuebles;

-- 5 
SELECT DISTINCT documento
FROM inmuebles;

-- 6
SELECT 
    COUNT(DISTINCT documento) cant_propietarios
FROM inmuebles
WHERE ciudad = 'Cordoba';

-- 7
SELECT COUNT(DISTINCT ciudad) inm_en_sanmartin
FROM inmuebles
WHERE domicilio LIKE 'San Martin%';

-- 8
SELECT DISTINCT apellido, nombre
FROM inmuebles;

-- 9
SELECT documento,
    COUNT(DISTINCT barrio) cant_inmuebles
FROM inmuebles
GROUP BY documento;