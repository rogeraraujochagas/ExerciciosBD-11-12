create database projeto_compra;

use projeto_compra

create table cliente
(id_cliente int primary key not null,
nom_cliente varchar (50),
end_cliente varchar (60)),

create table compra
(id_compra int primary key not null,
cliente_id_cliente int foreign key not null,
vl_compra numeric (7,2),
dt_compra date);

insert into cliente
	values ('Maria','Rua Floriano, 20'),
			('Jose', 'Rua Alcantara, 113'),
			('Carlos', 'Av.Tiradentes, 10'),
			('Josefina','Trav. Clara CAmarao, 25');

	select * from cliente;

	insert into compra
				(5020.20,'2017-10-01',1),
				(2510.55,'2017-10-01',2),
				(1000.00,'2017-10-30',1),
				(1200.10,'2017-11-01',4),
				(8000.00,'2017-11-02',1);

	select * from compra

	/*JOIN ou INNER JOIN*/
	select *
		from cliente a inner join compra b ON a.id_cliente = b.id_cliente;

	select * 
		from compra b join cliente a ON b.id_cliente = a.id_cliente;
		
	select *
		from cliente a join compra b ON a. 
			


