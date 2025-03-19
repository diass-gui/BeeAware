CREATE DATABASE BeeAware;
USE BeeAware;

CREATE TABLE Abelha(
idAbelha INT PRIMARY KEY AUTO_INCREMENT,
Especie VARCHAR(30) NOT NULL,
NumColmeia INT UNIQUE NOT NULL
);

INSERT INTO Abelha VALUES

(DEFAULT , 'Apis mellifera', 101),
(DEFAULT , 'Melipona scutellaris', 102),
(DEFAULT , 'Apis cerana', 103),
(DEFAULT , 'Melipona rufiventris', 104),
(DEFAULT , 'Apis dorsata', 105),
(DEFAULT , 'Melipona compressipes', 106),
(DEFAULT , 'Tetragonula biroi', 107);

ALTER TABLE Abelha MODIFY COLUMN Especie VARCHAR(50);

CREATE TABLE Sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
temperatura INT,
dtManuntencao DATE
);

INSERT INTO Sensor (temperatura, dtManuntencao) VALUES 
       (25, '2025-03-19'),
       (30, '2025-03-20'),
       (22, '2025-03-21'),
       (28, '2025-03-22'),
       (24, '2025-03-23');
       
SELECT * FROM Sensor;

SELECT * FROM Sensor WHERE temperatura > 25;

UPDATE Sensor SET temperatura = 27
WHERE idSensor = 3;

ALTER TABLE Sensor ADD COLUMN localizacao VARCHAR(50);

SELECT * FROM Sensorc ORDER BY dtManuntencao ASC;


CREATE TABLE Cadastro(
idNome INT PRIMARY KEY AUTO_INCREMENT,
NomeEmpresa VARCHAR(60),
CNPJ VARCHAR(14),
Senha CHAR(8)
);

INSERT INTO Cadastro (NomeEmpresa, CNPJ, Senha)
VALUES ('Mel do Vale', 12345678000195, '12345678'),
       ('Apiários da Serra', 98765432000187, 'abcdef12'),
       ('Pura Colmeia', 11223344000155, 'qwerty01'),
       ('Mel e Vida', 55667788000133, 'pass1234'),
       ('Colmeias do Campo', 66778899000122, 'secure89');
       
       SELECT * FROM Cadastro;
       
       SELECT * FROM Cadastro WHERE CNPJ LIKE '123%';
       
       SELECT * FROM Cadastro WHERE NomeEmpresa LIKE 'Mel%' ORDER BY NomeEmpresa ASC;

      SELECT NomeEmpresa AS Empresa, CNPJ AS Identificador FROM Cadastro;
      
      SELECT NomeEmpresa, CNPJ,
       CASE 
           WHEN CNPJ BETWEEN 10000000000100 AND 19999999999999 THEN 'Pequeno'
           WHEN CNPJ BETWEEN 20000000000100 AND 49999999999999 THEN 'Médio'
           WHEN CNPJ BETWEEN 50000000000100 AND 99999999999999 THEN 'Grande'
           ELSE 'Desconhecido'
       END AS CategoriaCNPJ
FROM Cadastro;

UPDATE Cadastro
SET Senha = 'newpass1'
WHERE idNome = 1;

DESCRIBE Cadastro;

SELECT * FROM Cadastro WHERE idNome = 1;




