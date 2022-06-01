-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database bible_learning;
use bible_learning;

/* Tabela de usuarios */
create table usuario (id int primary key auto_increment,
nome varchar (45),
email varchar (70) unique,
senha varchar (15));

/*Tabela de livros*/
create table livros (
id int primary key auto_increment,
nome varchar (70),
qntd_escolha int);

/*Tabela de livro favorito do usuario */
create table livro_favorito (
fk_livros int,
foreign key (fk_livros) references livros(id),
fk_usuario int,
foreign key (fk_usuario) references usuario(id));

/*Inserindo dados da tabela de livros do antigo testamento*/
insert into livros(nome)
values ('Gênesis'), 
    ('Êxodo'), 
    ('Levítico'), 
    ('Números'), 
    ('Deuteronômio'), 
    ('Josué'), 
    ('Juízes'), 
    ('Rute'), 
    ('1 Samuel'), 
    ('2 Samuel'), 
    ('1 Reis'), 
    ('2 Reis'),
    ('1 Crônicas'),
    ('2 Crônicas'),
    ('Esdras'),
    ('Neemias'), 
    ('Ester'), 
    ('Jó'), 
    ('Salmos'), 
    ('Provérbios'), 
    ('Eclesiastes'), 
    ('Cânticos'), 
    ('Isaías'), 
    ('Jeremias'), 
    ('Lamentações'), 
    ('Ezequiel'), 
    ('Daniel'), 
    ('Oseias'), 
    ('Joel'),
    ('Amós'),
    ('Obadias'), 
    ('Jonas'), 
    ('Miqueias'), 
    ('Naum'), 
    ('Habacuque'), 
    ('Sofonias'), 
    ('Ageu'), 
    ('Zacarias'),
    ('Malaquias'),
    ('Mateus'), 
    ('Marcos'), 
    ('Lucas'), 
    ('João'),
    ('Atos'),
    ('Romanos'),
    ('1 Coríntios'), 
    ('2 Coríntios'), 
    ('Gálatas'), 
    ('Efésios'), 
    ('Filipenses'), 
    ('Colossenses'), 
    ('1 Tessalonicenses'), 
    ('2 Tessalonicenses'), 
    ('1 Timóteo'), 
    ('2 Timóteo'), 
    ('Tito'), 
    ('Filémon'), 
    ('Hebreus'),
    ('Tiago'),
    ('1 Pedro'),
    ('2 Pedro'),
    ('1 João'),
    ('2 João'),
    ('3 João'),
    ('Judas'),
    ('Apocalipse');
    
    select * from livros;




/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


