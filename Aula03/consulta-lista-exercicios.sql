/* ---==== Lista de exercícios de consultas ====---*/

/*1. Exiba o nome_cliente e o valor da multa de todos os clientes que tem o nome "on" no seu nome*/
SELECT c.nome_cliente, e.valor_multa_emprestimo
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.nome_cliente LIKE "%on%";

/* 2.Quantos empréstimos o cliente Cullen Puckett realizou? */
SELECT COUNT(*) FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.nome_cliente LIKE "Cullen Puckett";

/* 3. Qual o valor das multas de emprestimos de Cullen Puckett? */
SELECT SUM(e.valor_multa_emprestimo) AS "Total em Multas de Cullen Puckett"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.nome_cliente LIKE "Cullen Puckett";

/* 4. Realize a média de multas de todas as pessoas que tem o nome iniciado com a letra B */
SELECT AVG(e.valor_multa_emprestimo) AS "Média das Multas de Quem Começa com B"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.nome_cliente LIKE "B%";

/* 5. Exiba o valor da menor multa, maior multa, quantidade de multas, 
somatório de multas e valor médio de multas em uma mesma consulta */
SELECT MIN(e.valor_multa_emprestimo) AS 'Menor Multa',
MAX(e.valor_multa_emprestimo) AS 'Maior Multa',
COUNT(e.valor_multa_emprestimo) AS 'Quantidade de Multas',
SUM(e.valor_multa_emprestimo) AS 'Soma das Multas',
AVG(e.valor_multa_emprestimo) AS 'Média Multas'
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente;

/* 6. Realize uma consulta do preco medio das multas na tabela emprestimo*/
SELECT AVG(e.valor_multa_emprestimo) AS 'Preço Médio das Multas'
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente;

/* ---== Elaborar 3 consultas que envolvam WHERE com 2 ou mais tabelas ==--- */

/* 1: Consulta todos os títulos de cada filme */
SELECT f.nome_filme AS 'Filme', t.nome_titulo AS 'Título'
FROM tbfilme f, tbtitulo t
WHERE f.cod_titulo = t.cod_titulo; 

/* 2: Consulta todos os clientes de Rio Verde que emprestaram filmes antes de 2019 */
SELECT c.nome_cliente AS "Cliente", c.cidade_cliente AS "Cidade do Cliente",
e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.cidade_cliente = "Rio Verde"
AND e.data_emprestimo < "2019-01-01";

/* 3: Consulta os filmes emprestados pelos clientes com a data do empréstimo*/
SELECT c.nome_cliente, f.nome_filme, e.data_emprestimo
FROM tbcliente c, tbfilme f, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND e.cod_filme = f.cod_filme;

/* ---== Elabaror 3 consultas com funções agregadas com WHERE com 2 ou mais tabelas ==--- */

/* 1: Consulta a quantidade de emprestimos de um cliente específico */
SELECT c.nome_cliente, 
COUNT(e.data_emprestimo) AS "Quantidade de Empréstimos"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.cod_cliente = 20;

/* 2: Consulta o total em multas de cada cliente */
SELECT c.nome_cliente AS "Cliente", 
SUM(e.valor_multa_emprestimo) AS "Total em multas"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
GROUP BY c.nome_cliente;

/* 3: Quantidades de títulos por filme */
SELECT f.nome_filme AS "Nome do Filme", 
COUNT(t.cod_titulo) AS "Quantidade de Títulos"
FROM tbfilme f, tbtitulo t
WHERE f.cod_titulo = t.cod_titulo
GROUP BY f.nome_filme;

/* ---== Elaborar 1 consulta que envolva DISTINCT e WHERE com 2 ou mais tabelas ==--- */

/* Consulta clientes e filmes que eles emprestaram, sem repetir as mesmas correspondências caso existam */
SELECT DISTINCT c.nome_cliente AS "Cliente", 
f.nome_filme AS "Filme"
FROM tbcliente c, tbfilme f, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND f.cod_filme = e.cod_filme;

/* ---== Elaborar 1 consulta que envolva BETWEEN e WHERE com 2 ou mais tabelas ==--- */

/* Consulta pessoas de Curitiba que emprestaram em 2018 */
SELECT c.nome_cliente AS "Cliente",
c.cidade_cliente AS "Cidade",
e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c, tbemprestimo e
WHERE c.cod_cliente = e.cod_cliente
AND c.cidade_cliente LIKE "Curitiba"
AND e.data_emprestimo BETWEEN "2018-01-01" AND "2018-12-31";

/* ---== Elaborar 3 consulta que envolva LIKE e WHERE com 2 ou mais tabelas ==--- */

/* 1: Consulta filmes da categoria Comedia do período entre 2010 e 2020 */
SELECT f.nome_filme AS "Filme",
t.ano_titulo AS "Ano",
c.nome_categoria AS "Categoria"
FROM tbfilme f, tbtitulo t, tbcategoria c
WHERE t.cod_titulo = f.cod_titulo
AND t.cod_categoria = c.cod_categoria
AND c.nome_categoria LIKE "Comedia"
AND t.ano_titulo BETWEEN "2010-01-01" AND "2020-12-31";

/* 2: Consulta todos os empréstimos de clientes começados em "J" */
SELECT c.nome_cliente AS "Cliente",
e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c, tbemprestimo e
WHERE e.cod_cliente = c.cod_cliente
AND c.nome_cliente LIKE "J%";

/* 3: Consulta todos os empréstimos de clientes que contém "A" no nome e defilmes que terminam em "E" */
SELECT c.nome_cliente AS "Cliente",
f.nome_filme AS "Filme", 
e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c, tbemprestimo e, tbfilme f
WHERE e.cod_cliente = c.cod_cliente
AND e.cod_filme = f.cod_filme
AND c.nome_cliente LIKE "%A%"
AND f.nome_filme LIKE "%E";
