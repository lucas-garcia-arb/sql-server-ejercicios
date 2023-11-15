IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;

CREATE TABLE alumnos(
	legajo			VARCHAR(4) NOT NULL,
	documento		VARCHAR(8),
	nombre			VARCHAR(30),
	domicilio		VARCHAR(30),
	PRIMARY KEY (documento),
	PRIMARY KEY (legajo)


);



/*


 2- Cree la tabla con la siguiente estructura intentando establecer 2 campos como clave primaria, el
campo "documento" y "legajo" (no lo permite):
 create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento),
primary key(legajo)
); 

 3- Cree la tabla estableciendo como clave primaria el campo "documento":
create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
); 

 4- Verifique que el campo "documento" no admite valores nulos:
exec sp_columns alumnos; 

 5- Ingrese los siguientes registros:
insert into alumnos (legajo,documento,nombre,domicilio)
values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
values('A567','23545345','Morales Marcos','Avellaneda 348'); 

 6- Intente ingresar un alumno con número de documento existente (no lo permite) 

 7- Intente ingresar un alumno con documento nulo (no lo permite)
*/