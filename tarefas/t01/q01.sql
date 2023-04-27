SELECT nome from funcionario f
where salario > (SELECT max(salario) from funcionario
                    where funcionario.cod_depto = 2
                )