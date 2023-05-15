CREATE OR REPLACE FUNCTION calcular_atraso_atividade(data_prevista DATE, data_conclusao DATE)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
  dias_atraso INTEGER;
begin
  if data_conclusao is null then
  	dias_atraso := CURRENT_DATE - data_prevista;
  else 
  	dias_atraso := data_conclusao - data_prevista;
  END IF;
  RETURN dias_atraso;
END;
$$;