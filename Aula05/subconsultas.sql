/* ---==== SUBCONSULTAS ====--- */

/* Listar todos os Clientes que tiveram mais do que 4 empréstimos */
SELECT tbderivada.cod_cliente, tbderivada.nome_cliente, tbderivada.qtd_emprestimo
FROM (
	SELECT c.cod_cliente, c.nome_cliente, 
	COUNT(e.data_emprestimo) AS "qtd_emprestimo"
	FROM tbcliente c
	INNER JOIN tbemprestimo e ON e.cod_cliente = c.cod_cliente
	GROUP BY c.cod_cliente
) AS tbderivada
WHERE tbderivada.qtd_emprestimo > 4;

/* Listar a quantidade de títulos em cada categoria */
SELECT c.nome_categoria, (
	SELECT COUNT(t.cod_titulo)
	FROM tbtitulo t
	WHERE t.cod_categoria = c.cod_categoria
) AS "Quantidade de Títulos"
FROM tbcategoria c
GROUP BY c.cod_categoria;

/* Listar todos os filmes emprestados com valor da multa de empréstimo acima da média */
SELECT e.data_emprestimo, e.cod_filme, f.nome_filme, e.valor_multa_emprestimo
FROM tbemprestimo e
INNER JOIN tbfilme f ON f.cod_filme = e.cod_filme
WHERE e.valor_multa_emprestimo > (
	SELECT AVG(e.valor_multa_emprestimo) FROM tbemprestimo e
);
