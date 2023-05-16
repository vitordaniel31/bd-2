CREATE OR REPLACE FUNCTION calcular_atraso_projeto(data_prevista DATE, data_conclusao DATE)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
  dias_atraso INTEGER;
begin
  if data_conclusao is null then
  	dias_atraso = data_prevista - CURRENT_DATE;
  else 
  	dias_atraso = data_prevista - data_conclusao;
  END IF;
  RETURN dias_atraso;
END;
$$;