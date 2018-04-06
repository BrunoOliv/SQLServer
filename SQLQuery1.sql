use controle_compras;

select * from compras;

insert into compras values (150, '2015-04-15', 'churraqueira',  1);

insert into compras (valor, data, recebida) values (150, '2015-04-15', 1);

delete from compras where observacoes is null;

select * from compras where observacoes is null;

alter table compras alter column observacoes nvarchar(200) not null;


alter table compras add default '0' for recebida;

insert into compras (valor, data, observacoes) values (200, '2015-10-04', 'testando default');

select * from compras where observacoes = 'testando default';


sp_help compras;