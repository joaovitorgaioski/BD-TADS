/* ---==== Comandos Úteis ====--- */

/* ---==== IN e NOT IN ====--- 
- Usado para comparar se um conjunto de dados esta presente em outro conjunto de dados.
*/

/* ---==== EXISTS e NOT EXISTS ====--- 
- Verifica se um registro existe dentro de um conjunto de dados.
*/

/* ---==== Exercícios ====--- */

/* 1. Utilizando subconsulta como coluna de dados Liste a classe e a quantidade de
titulos em cada classe */
SELECT c.nome_classe, (SELECT COUNT(t.cod_titulo)) AS "Quantidade de Títulos"
FROM tbclasse c
INNER JOIN tbtitulo t ON t.cod_classe = c.cod_classe
GROUP BY c.cod_classe;

/* 2. Utilizando subconsulta, listar todos os titulos com preço da classe acima da média */
SELECT t.nome_titulo, c.preco_classe
FROM tbtitulo t
INNER JOIN tbclasse c ON c.cod_classe = t.cod_classe
WHERE c.preco_classe > (
	SELECT AVG(c.preco_classe) FROM tbclasse c
);

/* 3. Realize um pesquisa sobre o funcionamento do comando IN e NOT IN e explique-o

O comando IN e NOT IN serve para comparar se um conjunto de dados esta presente em 
outro conjunto de dados. O NOT IN simplesmente é um excluiso, ou seja, faz o contrário, 
seleciona somente os dados que não estão presentes em um determinado conjunto.
*/

/* 4. Exemplifique com uma consulta usando IN  na base de dados da locadora */
/* Exemplo: Busca os filmes com títulos nos anos 2010, 2015 e 2019 */
SELECT f.nome_filme AS "Filme", t.nome_titulo AS "Título", t.ano_titulo AS "Ano do Título"
FROM tbfilme f
INNER JOIN tbtitulo t ON t.cod_titulo = f.cod_titulo
WHERE t.ano_titulo IN (2010, 2015, 2018);

/* 5. Liste todos os titulos que não foram locados entre 2017 e 2018 usando NOT IN */
/* 6. Realize um pesquisa sobre o funcionamento do comando EXISTS e NOT EXISTS e explique-o */
/* 7. Crie uma consulta usando o comando EXISTS para o dblocadora e explique */
/* 8. Faça a negação da consulta anterior */