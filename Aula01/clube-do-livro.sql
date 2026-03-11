/* Teste para verificar se existe base de dados */
DROP DATABASE IF EXISTS dbClubeDoLivro;

/* Criação da base de dados */
CREATE DATABASE dbClubeDoLivro;
USE dbClubeDoLivro;

/* Criação da tabela */
CREATE TABLE tbAluno (
	matr_aluno INT NOT NULL,
	rg_aluno CHAR(9) NOT NULL,
	nome_aluno VARCHAR(64) NOT NULL,
	telefone_aluno CHAR(9),
	cidade_aluno VARCHAR(32) DEFAULT "Irati",
	
	/* Restrições */
	CONSTRAINT pk_tbaluno PRIMARY KEY (matr_aluno),
	CONSTRAINT un_tbaluno UNIQUE (rg_aluno)
	
	/* ENGINE = INNODB garante integridade */
) ENGINE = INNODB;

CREATE TABLE tbArea (
	cod_area INT NOT NULL,
	nome_area VARCHAR(32) NOT NULL,
	
	CONSTRAINT pk_tbarea PRIMARY KEY (cod_area)
) ENGINE = INNODB;

CREATE TABLE tbLivro (
	isbn_livro CHAR(13) NOT NULL,
	nome_livro VARCHAR(64) NOT NULL,
	autor_livro VARCHAR(64) NOT NULL,
	cod_area INT,
	matr_aluno INT,
	
	CONSTRAINT pk_tblivro PRIMARY KEY (isbn_livro),
	
	CONSTRAINT fk_tblivro_tbarea FOREIGN KEY (cod_area)
	REFERENCES tbArea(cod_area),
	
	CONSTRAINT fk_tblivro_tbaluno FOREIGN KEY (matr_aluno)
	REFERENCES tbAluno(matr_aluno)
) ENGINE = INNODB;

CREATE TABLE tbEmprestimo (
	matr_aluno INT NOT NULL,
	isbn_livro CHAR(13) NOT NULL,
	data_emprestimo DATE,
	data_devolucao_prevista DATE,
	data_devolucao DATE,
	
	CONSTRAINT pk_tbemprestimo PRIMARY KEY (matr_aluno, isbn_livro),
	
	CONSTRAINT fk_tbemprestimo_tbaluno FOREIGN KEY (matr_aluno)
	REFERENCES tbAluno(matr_aluno),
	
	CONSTRAINT fk_tbemprestimo_tblivro FOREIGN KEY (isbn_livro)
	REFERENCES tbLivro(isbn_livro)
) ENGINE = INNODB;

