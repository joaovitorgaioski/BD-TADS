/* ---==== CONSULTAS SIMPLES USANDO APENAS SELECT ====--- */

/* Quais livros foram cadastrados? */
SELECT * FROM tblivro;

/* Quais os nomes e a cidade dos alunos?*/
SELECT tbaluno.nome_aluno, tbaluno.cidade_aluno FROM tbaluno;

/* Quais são os autores? */
SELECT autor_livro FROM tblivro;

/* Quais as áreas dos livros? */
SELECT * FROM tbarea;

/* ---==== CONSULTAS ENVOLVENDO CONDIÇÕES - CLÁUSULA WHERE ====--- */

/* Quais os alunos que moram em Pelotas? */
SELECT tbaluno.nome_aluno 
FROM tbaluno 
WHERE tbaluno.cidade_aluno = "Pelotas";

/* Quem é o aluno número 102? */
SELECT * FROM tbaluno 
WHERE tbaluno.matr_aluno = 102;

/* Quais foram os emprestimos do aluno 102? */
SELECT * FROM tbemprestimo
WHERE tbemprestimo.cod_aluno = 102;

/* ---==== CONSULTAS ENVOLVENDO MAIS DE UMA TABELA ====--- */

/* Quem é o aluno 102 e quais foram os seus emprestimos? */
SELECT tbaluno.nome_aluno, tbemprestimo.data_emprestimo
FROM tbaluno, tbemprestimo
WHERE tbemprestimo.cod_aluno = 102
AND tbemprestimo.cod_aluno = tbaluno.matr_aluno;
/* Essa parte do AND vai garantir que os campos sejam relacionados corretamente */

/* Quais foram os livros que Nita emprestou*/
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbemprestimo.data_emprestimo
FROM tbaluno, tblivro, tbemprestimo
WHERE tbemprestimo.cod_aluno = 102
AND tbemprestimo.cod_aluno = tbaluno.matr_aluno
AND tbemprestimo.cod_livro = tblivro.cod_livro;

/* Quando o aluno 102 devolveu o livro Projeto de Banco de Dados? */
SELECT tbaluno.nome_aluno, tblivro.nome_livro, tbemprestimo.data_devolucao
FROM tbaluno, tblivro, tbemprestimo
WHERE tbemprestimo.cod_aluno = 102
AND tbemprestimo.cod_aluno = tbaluno.matr_aluno
AND tbemprestimo.cod_livro = tblivro.cod_livro
AND tblivro.nome_livro = "Projeto de Banco de Dados";
