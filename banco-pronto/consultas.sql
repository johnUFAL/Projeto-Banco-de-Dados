-- CONSULTAS NO BANCO --

-- 10 CONSULTAS JOINS --

-- Funcionario que participa de treinamento --
select f.nome, t.nome_curso
from funcionarios f
inner join participa p on f.Id_Funcionario = p.id_Funcionario
inner join treinamento t on p.Id_treinamento = t.Id_Treinamento;

-- Funcionario e treinamento 
select f.nome, t.nome_curso
from funcionarios f
left join participa p on f.Id_Funcionario = p.id_Funcionario
left join treinamento t on p.Id_treinamento = t.Id_Treinamento;

-- Treinamento e participamntes 
select f.nome, t.nome_curso
from funcionarios f
right join participa p on f.Id_Funcionario = p.id_Funcionario
right join treinamento t on p.Id_treinamento = t.Id_Treinamento;

-- Missôes e Veículos --
select m.nome as Missao, v.nome as Veiculo
from Missao m
inner join Usa u on m.Id_Missao = u.id_Missao
inner join Veiculo v on v.Id_Veiculo = u.Id_Veiculo;

-- Experimento com nome da Missao
select e.nome, m.nome as Missao
from Experimento e 
join Missao m on e.Id_Missao = m.Id_Missao;

-- Funcionarios e Experimentos que realizam
select f.nome, e.nome as Experimento
from funcionarios f
join realizam r on f.Id_Funcionario = r.Id_Funcionario
join experimento e on r.Id_Experimento = e.Id_Experimento;

-- Lançamento com seus veículos --
select l.data, l.local, v.nome as Veiculo 
from lancamento l
join veiculo v on l.Id_Veiculo = v.Id_Veiculo;

-- Veículo e suas Missões --
select v.nome as Veiculo, m.nome as Missao
from Veiculo v
join Missao m on v.Id_Missao = m.Id_Missao;

-- Funcionarios que vao viajar e a missao ==
select f.nome, m.nome as Missao
from Funcionarios f 
join viaja v on f.Id_Funcionario = v.Id_Funcionario
join missao m on v.Id_Missao = m.Id_Missao;

-- Supervires e supervisionados --
select supervisor.nome as Supervisor, supervisionado.nome as Supervisionado
from supervisiona as s
join funcionarios supervisor on s.Id_Supervisor = supervisor.Id_Funcionario
join funcionarios supervisionado on s.Id_Supervisionado = supervisionado.Id_funcionario;

-- 10 AGREGAÇÔES --

-- Total de funcionarios --
select count(*) as TotalFUncionario
from funcionarios;

-- Total de treinamentos --
select count(*) as TotalTreinamento 
from treinamento;

-- Média das Cargas Horárias dos treinamentos --
select avg(Carga_Horaria) as MediaHoras 
from treinamento;

-- Quantidade de funcionários pelo tipo 
select Tipo, count(*) as Total 
from funcionarios 
group by Tipo;

-- funcionarios por suas Areas --
select Area, count(*) as Quantidade 
from funcionarios 
group by Area;

-- Total de lançamentos com suceso --
select count(*) 
from lancamento
where Resultado = 'Bem-sucedido';

-- Total de experimento por Missão -- 
select Id_Missao, count(*) 
from experimento 
group by Id_Missao;

-- Funcionarios que participaram de ao emnos um treinamento --
select count(distinct Id_Funcionario) as Participantes 
from participa;

-- Quantidades de Veiculos tipo Sonda temos --
select count(*) 
from veiculo 
where Tipo = 'Sonda';

-- Soma das Cargas horárias totsl --
select sum(Carga_Horaria) as TotalHoras 
from treinamento;

-- 10 ORDER BY< GROUP BY< HAVING.. --

-- Funcionarios ordenados por nome --
select nome 
from funcionarios
order by nome asc;

-- Experimento mais recentes primeiro --
select nome, data 
from experimento 
order by data desc;

-- Missões por Status --
select Status, count(*)
from missao 
group by Status;

-- Areas com mais de 2 funcionarios --
select Area, count(*) as Qtd 
from funcionarios 
group by Area 
having Qtd > 2;

-- Carga Horaria média por público -- 
select Publico, avg(Carga_Horaria) as MediaHoras
from treinamento
group by Publico;
-- Lançamentos ordenados por data -- 
select * from lancamento
order by data desc;

-- Missões ordenadas por nome --
select nome 
from missao 
order by nome;

-- Veículos agrupados por tipo --
select Tipo, count(*)
from veiculo 
group by Tipo;

-- Responsaveis com mais de um curso --
select Responsavel, count(*) as Cursos
from treinamento
group by Responsavel 
having Cursos > 1;

-- Numeros de missaões com mais de um veiculo --
select Id_Missao, count(*) as veiculo
from usa 
group by Id_Missao 
having veiculo > 1;

-- 10 Modificações -- 

-- insere novo funcionario --
insert into funcionarios (nome, tipo, area, certificacao)
values 
('Neil Armstrong','Astronauta','Exploração','Cerficiação Espacial');

-- insere novo experimento --
insert into experimento (nome, resultado, data, Id_Misaao)
values 
('Teste de gravidade', 'Indeterminado', '2027-01-01', 1);

-- insere noma missao --
insert into missao (nome, objetivo, data, status)
values 
('Missao Nebulosa', 'Exploração de gases espaciais', '2028-02-09', 'Agendada');

-- Atualizqa status da missao zero -- 
update missao set Status = 'Concluida'
where nome = 'MIssão Zero';

-- Atualiza status de veiculos --
update veiculo set Status = 'Pronto'
where nome = 'Foguete Alagoas II';

-- Atualiza certificação de um funcionario --
update funcionarios set certificacao = 'Certificação Avançada'
where nome = 'Ada Lovelance Pereira';

-- Deletar experiemtno com resultado indeterminado --
delete from experimento 
where Resultado = 'Indeterminado';

-- deletar funcionario especifico --
delete from funcionarios 
where nome = 'Marcos';

-- inserir novo curso --
insert into treinamento (nome_curso, Responsavel, Publico)
values 
('Geologia Lunas', 'Marie Curie', 'Cientista');

-- Atualizar local de lançamento --
update lancamento set local = 'Base espacial Alagoana'
where Id_Lancamento = 1;


-- Subconsultas --

-- Funcionarios que participou de algum treinamento --
select nome from funcionarios
where Id_funcionario in (
	select Id_funcionario from participa
);

-- Missões que tem veículos atrelados --
select nome from missao 
where Id_Missao in (
	select Id_Missao from usa
);

-- Funcionario com subordinads --
select nome from funcionarios 
where Id_funcionario in (
	select Id_Supervisor from supervisiona
);

-- Treinamentos que capacitam pra missao --
select nome_curso from treinamento
where Id_Treinamento in (
	select Id_Treinamento from capacita
);

-- Funcionarios que realizam experimentos --
select nome from funcionarios 
where exists (
	select * from realizam r
    where r.Id_funcionario = funcionarios.Id_funcionario
);
