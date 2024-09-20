create database empresa3;
use empresa3;

create table departamento (
dcodigo int auto_increment primary key,
dnome varchar(50)
);

create table funcionario (
funcodigo int auto_increment primary key,
dcodigo int,
nome varchar (50),
nascimento date,
salario decimal (10,2),
foreign key (dcodigo) references departamento (dcodigo)
);

create table dependente (
depcodigo int auto_increment primary key,
funcodigo int,
depnome varchar(50),
foreign key (funcodigo) references funcionario (funcodigo)
);

insert into departamento (dnome)
values ('administrativo'),('financeiro'),('pessoal'),('comercial'),('marketing'),('produção'),('financeiro'),('jurídico'),('logística'),('RH');

select * from departamento;

insert into funcionario (dcodigo,nome,nascimento,salario)
values (4,"Miguel","1989-01-08",1412.00),(1,"Alice","1989-01-08",1502.00),(3,"Ravi","1989-01-08",1450.00),(2,"Noah","1989-01-08",1700.00),(5,"Heloísa","1989-01-08",1800.00),
(6,"Antonella","1989-01-08",1975.00),(8,"Theo","1989-01-08",1689.00),(7,"Cecília","1989-01-08",1413.00),(9,"Helena","1989-01-08",1999.99),(10,"Maite","1989-01-08",1641.00);

select * from funcionario;

insert into dependente (funcodigo,depnome)
values (1,"Guilherme Elias"),(2,"Gustavo Henrique"),(3,"Isabella Kimberly"),(4,"Giovana Araujo"),(5,"Nhandeara Mourão"),(6,"Samuel Oliveira"),(7,"Samuel Freitas"),
(8,"Maria Julia"),(9,"João Pedro"),(10,"Laura Fernanda");


