DROP DATABASE IF EXISTS dep_emp;
CREATE DATABASE dep_emp;
USE dep_emp;
CREATE TABLE dep(
depNo NUMERIC (2) primary key,
depnombre varchar(20) not null unique,
deplocal varchar(40) not null
);

INSERT INTO dep(depNo,depnombre,deplocal) VALUE(10,'Contabilidad','Dalas');
INSERT INTO dep(depNo,depnombre,deplocal) VALUE(20,'Investigación','Chicago');
INSERT INTO dep(depNo,depnombre,deplocal) VALUE(30,'Ventas','Huston');
INSERT INTO dep(depNo,depnombre,deplocal) VALUE(40,'Operaciones','Arizona');

SELECT * FROM dep;

CREATE TABLE emp(
idemp varchar(20) primary key,
nombremp varchar(20) not null,
cargoemp varchar(40) ,
idsuperior varchar(40) not null,
fechaing varchar(40) not null,
salarioemp varchar(40) not null,
nullemp varchar(40) not null,
depemp NUMERIC (2) not null
);

INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7839','Saul','Jefazo','NULL','2001-08-31','30000','NULL','10');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7782','Victor','Manager','7839','2001-08-31','15000','NULL','20');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7798','Iván','Manager','7839','2001-08-31','15000','NULL','30');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7716','Raul','Manager','7839','2001-08-31','15000','NULL','40');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7566','Luis','Encargado','7698','2001-09-1','10000','1400','20');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7564','Karina','Encargado','7782','2001-09-1','10000','300','30');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7541','Evelyn','Encargado','7698','2001-09-1','10000','0','40');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7296','Luis','Vendedor','7566','2001-09-2','6000','NULL','20');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7428','Diego','Vendedor','7566','2001-09-2','6000','500','20');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7540','Isai','Vendedor','7564','2001-09-2','6000','NULL','30');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7532','Jesus','Vendedor','7564','2001-09-2','6000','NULL','30');
INSERT INTO emp(idemp,nombremp,cargoemp,idsuperior,fechaing,salarioemp,nullemp,depemp) VALUE('7698','Ariadna','Administrador','7782','2001-08-31','20000','NULL','10');

SELECT * FROM emp;
