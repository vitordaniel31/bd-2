CREATE OR REPLACE FUNCTION porcentagem_atividades_membro_projeto(funcionario_id INTEGER, projeto_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
  total_atividades INTEGER;
  porcentagem_atividades numeric;
  quantidade_atividades INTEGER;
begin
  quantidade_atividades = calcular_quantidade_atividades(funcionario_id, projeto_id);
  
  SELECT COUNT(*) INTO total_atividades
  FROM atividade_projeto ap   
  WHERE ap.codprojeto = projeto_id;
 
  IF total_atividades > 0 THEN
    porcentagem_atividades = (quantidade_atividades::NUMERIC / total_atividades) * 100;
  ELSE
    porcentagem_atividades = 0;
  END IF;
    
  RETURN porcentagem_atividades;
END;
$$;
