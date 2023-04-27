SELECT f.nome, f.salario, f.cod_depto 
from funcionario f
where f.codigo not in (SELECT cod_gerente from departamento)
order by f.cod_depto