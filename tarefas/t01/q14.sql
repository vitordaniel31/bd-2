CREATE OR REPLACE VIEW totalatv AS
SELECT count(*) as total, cod_responsavel
FROM atividade
group by cod_responsavel;
  
select f.nome, t.total as total_atividades
from funcionario f, totalatv t
where f.codigo = t.cod_responsavel
 