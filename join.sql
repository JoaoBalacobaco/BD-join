create database seila;
use seila;

create table alunos(
id int not null primary key auto_increment,
nome varchar(60),
curso_id int not null,
matricula_id int not null,
foreign key(curso_id) references curso (id)
);
create table curso(
id int not null primary key auto_increment,
curso varchar(90)
);
create table matricula(
id int not null primary key auto_increment,
numero_matricula varchar(10),
aluno_id int not null,
foreign key(aluno_id) references aluno(id)
);
insert into curso (curso) values ('seila.com');
insert into alunos(nome,curso_id) values ('joaozinho',1);
insert into matricula (numero_matricula,aluno_id) values ('6669996669',1);


SELECT alunos.nome, cursos.nome
FROM matricula
INNER JOIN alunos ON matriculas.aluno_id = alunos.id
INNER JOIN cursos ON matriculas.curso_id = cursos.id;
