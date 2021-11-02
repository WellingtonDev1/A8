create database lojaInfo;

use lojaInfo;


create table cliente(
	cod_cli int primary key identity,
	nome_cli varchar(50),
	email_cli varchar(100)
)

create table funcionario(
	cod_func int primary key identity,
	nome_func varchar(50),
	email_func varchar(100)
)

create table pedido(
	cod_ped int primary key identity,
	desc_ped varchar(250),
	valor_ped float,
	fk_cod_cli int,
	fk_cod_prod int,
	foreign key (fk_cod_cli) references cliente (cod_cli),
	foreign key (fk_cod_prod) references produto (cod_prod)
)

create table produto(
	cod_prod int primary key identity,
	nome_prod varchar(50),
	quant_prod int
)

select * from cliente;
select * from funcionario;
select * from pedido;
select * from produto;


insert into cliente(nome_cli, email_cli)
values ('wellington',	'wellington@ig.com')
insert into cliente(nome_cli, email_cli)
values ('dennis', 'dennis@outlook.com')
insert into funcionario(nome_func, email_func)
values ('bruno', 'bruno@uol.com')
insert into produto(nome_prod, quant_prod)
values ('placa de video RTX2060', 6)
insert into pedido(desc_ped, valor_ped, fk_cod_cli, fk_cod_prod)
values ('placa de video nvidea RTX 2060', 3600, 2, 1) 

alter table produto add marca varchar(50)
alter table produto drop column marca

update pedido
set fk_cod_cli = 1
where cod_ped = 1