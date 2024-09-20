create database gervenda;
use gervenda;

create table produtos(
prod_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoque int
);

create table venda(
venda_id int auto_increment primary key,
produto_id int,
quant int,
data_venda date,
foreign key (produto_id) references produtos (prod_id)
);

insert into produtos(nome,preco,estoque)
values ('Notebook_Dell',7000.00,35),('Mouse_Dell',300.00,35),('Cadeiras_Ergométricas',450.00,35),('Mesas_Ajustével',1500.00,8),('Projetor_Benq',12000.00,1);

select * from produtos;

insert into venda(produto_id,quant,data_venda)
values(1,35,'2022-09-20'),(2,35,'2022-09-20'),(3,35,'2022-09-20'),(4,8,'2022-09-20'),(5,1,'2022-09-20');

select * from venda;

select nome, estoque from produtos;
select quant, data_venda from venda;

