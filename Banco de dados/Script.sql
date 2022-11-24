CREATE DATABASE Melodoramatica;

USE Melodoramatica;

CREATE TABLE Usuario (
idusuario INT PRIMARY KEY AUTO_INCREMENT AUTO_INCREMENT,
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

insert into Categoria (MelhorDorama, MelhorAtriz, MelhorAtor) values


show tables;

select * from usuario;
select * from enquete;
select * from categoria;



drop table usuario;
drop table enquete;
drop table categoria;










