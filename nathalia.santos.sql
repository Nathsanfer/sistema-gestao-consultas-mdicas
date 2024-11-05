--Novo Bonco de Dados --

CREATE DATABASE clinica;

-- Criando a tabela de médicos --

CREATE TABLE medicos (
id_medico SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(100) NOT NULL
);



