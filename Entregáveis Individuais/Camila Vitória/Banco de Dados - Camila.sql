CREATE DATABASE ProjetoBeeWare;
USE ProjetoBeeWare;

CREATE TABLE Funcionario(
    idFunc INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(60),
    Empresa VARCHAR(40),
    Email VARCHAR(40) UNIQUE,
    Senha CHAR(8)
);

INSERT INTO Funcionario VALUES
    (DEFAULT, 'Renato', 'Bee Movie', 'renato@gmail.com', '76543210'),
    (DEFAULT, 'Claudia', 'Bee Flash', 'claudia@gmail.com', '25836914'),
    (DEFAULT, 'Paulo', 'Bee Voo', 'paulo@gmail.com', 'lo7c6e9u');

CREATE TABLE Empresa(
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(60),
    Email VARCHAR(40) UNIQUE,
    CNPJ CHAR(18) UNIQUE,
    Senha CHAR(8)
);

INSERT INTO Empresa VALUES
    (DEFAULT, 'Bee Movie', 'beetech@gmail.com', '62.173.620/0001-80', '12345678'),
    (DEFAULT, 'Bee Flash', 'beehive@gmail.com', '45.987.321/0001-65', '87654321'),
    (DEFAULT, 'Honey Voo', 'honeycorp@gmail.com', '89.654.123/0001-99', 'abcdef12');

CREATE TABLE Sensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(20),
    DTconsulta DATETIME,
    DTinstalacao DATE,
    Statussensor VARCHAR(30),
    Temperatura DECIMAL(4,2)
);

INSERT INTO Sensor VALUES
    (DEFAULT, 'LM-25', '2025-02-24 18:00:00', '2024-02-25', 'Ativo', 25.00),
    (DEFAULT, 'HT-50', '2025-02-24 18:10:00', '2024-03-10', 'Inativo', 22.50),
    (DEFAULT, 'TH-30', '2025-02-24 18:20:00', '2024-04-15', 'Ativo', 26.80);

CREATE TABLE Colmeia(
    idColmeia INT PRIMARY KEY AUTO_INCREMENT,
    OBS VARCHAR(200),
    Producao_mel DECIMAL(6,2),
    TemperaturaColmeia DECIMAL(4,2),
    DTconsulta DATETIME,
    Especie VARCHAR(30)
);

INSERT INTO Colmeia VALUES
    (DEFAULT, 'Colmeia bem ativa, produção acima da média.', 12.50, 34.20, '2025-02-24 18:00:00', 'Apis mellifera'),
    (DEFAULT, 'Produção reduzida, possível infestação de ácaros.', 8.75, 32.50, '2025-02-24 18:15:00', 'Melipona scutellaris'),
    (DEFAULT, 'Colmeia nova, ainda em fase de adaptação.', 5.30, 33.00, '2025-02-24 18:30:00', 'Bombus terrestris');

SELECT*FROM Colmeias;
