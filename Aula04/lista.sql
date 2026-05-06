/* ----=== Lista de exercícios sobre GROUP BY, HAVING e INNER JOIN ===---- */

/* 1. Listar a quantidade de titulos agrupados por classe. */
SELECT COUNT(t.cod_titulo) AS "Quantidade de Títulos",
c.nome_classe AS "Classe"
FROM tbtitulo t
INNER JOIN tbclasse c ON t.cod_classe = c.cod_classe
GROUP BY nome_classe;

/* 2. Listar a quantidade de empréstimos agrupados pela classe dos titulos. */
SELECT COUNT(e.data_emprestimo) AS "Quantidade de Empréstimos",
c.nome_classe AS "Classe"
FROM tbemprestimo e
INNER JOIN tbfilme f ON e.cod_filme = f.cod_filme
INNER JOIN tbtitulo t ON t.cod_titulo = f.cod_titulo
INNER JOIN tbclasse c ON c.cod_classe = t.cod_classe
GROUP BY c.nome_classe;

/* 3. Liste a quantidade de clientes agrupados por cidade. 
Só devem ser listadas as cidades de Curitiba, Guarapuava e Itabuna */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
cidade_cliente AS "Cidade"
FROM tbcliente
GROUP BY cidade_cliente
HAVING cidade_cliente LIKE "Curitiba"
OR cidade_cliente LIKE "Guarapuava"
OR cidade_cliente LIKE "Itabuna";

/* 4. Utilizando o conceito de tabelas derivada, liste a quantidade de clientes 
agrupados por cidade. Só devem ser listadas as cidades com mais de 2 clientes. */

/* 5. Liste a quantidade de clientes agrupados por Estado. 
Só devem ser listados o Estado do PR */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
uf_cliente AS "Estado"
FROM tbcliente
GROUP BY uf_cliente
HAVING uf_cliente LIKE "PR";

/* 6. Liste quais os nomes dos clientes e nomes dos filmes dos clientes que estão 
em atraso. */
SELECT c.nome_cliente AS "Cliente", 
f.nome_filme AS "Filme", 
e.data_devolucao_prevista_emprestimo AS "Devolução Prevista", 
e.data_devolucao_efetiva_emprestimo AS "Devolução Efetiva"
FROM tbcliente c
INNER JOIN tbemprestimo e ON e.cod_cliente = c.cod_cliente
INNER JOIN tbfilme f ON e.cod_filme = f.cod_filme
HAVING data_devolucao_efetiva_emprestimo > data_devolucao_prevista_emprestimo;

/* 7. Liste a quantidade de clientes agrupados por cidade. 
Só devem ser listadas as cidades do Estado do Paraná */
SELECT COUNT(cod_cliente) AS "Quantidade de Clientes",
cidade_cliente AS "Cidade",
uf_cliente AS "Estado"
FROM tbcliente
GROUP BY cidade_cliente
HAVING uf_cliente LIKE "PR";

/* ----=== EXERCÍCIOS INNER JOIN ===---- */
/* 1. Exiba o nome_cliente e o valor da multa de todos os clientes que 
tem o nome "ene" no seu nome */
SELECT c.nome_cliente AS "Cliente com 'ene' no nome", 
e.valor_multa_emprestimo AS "Valor da Multa"
FROM tbcliente c
INNER JOIN tbemprestimo e ON e.cod_cliente = c.cod_cliente
WHERE nome_cliente LIKE "%ene%";

/* 2. Quantos empréstimos o cliente Jolene Morse realizou? */
SELECT c.nome_cliente AS "Cliente", 
COUNT(e.data_emprestimo) AS "Quantidade de Emprestimos"
FROM tbemprestimo e
INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
WHERE c.nome_cliente LIKE "Jolene Morse";

/* 3. Qual o valor das multas de emprestimos de Jolene Morse ? */
SELECT c.nome_cliente AS "Cliente", 
SUM(e.valor_multa_emprestimo) AS "Total das Multas do Cliente"
FROM tbemprestimo e
INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
WHERE c.nome_cliente LIKE "Jolene Morse";

/* 4. Realize a média de multas de todas as pessoas que tem o nome iniciado 
com a letra J */

/* 5. Exiba o valor da menor multa, maior multa, quantidade de multas, 
somatório de multas e valor medio de multas em uma mesma consulta */
