create database produto;
go
use produto;

/* drop database produto; */

create table secao
  (cod_secao   integer            not null primary key,
   dsc_secao   varchar(30)	  null);
go

create table produto
  (cod_prod     integer           not null primary key,
   cod_secao    integer           not null,
   dsc_produto  varchar (40)      not null,
   val_ultcusto numeric (7,2)     not null,
   qtd_estq     integer           not null,
   constraint prod_sec_fk foreign key(cod_secao) references secao (cod_secao));
go

create table preco_produto
  (id_historico     integer       not null primary key,
   cod_prod         integer       not null,
   val_venda        numeric (7,2) not null,
   dat_inivigencia date           not null,
   constraint prod_prec_fk foreign key(cod_prod) references produto (cod_prod));
go

insert into secao
    values (10,'Infantil'),
	       (20,'Juvenil'),
		   (30,'Adulto'),
		   (40,'Senior');
go

insert into produto 
    values (05,30,'Blusa Manga Longa',28.10,20),
		   (10,20,'Camiseta Regata',15.20,10),
		   (15,20,'Camiseta Fechada',16.89,0),
		   (20,10,'Macacao Curto',25.45,12);
go

insert into preco_produto 
    values (1,05,35.00,'2017-01-02'),
		   (2,10,22.50,'2017-01-02'),
		   (3,15,25.00,'2017-02-05'),
		   (4,20,32.00,'2018-06-21'),
		   (5,10,25.50,'2018-05-20');
go

