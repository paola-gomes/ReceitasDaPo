-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/
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

/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
DEFAULT_SCHEMA = dbo;

EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

EXEC sys.sp_addrolemember @rolename = N'db_datareader',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';
