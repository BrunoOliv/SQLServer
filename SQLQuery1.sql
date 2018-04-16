use controle_compras;

create table compradores(
	id int primary key identity not null,
	nome nvarchar(200),
	endereco nvarchar(200),
	telefone nvarchar(30)
)

select * from compradores

insert into compradores values ('Gabriel Ferreira', 'rua vergueiro, 3185', '12345678');
insert into compradores values ('Camila Ferreira', 'rua paulista, 31', '98745621');

alter table compras add comprador_id int 

select * from compras

update compras set comprador_id = 1
where id < 20

update compras set comprador_id = 2
where id > 20

update compras set comprador_id = 1
where id = 20

select * from compras
join compradores on compras.comprador_id = compradores.id

alter table compras
add constraint FK_Compras_CompradorID foreign key (comprador_id)
references compradores(id)


insert into compras values (100, '2015-07-10', 'vaso de flores 2', 1, 2);