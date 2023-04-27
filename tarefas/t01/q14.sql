CREATE OR REPLACE VIEW total AS
SELECT count(*) as total, cod_responsavel
FROM atividade
group by cod_responsavel;
  
select f.nome, t.total as total_atividades
from funcionario f, total t
where f.codigo = t.cod_responsavel
 