CREATE DATABASE beeaware;

USE beeaware;

CREATE TABLE funcionario (
	idFunc int PRIMARY KEY auto_increment,
	nome varchar (55),  					-- guardar o nome que será registrado o site 
    empresa varchar (55),       			-- guardar a empresa que ele participa
    email varchar (55), 					-- guardar o email utilizado na plataforma
	senha varchar (50), 					-- guardar senha do usuario na plataforma 
	tipo varchar (25)   					-- guardar o nivel do usuario 
		constraint chkTipo check(tipo in('comum', 'admin'))
);

INSERT INTO funcionario (nome, empresa, email, senha, tipo) VALUES
('João Silva', 'Mel Puro LTDA', 'joao@melpuro.com', 'senha123', 'admin'),
('Maria Souza', 'Mel Puro LTDA', 'maria@melpuro.com', 'segura456', 'comum'),
('Carlos Oliveira', 'Apis Gold', 'carlos@apisgold.com', 'melzinho789', 'comum'),
('Beatriz Santos', 'Apis Gold', 'beatriz@apisgold.com', 'honeybee321', 'admin'),
('Eduardo Lima', 'Néctar Supremo', 'eduardo@nectarsupremo.com', 'buzzpass2024', 'comum'),
('Fernanda Costa', 'Néctar Supremo', 'fernanda@nectarsupremo.com', 'pollen456', 'admin'),
('Gabriel Martins', 'Favo de Ouro', 'gabriel@favodeouro.com', 'melado654', 'comum'),
('Tatiane Rocha', 'Favo de Ouro', 'tatiane@favodeouro.com', 'colmeia852', 'comum'),
('Ricardo Almeida', 'Rainha do Mel', 'ricardo@rainhadomel.com', 'nectar369', 'admin'),
('Sofia Fernandes', 'Rainha do Mel', 'sofia@rainhadomel.com', 'abelhinha741', 'comum');
	

CREATE TABLE colmeia(
	idComeia int PRIMARY KEY auto_increment,
    nome varchar (55), 						-- guardar o nome da colméia/abelha 
    qtdLitrosMes decimal (4,2), 			-- guardar a quantidade de litros coletados no mês 
    descricao varchar (255), 				-- guardar a descrição do status da colméia
    temp decimal(4,2), 						-- guardar temperatura das colmeias
    dtConsulta datetime,  					-- guardar o dia que foi feita a consulta
    idEmpresa int 							-- guardar o id da empresa que o dado esta relacionado 
);

INSERT INTO colmeia (nome, qtdLitrosMes, descricao, temp, dtConsulta, idEmpresa) VALUES
('Colmeia Aurora', 12.50, 'Colmeia saudável e produtiva.', 34.2, '2025-03-10 08:30:00', 1),
('Colmeia Sol Dourado', 10.75, 'Nível de mel reduzido devido à estação.', 33.8, '2025-03-10 09:15:00', 1),
('Colmeia Flor de Mel', 15.30, 'Alta produção e boa atividade das abelhas.', 35.1, '2025-03-09 07:45:00', 2),
('Colmeia Néctar Puro', 11.90, 'Leve redução na produção, verificar alimentação.', 34.0, '2025-03-09 10:20:00', 2),
('Colmeia Favo de Ouro', 14.60, 'Produção estável e colmeia saudável.', 35.5, '2025-03-08 11:10:00', 3),
('Colmeia Rainha Brilhante', 9.80, 'Menos atividade das abelhas devido ao clima.', 32.7, '2025-03-08 13:40:00', 3),
('Colmeia Doce Néctar', 13.20, 'Produção normal, nenhuma anomalia detectada.', 33.9, '2025-03-07 09:50:00', 4),
('Colmeia Zangão Forte', 10.40, 'Redução na produção, verificar a temperatura.', 36.2, '2025-03-07 14:05:00', 4),
('Colmeia Pólen Vivo', 16.80, 'Ótima produção, enxame saudável.', 34.8, '2025-03-06 08:15:00', 5),
('Colmeia Esperança', 12.00, 'Colmeia em bom estado, verificar próxima inspeção.', 33.5, '2025-03-06 12:30:00', 5);

CREATE TABLE empresa(
	idEmpresa int PRIMARY KEY auto_increment,
    nome varchar (55),						-- guardar o nome da empresa
    cnpj char(14),							-- guardar o cnjp da empresa 
    dtContrato date 						-- guardar o dia que foi feito o contrato 
);

INSERT INTO empresa ( nome, cnpj, dtContrato) VALUES
('Mel Puro LTDA', '12345678000111', '2023-05-10'),
('Apis Gold', '22345678000122', '2022-08-15'),
('Néctar Supremo', '32345678000133', '2021-12-01'),
('Favo de Ouro', '42345678000144', '2024-02-20'),
('Rainha do Mel', '52345678000155', '2023-07-30');


CREATE TABLE sensor(
    idSensor int PRIMARY KEY auto_increment,
    nome varchar(55),						-- guardar nome registrado do sensor para diferencia-los
    dtManutencao DATETIME,					-- guardar data de manutenção 
    dtInstalacao DATE,						-- guardar data de instalação
	temperatura DECIMAL(4,2),				-- guardar temperatura coletada pelo sensor
    statusSensor VARCHAR(30)				-- guardar o status do sensor (ligado, desligado, manutenção
		constraint chkstatusSensor check(statusSensor in( 'ligado', 'desligado', 'manutenção'))
);

INSERT INTO sensor (nome, dtManutencao, dtInstalacao, temperatura, statusSensor) VALUES
('Sensor Alpha', '2025-02-15 10:30:00', '2023-05-12', 34.5, 'ligado'),
('Sensor Beta', '2024-11-20 15:45:00', '2022-08-17', 33.8, 'desligado'),
('Sensor Gamma', '2025-03-01 09:20:00', '2021-12-05', 35.2, 'manutenção'),
('Sensor Delta', '2024-12-10 13:10:00', '2024-02-22', 36.1, 'ligado'),
('Sensor Epsilon', '2025-01-25 08:40:00', '2023-07-31', 34.9, 'ligado'),
('Sensor Zeta', '2025-03-05 11:00:00', '2023-06-10', 32.7, 'manutenção'),
('Sensor Theta', '2024-10-14 14:15:00', '2022-09-05', 33.2, 'desligado'),
('Sensor Iota', '2025-02-28 07:50:00', '2023-11-20', 35.8, 'ligado'),
('Sensor Kappa', '2024-09-30 12:20:00', '2021-10-10', 34.4, 'manutenção'),
('Sensor Lambda', '2025-03-08 16:05:00', '2022-05-18', 32.9, 'ligado');
