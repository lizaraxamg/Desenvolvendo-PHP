-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS HospitalInfantil;

-- SELECIONE O BANCO HOSPITALINFANTIL NA EXTENSÃO DO VS CODE ANTES DE RODAR O RESTO!
USE HospitalInfantil;

-- LIMPEZA (DROP TABLE) - ESSENCIAL PARA COMEÇAR DO ZERO
DROP TABLE IF EXISTS PRESCRICAO;
DROP TABLE IF EXISTS INTERNACAO;
DROP TABLE IF EXISTS MEDICAMENTO;
DROP TABLE IF EXISTS PACIENTE;


-- 3. CRIAÇÃO DAS TABELAS

-- Tabela PACIENTE
CREATE TABLE PACIENTE (
    id_paciente INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nasc DATE NOT NULL,
    tipo_sanguineo VARCHAR(5)
) ENGINE=InnoDB;

-- Tabela INTERNACAO (Registro de Entrada e Saída)
CREATE TABLE INTERNACAO (
    id_internacao INT PRIMARY KEY,
    fk_id_paciente INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME,
    quarto VARCHAR(10),
    FOREIGN KEY (fk_id_paciente) REFERENCES PACIENTE(id_paciente)
) ENGINE=InnoDB;

-- Tabela MEDICAMENTO
CREATE TABLE MEDICAMENTO (
    id_medicamento INT PRIMARY KEY,
    nome_med VARCHAR(100) NOT NULL,
    dosagem VARCHAR(50),
    estoque_atual INT NOT NULL DEFAULT 0
) ENGINE=InnoDB;

-- Tabela PRESCRICAO (Relaciona INTERNACAO e MEDICAMENTO)
CREATE TABLE PRESCRICAO (
    fk_id_internacao INT NOT NULL,
    fk_id_medicamento INT NOT NULL,
    data_hora DATETIME NOT NULL,
    quantidade_ml DECIMAL(5, 2) NOT NULL,
    observacoes TEXT,
    PRIMARY KEY (fk_id_internacao, fk_id_medicamento, data_hora),
    FOREIGN KEY (fk_id_internacao) REFERENCES INTERNACAO(id_internacao),
    FOREIGN KEY (fk_id_medicamento) REFERENCES MEDICAMENTO(id_medicamento)
) ENGINE=InnoDB;