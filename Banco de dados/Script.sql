CREATE DATABASE Melodoramatica;

USE Melodoramatica;

CREATE TABLE Usuario (
idusuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (45),
Senha VARCHAR (45),
fkEnquete INT,
FOREIGN KEY (fkEnquete) REFERENCES Enquete (idEnquete)
);

CREATE TABLE Enquete (
idEnquete INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Categoria (
idCategoria INT PRIMARY KEY AUTO_INCREMENT,
MelhorDorama VARCHAR (45),
MelhorAtriz VARCHAR (45),
MelhorAtor VARCHAR (45),
fkEnquete INT,
CONSTRAINT fkEnquete FOREIGN KEY (fkEnquete) REFERENCES Enquete (idEnquete)
);

CREATE TABLE Dorama (
idDorama INT PRIMARY KEY AUTO_INCREMENT,
Titulo VARCHAR (45),
Genero VARCHAR (45),
fkCategoria INT,
FOREIGN KEY (fkCategoria) REFERENCES Categoria (idCategoria)
);

CREATE TABLE Ator (
idAtor INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Sexo CHAR (1),
dtNasc DATE,
fkDorama INT,
FOREIGN KEY (fkDorama) REFERENCES Dorama (idDorama) 
);

select * from usuario;
select * from enquete;
select * from dorama;
select * from categoria;
select * from ator;


insert into usuario values
(null, 'lele', 'lele@gmail.com', '123', null),
(null, 'teteca', 'teteca@gmail.com', 'abc', null);

insert into enquete values
(null);

insert into categoria values
(null, 'pachinko', 'eunbin', 'lee minho',1);

insert into dorama values
(null, 'pachinko', 'fantasia', 1);

insert into ator values
(null, 'leeminho', 'm', '1988-05-02', '1');





drop table usuario;
drop table enquete;
drop table dorama;
drop table categoria;
drop table ator;

drop database Melodoramatica;








