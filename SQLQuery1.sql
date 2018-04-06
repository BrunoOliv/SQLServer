use controle_compras;

select * from compras;

select id,valor, observacoes
from compras
where valor between 1000 and 2000
and data between '2009-01-01' and '2009-03-31';

update compras
set valor = 1500
where id = 9; 

delete from compras
where id = 9;

sp_help compras;