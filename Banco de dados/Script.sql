CREATE DATABASE Melodoramatica;

USE Melodoramatica;

CREATE TABLE Usuario (
idusuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (45),
Senha VARCHAR (45)
);

CREATE TABLE Enquete (
idEnquete INT PRIMARY KEY AUTO_INCREMENT,
fkVotos INT
);

CREATE TABLE Categoria (
idCategoria INT PRIMARY KEY AUTO_INCREMENT,
MelhorDorama VARCHAR (45),
fkUsuario INT,
fkVotos INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES Usuario (idUsuario),
CONSTRAINT fkVotos FOREIGN KEY (fkVotos) REFERENCES Enquete(idEnquete)
);


INSERT INTO Categoria (MelhorDorama, fkUsuario, fkVotos) VALUES 


show tables;

select * from usuario;
select * from enquete;
select * from categoria;


select MelhorDorama ,count(MelhorDorama) as fkVotos from categoria group by MelhorDorama;








truncate table usuario;
truncate table categoria;

drop table usuario;
drop table enquete;
drop table categoria;
