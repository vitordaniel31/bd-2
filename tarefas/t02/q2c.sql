CREATE OR REPLACE PROCEDURE exibir_funcionarios_com_idade_acima_da_media()
LANGUAGE plpgsql AS $$
DECLARE
  departamento_codigo INTEGER;
  departamento_sigla VARCHAR;
  departamentp_media_idade NUMERIC;
  funcionario_nome VARCHAR;
  funcionario_idade NUMERIC;
begin
	FOR departamento_codigo, departamento_sigla, departamentp_media_idade IN
    SELECT dep_codigo, dep_sigla, media_idade FROM media_idade_por_departamento()
  LOOP
    FOR funcionario_nome, funcionario_idade IN
      SELECT f.nome, idade(f.datanasc)
        FROM funcionario f
        WHERE f.depto = departamento_codigo 
    LOOP
      IF funcionario_idade > departamentp_media_idade THEN
        RAISE NOTICE 'O funcionário % tem idade acima da média do departamento %!', funcionario_nome, departamento_sigla;
        EXIT;
      END IF;
    END LOOP;
  END LOOP;
END;
$$;