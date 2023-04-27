CREATE OR REPLACE VIEW total AS
  SELECT count(*) as total, cod_depto
  FROM funcionario
  group by cod_depto;
 
 select d.descricao as nome, g.nome, total.total 
 from departamento d
 left join total on d.codigo = total.cod_depto
 left join funcionario g on d.cod_gerente = g.codigo