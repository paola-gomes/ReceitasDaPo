create database ReceitasdaPo;
use ReceitasdaPo;

create table Cadastro (
idCadastro int primary key auto_increment,
nome varchar (35),
sobrenome varchar (45),
email varchar (45),
idade int,
senha char (8)
);

desc Cadastro;
select * from Cadastro;
truncate table Cadastro;

create table Feedback (
idFeedback int auto_increment,
receita varchar (45),
descricao varchar (100),
nota int,
fkCadastro int,
constraint fkCad foreign key (fkCadastro)
  references Cadastro (idCadastro),
constraint pkComposta primary key (idFeedback, fkCadastro)
);

desc Feedback;
insert into Feedback 
values (null, 'cookie', 'teste2', 10, 2),
       (null, 'tortaHoland', 'teste2', 9, 2),
       (null, 'casadinho', 'teste2', 8, 2),
       (null, 'brownie', 'teste2', 9, 2);

select receita,nota from Feedback;
truncate table Feedback;

create table FaleConosco (
idFale int primary key auto_increment,
descricao varchar (300),
email varchar(45)
);

select * from FaleConosco;
