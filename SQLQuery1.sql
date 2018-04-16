use controle_compras;

select month(data) as mes, year(data) as ano, recebida, sum(valor) as soma from compras
where valor < 1000
group by recebida, month(data), year(data)
order by year(data) 
