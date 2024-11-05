--Novo Bonco de Dados --

CREATE DATABASE clinica;

-- Criando a tabela de médicos --

CREATE TABLE medicos (
id_medico SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(100) NOT NULL
);

-- Inserindo dados na tabela de médicos --

INSERT INTO medicos (nome, especialidade) VALUES 
(‘Nathalia Santos Ferreira’, ‘Pediatra’),
(‘Fernanda Alves Louro’, ‘Clínico Geral’),
(‘Samuel dos Santos Braga’, ‘Cardiologista’),	
(‘Alejandra Taiman Barros’, ‘Ortopedista’),
(‘Bruna Nascimento Savelli’, ‘Neurologista’),
(‘Felipe Santos Dev’, ‘Psiquiatra’),
(‘Eduardo Correia’, ‘Dermatologista’),
(‘Marcelo Carboni’, ‘Oncologista’),
(‘Thiago Rodrigues’, ‘Anestesiologista’);

-- Mostrando os dados da tabela de médicos --

SELECT * FROM medicos;

-- Criando a tabela de pacientes --

CREATE TABLE pacientes (
id_paciente SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
sexo VARCHAR(20) 
);

-- Inserindo dados na tabela de pacientes --

INSERT INTO pacientes (nome, cpf, sexo) VALUES 
(‘Nicole Santos Braga’, ‘36784927492’, ‘Feminino’),
(‘João Ferrari Jorge’, ‘76932638297’, ‘Masculino’),
(‘Julio Ferreira Nascimento’, ‘27480463782’, ‘Masculino’),
(‘Julia Pinheiro’, ‘73896154010’, ‘Feminino’),
(‘Carlos Alberto Junior’, ‘86749240512’, ‘Masculino’),
(‘Gilberto Gil Santos’, ‘86748440112’, ‘Masculino’),
(‘Vinicius Pedro Silva’, ‘86729249012’, ‘Masculino’),
(‘Pedro Ribeiro Souza’, ’27492745629’, ‘Masculino’);

-- Mostrando os dados da tabela de pacientes --

SELECT * FROM pacientes;

-- Criando a tabela de consultas --

CREATE TABLE consultas (
id_consulta SERIAL PRIMARY KEY,
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
data_consulta DATE NOT NULL,
CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

-- Inserindo dados na tabela de consultas --

INSERT INTO consultas (id_paciente, id_medico, data_consulta) VALUES 
(1, 6, ‘2024-10-30’),
(2, 5, ‘2024-10-29’),
(3, 4, ‘2024-10-28’),
(4, 3, ‘2024-11-08’),
(5, 2, ‘2024-11-09’),
(6, 1, ‘2024-11-10’);


-- Mostrando os dados da tabela de consultas --

SELECT * FROM consultas;

