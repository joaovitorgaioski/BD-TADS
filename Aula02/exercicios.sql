/* ---==== Exercícios ====--- */

/* 14 - Qual aluno doou o livro Chico Bento? */
SELECT tbaluno.nome_aluno, tblivro.nome_livro
FROM tbaluno, tblivro
WHERE tblivro.nome_livro = "Chico Bento"
AND tbaluno.matr_aluno = tblivro.matr_aluno;

/* 15 - Quais alunos emprestaram o livro Projeto de Banco de Dados?*/
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbemprestimo.data_emprestimo
FROM tbaluno, tblivro, tbemprestimo
WHERE tblivro.nome_livro = "Projeto de Banco de Dados"
AND tbemprestimo.cod_aluno = tbaluno.matr_aluno
AND tbemprestimo.cod_livro = tblivro.cod_livro;

/* 16 - A qual área pertence o livro Projeto de Banco de Dados? */
SELECT tblivro.nome_livro, tbarea.nome_area
FROM tblivro, tbarea
WHERE tblivro.nome_livro = "Projeto de Banco de Dados"
AND tblivro.cod_area = tbarea.cod_area;

/* 17 - Quais alunos doaram livros da área de Literatura? */
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbarea.nome_area
FROM tbaluno, tblivro, tbarea
WHERE tbarea.nome_area  = "Literatura"
AND tbaluno.matr_aluno = tblivro.matr_aluno
AND tbarea.cod_area = tblivro.cod_area;

/* 18 - Quais são os livros e seus respectivos autores? */
SELECT tblivro.nome_livro, tblivro.autor_livro
FROM tblivro;

/* 19 - Quais alunos e as datas em que realizaram empréstimo? */
SELECT tbaluno.nome_aluno, tbemprestimo.data_emprestimo
FROM tbaluno, tbemprestimo
WHERE tbemprestimo.cod_aluno = tbaluno.matr_aluno;

/* 20 - Quais são os nomes dos alunos, os livros emprestados e as datas de empréstimo? */
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbemprestimo.data_emprestimo
FROM tbaluno, tblivro, tbemprestimo
WHERE tbemprestimo.cod_aluno = tbaluno.matr_aluno
AND tbemprestimo.cod_livro = tblivro.cod_livro;


/* 21 - Quais os nomes dos livros que foram emprestados? */
SELECT tblivro.nome_livro, tbemprestimo.data_emprestimo
FROM tblivro, tbemprestimo
WHERE tbemprestimo.cod_livro = tblivro.cod_livro;

/* 22 - Quais são os nomes dos alunos e os livros que foram emprestados por eles na data "2021-01-10"? */
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbemprestimo.data_emprestimo
FROM tbaluno, tblivro, tbemprestimo
WHERE tbemprestimo.data_emprestimo = "2021-01-10"
AND tbemprestimo.cod_aluno = tbaluno.matr_aluno
AND tbemprestimo.cod_livro = tblivro.cod_livro;

/* 23 - Quais livros foram devolvidos com atraso? */
SELECT tblivro.nome_livro, tbemprestimo.data_devolucao
FROM tblivro, tbemprestimo
WHERE tbemprestimo.data_devolucao > tbemprestimo.data_devolucao_prevista
AND tbemprestimo.cod_livro = tblivro.cod_livro;
