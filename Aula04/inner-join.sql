/* ----=== INNER JOIN ===---- */

SELECT t.nome_titulo AS Titulo, c.nome_categoria AS Categoria
FROM tbtitulo t, tbcategoria c
WHERE t.cod_categoria = c.cod_categoria;

/* Trocamos o exemplo acima por: */
SELECT t.nome_titulo AS Titulo, c.nome_categoria AS Categoria
FROM tbtitulo t
INNER JOIN tbcategoria c ON t.cod_categoria = c.cod_categoria;

/* Colocando condição */
SELECT t.nome_titulo AS Titulo, c.nome_categoria AS Categoria, t.ano_titulo AS Ano
FROM tbtitulo t
INNER JOIN tbcategoria c ON t.cod_categoria = c.cod_categoria
WHERE t.ano_titulo = 2015;

SELECT COUNT(t.cod_titulo) AS "Quantidade de Filmes de Terror"
FROM tbtitulo t
INNER JOIN tbcategoria c ON t.cod_categoria = c.cod_categoria
WHERE c.nome_categoria LIKE "terror";

SELECT COUNT(t.cod_titulo) AS "Quantidade de Filmes de Ação"
FROM tbtitulo t
INNER JOIN tbcategoria c ON t.cod_categoria = c.cod_categoria
WHERE c.nome_categoria LIKE "ação";

/* ----=== GROUP BY ===----
- Usado para agrupar valores ao usar uma função agregada
*/

SELECT COUNT(t.cod_titulo) AS "Quantidade de Títulos",
c.nome_categoria AS "Categoria"
FROM tbtitulo t
INNER JOIN tbcategoria c ON c.cod_categoria = t.cod_categoria
GROUP BY c.nome_categoria;

/* Quantos títulos temos em cada classe? */
SELECT COUNT(t.cod_titulo) AS "Quantidade de Títulos",
c.nome_classe AS "Classe"
FROM tbtitulo t
INNER JOIN tbclasse c ON t.cod_classe = c.cod_classe
GROUP BY c.nome_classe;

/* Contabilizar os títulos por ano? */
SELECT COUNT(cod_titulo) AS "Quantidade de Títulos",
ano_titulo AS "Ano"
FROM tbtitulo
GROUP BY ano_titulo
ORDER BY ano_titulo ASC;

/* Contabilizar clientes por cidade do cliente */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
cidade_cliente AS "Cidade"
FROM tbcliente
GROUP BY cidade_cliente;

/* Contabilizar clientes por estado */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
uf_cliente AS "Estado"
FROM tbcliente
GROUP BY uf_cliente;

/* Listar a quantidade de emprestimos agrupados por cliente */
SELECT COUNT(e.data_emprestimo) AS "Quantidade de Empréstimos", 
c.nome_cliente AS "Cliente"
FROM tbemprestimo e 
INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
GROUP BY c.nome_cliente;

/* ----=== HAVING ===----
- Condições em agrupamentos não podem serem feitas com WHERE, devemos usar HAVING
*/

/* Contabilizar clientes por cidade com + de 3 clientes */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
cidade_cliente AS "Cidade"
FROM tbcliente
GROUP BY cidade_cliente
HAVING COUNT(cod_cliente) > 3;

/* Contabilizar clientes por estado com + de 3 clientes */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
uf_cliente AS "Estado"
FROM tbcliente
GROUP BY uf_cliente
HAVING COUNT(cod_cliente) > 3;
