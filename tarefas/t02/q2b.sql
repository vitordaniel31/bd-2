CREATE OR REPLACE FUNCTION media_idade_por_departamento()
RETURNS TABLE(departamento VARCHAR, media_idade NUMERIC) AS $$
BEGIN
  RETURN QUERY SELECT d.sigla, AVG(idade(f.dataNasc))
               FROM funcionario f
               INNER JOIN departamento d ON f.depto = d.codigo
               GROUP BY d.sigla;
END;
$$ LANGUAGE plpgsql;