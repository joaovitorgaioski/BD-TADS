/* ---==== Exercícios de Consulta ====--- */

SELECT * FROM tbcliente;

SELECT tbcliente.nome_cliente, tbcliente.cidade_cliente, tbcliente.uf_cliente
FROM tbcliente;

SELECT * FROM tbemprestimo
WHERE data_emprestimo = "2019-03-02";

SELECT * FROM tbemprestimo
WHERE tbemprestimo.valor_multa_emprestimo > 9;

/* Operador NOT vai inverter o resultado da operação lógica */
SELECT * FROM tbemprestimo
WHERE NOT tbemprestimo.valor_multa_emprestimo > 9;

SELECT * FROM tbemprestimo
WHERE tbemprestimo.valor_multa_emprestimo < 5
AND tbemprestimo.data_emprestimo = "2019-03-02";

SELECT * FROM tbemprestimo
WHERE tbemprestimo.valor_multa_emprestimo < 5
OR tbemprestimo.data_emprestimo = "2019-03-02";

SELECT * FROM tbemprestimo
WHERE tbemprestimo.data_devolucao_efetiva_emprestimo = tbemprestimo.data_devolucao_prevista_emprestimo;

SELECT tbtitulo.nome_titulo, tbcategoria.nome_categoria
FROM tbtitulo, tbcategoria
WHERE tbtitulo.cod_categoria = tbcategoria.cod_categoria;

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe, tbclasse.preco_classe
FROM tbtitulo, tbclasse
WHERE tbtitulo.cod_classe = tbclasse.cod_classe;

/* ---==== Lista de exercícios ====---*/

/* 1. Liste todas as categorias da tbcategoria */
SELECT * FROM tbcategoria;

/* 2. Liste somente o nome do filme da tbfilme */
SELECT nome_filme FROM tbfilme;

/* 3. Liste todos os clientes que são do estado do Paraná */
SELECT * FROM tbcliente
WHERE uf_cliente = "PR";

/* 4. Faça a negação da consulta acima, para isso utilize NOT */
SELECT * FROM tbcliente
WHERE NOT uf_cliente = "PR";

/* 5. Liste todos os clientes que são do estado do Paraná e a cidade de Curitiba */
SELECT * FROM tbcliente
WHERE uf_cliente = "PR"
AND cidade_cliente = "Curitiba";

/* 6. Liste todos os emprestimos que tiveram a data de devolução efetiva no ano de 2018 */
SELECT * FROM tbemprestimo
WHERE data_devolucao_prevista_emprestimo = data_devolucao_efetiva_emprestimo
AND data_emprestimo BETWEEN "2018-01-01" AND "2018-12-31";

/* 7. Liste todos os filmes com codigo entre 70 e 80 */
SELECT * FROM tbfilme
WHERE cod_filme > 70 AND cod_filme < 80;

/* 8. Liste o Nome de todos os filmes locados */
SELECT DISTINCT nome_filme FROM tbfilme;

/* 9. Liste os empréstimos de Cade Cline */
SELECT tbcliente.nome_cliente,
tbemprestimo.data_emprestimo,
tbemprestimo.data_devolucao_prevista_emprestimo,
tbemprestimo.data_devolucao_efetiva_emprestimo,
tbemprestimo.valor_multa_emprestimo
FROM tbcliente, tbemprestimo
WHERE tbcliente.cod_cliente = tbemprestimo.cod_cliente
AND tbcliente.nome_cliente = "Cade Cline";

/* 10. Liste todos os nomes de filmes com seus respectivos nomes de titulos */
SELECT tbfilme.nome_filme, tbtitulo.nome_titulo
FROM tbfilme, tbtitulo
WHERE tbfilme.cod_titulo = tbtitulo.cod_titulo;

/* 11. Liste todos os nomes dos clientes e suas respectivas multas */
SELECT tbcliente.nome_cliente, tbemprestimo.valor_multa_emprestimo
FROM tbcliente, tbemprestimo
WHERE tbemprestimo.cod_cliente = tbcliente.cod_cliente;

/* 12. Liste todos os filmes emprestados em 2018 */
SELECT tbfilme.nome_filme, tbemprestimo.data_emprestimo
FROM tbfilme, tbemprestimo
WHERE tbfilme.cod_filme = tbemprestimo.cod_filme
AND tbemprestimo.data_emprestimo BETWEEN "2018-01-01" AND "2018-12-31";

/* 13. Liste os filmes e suas respectiva categorias */
SELECT tbfilme.nome_filme, tbcategoria.nome_categoria
FROM tbfilme, tbcategoria, tbtitulo
WHERE tbtitulo.cod_categoria = tbcategoria.cod_categoria
AND tbfilme.cod_titulo = tbtitulo.cod_titulo;

/* 14. Liste os filmes da classe Lançamento */
SELECT tbfilme.nome_filme, tbclasse.nome_classe
FROM tbfilme, tbclasse, tbtitulo
WHERE tbtitulo.cod_classe = tbclasse.cod_classe
AND tbfilme.cod_titulo = tbtitulo.cod_titulo;

/* 15. Liste os filmes da classe Catálogo */
SELECT tbfilme.nome_filme, tbclasse.nome_classe
FROM tbfilme, tbclasse, tbtitulo
WHERE tbclasse.nome_classe = "Catalogo"
AND tbtitulo.cod_classe = tbclasse.cod_classe
AND tbfilme.cod_titulo = tbtitulo.cod_titulo;

