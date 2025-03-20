CREATE DATABASE ProjetoBeeAware;
USE ProjetoBeeAware;

CREATE TABLE Funcionario(
    idFunc INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(60),
    Empresa VARCHAR(40),
    Email VARCHAR(40) UNIQUE,
    Senha CHAR(8)
);

INSERT INTO Funcionario VALUES
    (DEFAULT, 'Carlinhos', 'Bee Tech', 'joao.carlos@gmail.com', '01234567'),
    (DEFAULT, 'Mariana Silva', 'Bee Tech', 'mariana.silva@gmail.com', '87654321'),
    (DEFAULT, 'Roberto Lima', 'Bee Hive', 'roberto.lima@gmail.com', 'abcdef12');

-- SELECIONA TODOS OS FUNCIONÁRIOS
SELECT * FROM Funcionario;

-- SELECIONA TODOS OS FUNCIONÁRIOS ORDENADOS POR NOME EM ORDEM DECRESCENTE
SELECT * FROM Funcionario ORDER BY Nome DESC;

-- SELECIONA TODOS OS FUNCIONÁRIOS ORDENADOS PELA EMPRESA EM ORDEM DECRESCENTE
SELECT * FROM Funcionario ORDER BY Empresa DESC;

-- SELECIONA APENAS OS NOMES DOS FUNCIONÁRIOS QUE TRABALHAM NA EMPRESA 'BEE TECH'
SELECT Nome FROM Funcionario WHERE Empresa = 'Bee Tech';

-- SELECIONA TODOS OS FUNCIONÁRIOS CUJO NOME COMEÇA COM A LETRA 'R'
SELECT * FROM Funcionario WHERE Nome LIKE 'R%';

CREATE TABLE Empresa(
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(60),
    Email VARCHAR(40) UNIQUE,
    CNPJ CHAR(18) UNIQUE,
    Senha CHAR(8)
);

INSERT INTO Empresa VALUES
    (DEFAULT, 'Bee Tech', 'beetech@gmail.com', '62.173.620/0001-80', '12345678'),
    (DEFAULT, 'Bee Hive', 'beehive@gmail.com', '45.987.321/0001-65', '87654321'),
    (DEFAULT, 'Honey Corp', 'honeycorp@gmail.com', '89.654.123/0001-99', 'abcdef12');

-- SELECIONA TODAS AS EMPRESAS
SELECT * FROM Empresa;

-- SELECIONA TODAS AS EMPRESAS ORDENADAS POR NOME EM ORDEM DECRESCENTE
SELECT * FROM Empresa ORDER BY Nome DESC;

CREATE TABLE Sensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(20),
    DTconsulta DATETIME,
    DTinstalacao DATE,
    Statussensor VARCHAR(30),
    CONSTRAINT chkStatus
    CHECK(Statussensor IN ('Ativo', 'Inativo', 'Manutenção')),
    Temperatura DECIMAL(4,2)
);

INSERT INTO Sensor VALUES
    (DEFAULT, 'Colmeia 12', '2025-02-24 18:00:00', '2024-02-25', 'Ativo', 25.00),
    (DEFAULT, 'Colmeia 13', '2025-02-24 18:10:00', '2024-03-10', 'Inativo', 22.50),
    (DEFAULT, 'Colmeia 14', '2025-02-24 18:20:00', '2024-04-15', 'Ativo', 26.80);

-- SELECIONA TODOS OS SENSORES
SELECT * FROM Sensor;

-- SELECIONA STATUS, DATA DE INSTALAÇÃO E DATA DA CONSULTA DOS SENSORES
SELECT Statussensor AS 'Status do Sensor',
DTinstalacao AS 'Data de Instalação',
DTconsulta AS 'Data da Consulta' FROM Sensor;

-- SELECIONA TODOS OS SENSORES ORDENADOS PELA DATA DA CONSULTA EM ORDEM DECRESCENTE
SELECT * FROM Sensor ORDER BY DTconsulta DESC;

-- SELECIONA TODOS OS SENSORES ORDENADOS PELA DATA DE INSTALAÇÃO EM ORDEM DECRESCENTE
SELECT * FROM Sensor ORDER BY DTinstalacao DESC;

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

-- SELECIONA TODAS AS COLMEIAS
SELECT * FROM Colmeia;

-- SELECIONA TEMPERATURA, PRODUÇÃO DE MEL, ESPÉCIE, OBSERVAÇÕES E DATA DA CONSULTA DAS COLMEIAS
SELECT TemperaturaColmeia AS 'Temperatura da Colmeia',
Producao_mel AS 'Produção de Mel',
Especie AS 'Espécies',
OBS AS 'Observações',
DTconsulta AS 'Data da Consulta' FROM Colmeia;

-- SELECIONA TODAS AS COLMEIAS ORDENADAS PELA DATA DA CONSULTA EM ORDEM DECRESCENTE
SELECT * FROM Colmeia ORDER BY DTconsulta DESC;

-- SELECIONA TODAS AS COLMEIAS ORDENADAS PELA PRODUÇÃO DE MEL EM ORDEM DECRESCENTE
SELECT * FROM Colmeia ORDER BY Producao_mel DESC;

-- SELECIONA TODAS AS COLMEIAS ORDENADAS PELA TEMPERATURA EM ORDEM DECRESCENTE
SELECT * FROM Colmeia ORDER BY TemperaturaColmeia DESC;

-- ATUALIZA A DATA DA CONSULTA DA COLMEIA COM ID 1
UPDATE Colmeia SET DTconsulta = '2025-02-20 12:30:15' WHERE idColmeia = 1;

