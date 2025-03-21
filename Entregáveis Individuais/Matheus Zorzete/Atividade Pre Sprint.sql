create database BeeAware;

use BeeAware;

create table usuario(
id_usuario int primary key auto_increment,
nome varchar(40),
tel char(15),
senha varchar(12),
email varchar(40)
);


create table empresa(
id_empresa int primary key auto_increment,
nome varchar(50),
tel char(15),
cnpj char(14),
email varchar(40)
);


create table colmeia(
id_apiario int primary key auto_increment,
nome varchar(40),
comentario varchar(200),
temperatura decimal(4,2)
);