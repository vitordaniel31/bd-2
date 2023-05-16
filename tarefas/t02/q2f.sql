CREATE OR REPLACE PROCEDURE exibir_equipe_projeto(projeto_id INTEGER)
LANGUAGE plpgsql AS $$
DECLARE
  equipe_nome VARCHAR;
  equipe_codigo INTEGER;
  projeto_descricao VARCHAR;
  funcionario_nome VARCHAR;
  departamento_sigla VARCHAR;
begin
  	SELECT e.nomeequipe, p.equipe INTO equipe_nome, equipe_codigo 
  	FROM projeto p
  	join equipe e on p.equipe = e.codigo
  	WHERE p.codigo = projeto_id;

  	RAISE NOTICE 'Equipe %:', equipe_nome;
 
	FOR funcionario_nome, departamento_sigla IN
	  SELECT f.nome, d.sigla
	    FROM funcionario f 
	    join departamento d on f.depto = d.codigo
	    join membro m on f.codigo = m.codfuncionario
	    WHERE m.codequipe  = equipe_codigo 
	LOOP
	    RAISE NOTICE 'Funcionário: % | Departamento: %', funcionario_nome, departamento_sigla;
	END LOOP;
END;
$$;