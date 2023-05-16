CREATE OR REPLACE FUNCTION calcular_quantidade_atividades(funcionario_id INTEGER, projeto_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
  quantidade_atividades INTEGER;
BEGIN
  SELECT COUNT(*) INTO quantidade_atividades
  FROM atividade a
  join atividade_membro am on a.codigo = am.codatividade
  join atividade_projeto ap on a.codigo = ap.codatividade  
  WHERE am.codmembro = funcionario_id
    AND ap.codprojeto = projeto_id;
    
  RETURN quantidade_atividades;
END;
$$;
