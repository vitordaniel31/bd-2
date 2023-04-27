insert into departamento
(descricao, cod_gerente)
values ('Dep BSI', null),
('Dep História', null),
('Dep Matemática', null),
('Dep Geografia', null),
('Dep Direito', null);

insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Vitor', 'M', '2002-12-31', 5000, 1),
('Ketlly', 'F', '2004-10-10', 3500, 2),
('José', 'M', '2000-03-28', 1000, 3),
('Maria', 'F', '1999-04-28', 200, 4),
('Fernanda', 'F', '1998-01-21', 1200, 4);

update departamento set cod_gerente = 1 where codigo = 1;
update departamento set cod_gerente = 2 where codigo = 2;
update departamento set cod_gerente = 1 where codigo = 3;
update departamento set cod_gerente = 2 where codigo = 4;
update departamento set cod_gerente = 2 where codigo = 5;

insert into projeto
(nome, descricao, cod_responsavel, cod_depto, data_inicio, data_fim)
values ('Proj 1', 'Projeto sem futuro', 2, 1, '2023-10-10', '2024-10-10'),
('Proj 2', 'Projeto sem futuro 2', 1, 2, '2023-05-05', '2024-05-05'),
('Proj 3', 'Projeto sem futuro 3', 3, 3, '2023-02-02', '2024-02-02'),
('Proj 4', 'Projeto sem futuro 4', 5, 4, '2023-01-01', '2023-12-31'),
('Proj 5', 'Projeto sem futuro 5', 4, 4, '2023-02-02', '2024-02-02');

insert into atividade
(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Atv1', 'Atividade sem futura 1', 2, '2023-10-10', '2024-10-10'),
('Atv2', 'Atividade sem futura 2', 1, '2023-01-10', '2024-12-10'),
('Atv3', 'Atividade sem futura 3', 3, '2023-08-08', '2024-06-06'),
('Atv4', 'Atividade sem futura 4', 2, '2023-05-08', '2024-05-06'),
('Atv5', 'Atividade sem futura 5', 5, '2023-03-08', '2024-03-06');

insert into atividade_projeto
(cod_projeto, cod_atividade)
values (1, 2),
(2, 3),
(1, 5),
(4, 4),
(3, 1);

