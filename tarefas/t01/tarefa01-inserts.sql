insert into departamento
(descricao, cod_gerente)
values ('Dep BSI', null),
('Dep História', null),
('Dep Matemática', null);

insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Vitor', 'M', '2002-12-31', 5000, 1),('Ketlly', 'F', '2004-10-10', 3500, 2),
('José', 'M', '2000-03-28', 1000, 3);

update departamento set cod_gerente = 1 where codigo = 1;
update departamento set cod_gerente = 2 where codigo = 2;
update departamento set cod_gerente = 3 where codigo = 3;

insert into projeto
(nome, descricao, cod_responsavel, cod_depto, data_inicio, data_fim)
values ('Proj 1', 'Projeto sem futuro', 2, 1, '2023-10-10', '2024-10-10'),
('Proj 2', 'Projeto sem futuro 2', 1, 2, '2023-05-05', '2024-05-05'),
('Proj 3', 'Projeto sem futuro 3', 3, 3, '2023-02-02', '2024-02-02');

insert into atividade
(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Atv1', 'Atividade sem futura', 2, '2023-10-10', '2024-10-10'),
('Atv2', 'Atividade sem futura', 1, '2023-01-10', '2024-12-10'),
('Atv3', 'Atividade sem futura', 3, '2023-08-08', '2024-06-06');

insert into atividade_projeto
(cod_projeto, cod_atividade)
values (1, 2),
(2, 3),
(3, 1);