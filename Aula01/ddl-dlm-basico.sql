
/* -----==== Comandos de ALTERAÇÃO de tabelas (DDL) ====-----*/


/* ADD */
ALTER TABLE tbAluno
ADD cpf_aluno VARCHAR(5);

/* MODIFY */
ALTER TABLE tbAluno
MODIFY cpf_aluno CHAR(11);

/* DROP */
ALTER TABLE tbAluno
DROP cpf_aluno;

/* DROP também serve para excluir CONSTRAINT */
ALTER TABLE tbLivro
DROP FOREIGN KEY fk_tblivro_tbaluno;

/* ADD também serve para criar CONSTRAINT */
ALTER TABLE tbLivro
ADD CONSTRAINT fk_tblivro_tbaluno FOREIGN KEY (matr_aluno)
REFERENCES tbAluno(matr_aluno);

/* ALTER COLUMN para modificar um DEFAULT */
ALTER TABLE tbAluno
ALTER COLUMN cidade_aluno SET DEFAULT 'Curitiba';


/* -----==== Comandos de INSERÇÃO de dados(DML) ====-----*/


INSERT INTO tbAluno (matr_aluno, rg_aluno, nome_aluno, telefone_aluno, cidade_aluno) VALUES
(1, 123456789, "Marcos", 991745679, "Pirai do Sul"),
(2, 987654321, "Genoveva", 991235479, "Jacarezinho"),
(3, 192837465, "Vitorio", 991438954, "Putinga");

INSERT INTO tbArea (cod_area, nome_area) VALUES
(1, "Ficção Científica"),
(2, "Fantasia"),
(3, "Banco de Dados"),
(4, "Suspense"),
(5, "Mitologia");

INSERT INTO tbLivro (isbn_livro, nome_livro, autor_livro, cod_area, matr_aluno) VALUES
(1234567891234, "Introdução à Linguagem SQL", "Thomas Nield", 3, 1),
(4321987654321, "Mitologia Nórdica", "Neil Gaiman", 5, 3),
(1234512345123, "The Masque of the Red Death", "Edgar Allan Poe", 4, NULL),
(1312098765432, "Planetes", "Makoto Yukimura", 1, 2),
(9847382910673, "Coraline", "Neil Gaiman", 1, 1);

INSERT INTO tbEmprestimo (matr_aluno, isbn_livro, data_emprestimo, data_devolucao_prevista, data_devolucao) VALUES
(3, 1234567891234, "2026-03-10", "2026-03-28", NULL),
(1, 1312098765432, "2026-02-24", "2026-03-06", "2026-03-05"),
(2, 4321987654321, "2026-02-15", "2026-03-01", "2026-02-28"),
(1, 1234512345123, "2026-03-09", "2026-03-27", NULL),
(3, 9847382910673, "2026-02-19", "2026-03-02", "2026-03-02");
