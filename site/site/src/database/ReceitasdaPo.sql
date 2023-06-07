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
values (null, 'Cookie', 'teste2', 9, 2),
       (null, 'Torta Holandesa', 'teste2', 9, 2),
       (null, 'Casadinho', 'teste2', 8, 2),
       (null, 'Brownie', 'teste2', 10, 2);

select receita,nota from Feedback;
truncate table Feedback;

create table FaleConosco (
idFale int primary key auto_increment,
descricao varchar (300),
email varchar(45)
);

select * from FaleConosco;

create table RespostaFaleConosco (
idResposta int primary key auto_increment,
resposta varchar(100),
fkFaleConosco int,
constraint fkFaleConosco foreign key (fkFaleConosco)
references FaleConosco (idFale)
);