create database BeeAware;
use BeeAware;
-- TABELAS
create table SENSOR (
IDsensor int primary key auto_increment,
Dtmanutenção datetime,
temperatura decimal(4,2));

create table CADASTRO (
ID int primary key auto_increment,
Usuário varchar(45) not null,
Senha char(8) not null,
email varchar(45) not null);

create table CONTATOEMPRESA (
ID int primary key auto_increment,
Nome varchar(45) not null,
CNPJ char(18) not null,
Contato char(11) not null);

create table COLMEIA (
IDcolmeia int primary key auto_increment,
Descricao varchar(200),
statusColmeia varchar(10) constraint chkStatus check (statusColmeia in ('operante','desativada','crítica')));

-- INSERTS
insert into SENSOR value (default, '2025-01-10', '29.33');
insert into SENSOR value (default, '2025-01-10', '33.01');
insert into SENSOR value (default, '2025-02-11', '27.50');
insert into SENSOR value (default, '2024-11-12', '33.50');

insert into CADASTRO value (default, 'HoneySea', 'dvdH33He','Honeysea@gmail.com');
insert into CADASTRO value (default, 'Organic Honey inc', 'cdP09JJe','Organic.honey@gmail.com');
insert into CADASTRO value (default, 'Mel de minas', '23Dd44%e','meldeminas@gmail.com');
insert into CADASTRO value (default, 'Pic mel', 'rge5g5ee','picmemel@gmail.com');

insert into CONTATOEMPRESA value (default, 'HoneySea', '125756789123856789','11938572453');
insert into CONTATOEMPRESA value (default, 'Organic Honey inc', '993456789123456789','47934756123');
insert into CONTATOEMPRESA value (default, 'Mel de minas', '129456719123456789','11954837532');
insert into CONTATOEMPRESA value (default, 'Pic mel', '122456789123956789','11987842745');

insert into COlMEIA value (default, 'Bem produtiva', 'operante');
insert into COLMEIA value (default, 'manutenção', 'desativada');
insert into COLMEIA value (default, 'queda de produção', 'critica');

-- CONSULTAS
DESC SENSOR;
DESC CADASTRO;
DESC CONTATOEMPRESA;
DESC COLMEIA;

select * from SENSOR;
select * from CADASTRO;
select * from CONTATOEMPRESA;
select * from COLMEIA;

