/* ---==== Criação do Clube do Livro ====--- */

DROP DATABASE IF EXISTS dbclubelivro2026;
CREATE DATABASE dbclubelivro2026;
USE dbclubelivro2026;

CREATE TABLE tbAluno
( matr_aluno INT NOT NULL,
  rg_aluno CHAR(9) NOT NULL,
  nome_aluno VARCHAR(50) NOT NULL, 
  telefone_aluno CHAR(9),
  cidade_aluno VARCHAR(20) DEFAULT "CURITIBA",
  CONSTRAINT un_rg_aluno UNIQUE(rg_aluno),
  CONSTRAINT pk_tbaluno PRIMARY KEY (matr_aluno)
)ENGINE=INNODB;  

CREATE TABLE tbArea
(cod_area INT NOT NULL,
 nome_area VARCHAR(50) NOT NULL,
 CONSTRAINT pk_tbarea PRIMARY KEY (cod_area)
)ENGINE=INNODB;

CREATE TABLE tbLivro
( cod_livro   INT NOT NULL,
  nome_livro  VARCHAR(50) NOT NULL, 
  autor_livro VARCHAR (50),
  matr_aluno  INT,
  cod_area    INT, 
  CONSTRAINT pk_tbLivro PRIMARY KEY (cod_livro),
  CONSTRAINT fk_tbLivro_tbAluno FOREIGN KEY(matr_aluno) REFERENCES tbAluno(matr_aluno),
  CONSTRAINT fk_tbLivro_tbArea FOREIGN KEY(cod_area)  REFERENCES tbArea(cod_area)
  
  ON DELETE CASCADE ON UPDATE CASCADE 

)ENGINE=INNODB;
  
CREATE TABLE tbEmprestimo
(
 cod_aluno INT NOT NULL, 
 cod_livro INT NOT NULL, 
 data_emprestimo DATE, 
 data_devolucao  DATE,
 data_devolucao_prevista DATE,
 CONSTRAINT pk_tbEmprestimo PRIMARY KEY(cod_aluno, cod_livro),
 CONSTRAINT fk_tbEmprestimo_tbAluno FOREIGN KEY(cod_aluno)REFERENCES tbAluno(matr_aluno),
 CONSTRAINT fk_tbEmprestimo_tbLivro FOREIGN KEY(cod_livro) REFERENCES tbLivro(cod_livro)
 
 ON DELETE CASCADE ON UPDATE CASCADE 
)ENGINE=INNODB;