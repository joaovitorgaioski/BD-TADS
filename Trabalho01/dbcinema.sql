/* 1: Criação da database e das tabelas */

DROP DATABASE IF EXISTS dbcinema;
CREATE DATABASE dbcinema;
USE dbcinema;

CREATE TABLE tbSala(
	numero_sala INT NOT NULL AUTO_INCREMENT,
	descricao_sala VARCHAR(20),
	capacidade int NOT NULL,
	
	CONSTRAINT pk_tbsala PRIMARY KEY (numero_sala)
);

CREATE TABLE tbDiretor(
	codigo_diretor INT NOT NULL AUTO_INCREMENT,
	nome_diretor VARCHAR(20) NOT NULL,
	
	CONSTRAINT pk_tbdiretor PRIMARY KEY (codigo_diretor)
);

CREATE TABLE tbFilme(
	codigo_filme INT NOT NULL AUTO_INCREMENT,
	nome_filme VARCHAR(50) NOT NULL,
	ano_lancamento INT NOT NULL,
	categoria_filme VARCHAR(20),
	codigo_diretor INT NOT NULL,
	
	CONSTRAINT pk_tbfilme PRIMARY KEY (codigo_filme),
	CONSTRAINT fk_tbfilme_tbdiretor FOREIGN KEY (codigo_diretor)
	REFERENCES tbdiretor (codigo_diretor)
);

CREATE TABLE tbSalaFilme(
	numero_sala INT NOT NULL,
	codigo_filme INT NOT NULL,
	data DATE NOT NULL,
	horario TIME NOT NULL,
	
	CONSTRAINT pk_tbsalafilme PRIMARY KEY (numero_sala, codigo_filme, data),
	CONSTRAINT fk_tbsalafilme_tbsala FOREIGN KEY (numero_sala)
	REFERENCES tbsala (numero_sala) ON DELETE CASCADE,
	CONSTRAINT fk_tbsalafilme_tbfilme FOREIGN KEY (codigo_filme)
	REFERENCES tbfilme (codigo_filme) ON DELETE CASCADE
);

CREATE TABLE tbPremio(
	codigo_premio INT NOT NULL AUTO_INCREMENT,
	nome_premio VARCHAR(20) NOT NULL,
	ano_premiacao INT NOT NULL,
	codigo_filme INT NOT NULL,
	
	CONSTRAINT pk_tbpremio PRIMARY KEY (codigo_premio),
	CONSTRAINT fk_tbpremio_tbfilme FOREIGN KEY (codigo_filme)
	REFERENCES tbfilme (codigo_filme)
);
