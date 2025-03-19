CREATE DATABASE BeeAware;

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(80) NOT NULL,  
    telefone VARCHAR(20),
    tipo_usuario VARCHAR(8) DEFAULT 'apicultor',
    CONSTRAINT chkTipo CHECK(tipo_usuario IN ('admin', 'apicultor')),
    data_criacao DATE -- registro de criação de usuários para o administrado 
);

CREATE TABLE Empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) NOT NULL,
    endereco VARCHAR(255),
    telefone_empresa VARCHAR(20),
    data_criacao DATE
);

CREATE TABLE Colmeia (
    id_colmeia INT PRIMARY KEY AUTO_INCREMENT,
    nome_colmeia VARCHAR(100) NOT NULL,
    descricao VARCHAR(1000), -- para que os apicultores possam adicionar texto sobre cada colmeia 
    localizacao VARCHAR(255),
    id_usuario INT, 
    id_empresa INT,
    stts_colmeia VARCHAR(7) DEFAULT 'ativa',
    CONSTRAINT chkStatus 
		CHECK (stts_colmeia IN('ativa', 'inativa', 'manutencao')),
        data_instalacao DATE
);

-- usuários
INSERT INTO Usuario (nome, email, senha, telefone, tipo_usuario) VALUES
('Ana Mioki', 'ana@beeaware.com', 'senha123', '11987654321', 'admin'),
('Carlos Silva', 'carlos@apicultura.com', '1234seguro', '11976543210', 'apicultor');

-- empresas
INSERT INTO Empresa (nome_empresa, cnpj, endereco, telefone_empresa) VALUES
('Mel Puro LTDA', '12.345.678/0001-99', 'Rua das Abelhas, 123 - SP', '1122334455'),
('Apicultura do Norte', '98.765.432/0001-11', 'Av. do Mel, 456 - RJ', '5566778899');

-- colmeias
INSERT INTO Colmeia (nome_colmeia, descricao, localizacao, id_usuario, id_empresa, stts_colmeia, data_instalacao) VALUES
('Colmeia Alpha', 'Colmeia de produção de mel silvestre.', 'Fazenda São João - SP', 2, 1, 'ativa', '2024-01-10'),
('Colmeia Beta', 'Monitoramento experimental de temperatura.', 'Sítio Boa Vista - MG', 2, NULL, 'manutencao', '2024-02-05');


SELECT * FROM Usuario;

SELECT * FROM Empresa;

SELECT * FROM Colmeia;

SELECT * FROM Colmeia WHERE stts_colmeia = 'ativa';



