select p.nome as "nome projeto", 
d.descricao as "nome departamento", 
f.nome as "nome funcionario",
df.descricao as "nome departamento funcionario"
from projeto p
join departamento d on p.cod_depto = d.codigo
join funcionario f on p.cod_responsavel = f.codigo
join departamento df on f.cod_depto = df.codigo