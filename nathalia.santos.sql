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

