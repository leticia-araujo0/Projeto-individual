CREATE DATABASE Melodoramatica;

USE Melodoramatica;

CREATE TABLE Usuario (
idusuario INT PRIMARY KEY AUTO_INCREMENT AUTO_INCREMENT,
Nome VARCHAR (45),
Email VARCHAR (45),
Senha VARCHAR (45)
);

CREATE TABLE Enquete (
idEnquete INT PRIMARY KEY AUTO_INCREMENT,
fkUsuario INT
);

CREATE TABLE Categoria (
idCategoria INT PRIMARY KEY AUTO_INCREMENT,
MelhorDorama VARCHAR (45),
MelhorAtriz VARCHAR (45),
MelhorAtor VARCHAR (45),
fkUsuario INT,
CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES Usuario (idUsuario)
);

insert into Categoria (MelhorDorama, MelhorAtriz, MelhorAtor) values



show tables;

select * from usuario;
select * from enquete;
select * from categoria;

desc categoria;

insert into categoria values
(null, 'pachinko', 'parkeunbin', 'lee minho', 1);


select MelhorDorama ,count(MelhorDorama) as idusuario from categoria 
union
select MelhorAtor ,count(MelhorAtor) as idusuario from categoria
union
select MelhorAtriz ,count(MelhorAtriz) as idusuario from categoria;






select * from enquete
join usuario on idusuario
join categoria on idcategoria = fkusuario;

select * from usuario
join categoria on idcategoria = fkusuario
join enquete on idenquete = fkusuario;







truncate table usuario;
truncate table categoria;

drop table usuario;
drop table enquete;
drop table categoria;










