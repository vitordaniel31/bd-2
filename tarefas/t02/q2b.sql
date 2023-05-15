CREATE OR REPLACE FUNCTION media_idade_por_departamento()
RETURNS TABLE(dep_codigo INTEGER, dep_sigla VARCHAR, media_idade NUMERIC) AS $$
BEGIN
  RETURN QUERY SELECT d.codigo, d.sigla, AVG(idade(f.datanasc))
               FROM funcionario f
               INNER JOIN departamento d ON f.depto = d.codigo
               WHERE f.datanasc IS NOT NULL
               GROUP by d.codigo, d.sigla;
END;
$$ LANGUAGE plpgsql;
