/* ---==== Outros comandos úteis SQL ====---*/

/* ---==== DISTINCT - Obtém apenas o que é distinto, único */
SELECT DISTINCT nome_filme FROM tbfilme;

/* ---==== BETWEEN - Para determinar um período */
SELECT * FROM tbemprestimo
WHERE  tbemprestimo.data_emprestimo
BETWEEN "2019-01-01" AND "2019-12-31";

/* ---==== ALIAS (AS) - Definir nomes de colunas e de tabelas */
SELECT tbclasse.nome_classe AS 'Nome da Classe',
tbclasse.preco_classe * 1.10 AS 'Preco com Aumento de 10%'
FROM tbclasse;

SELECT c.nome_cliente AS 'Nome Cliente'
FROM tbcliente AS c;

SELECT T.nome_titulo AS 'Título', C.nome_categoria AS 'Categoria'
FROM tbtitulo T, tbcategoria C
WHERE T.ano_titulo = 2015
AND T.cod_categoria = C.cod_categoria;

/* ---==== LIKE - Melhor para procurar strings, ao invés de usar ' = ' */
SELECT t.nome_titulo AS 'Título', t.ano_titulo AS 'ANO'
FROM tbtitulo t
WHERE t.nome_titulo LIKE "M%";
/* M% vai retornar todos que começam com 'm' */

SELECT t.nome_titulo AS 'Título', t.ano_titulo AS 'ANO'
FROM tbtitulo t
WHERE t.nome_titulo LIKE "%am%";
/* '%am%' vai retornar qualquer registro que tenha 'am' */

SELECT t.nome_titulo AS 'Título', t.ano_titulo AS 'ANO'
FROM tbtitulo t
WHERE t.nome_titulo LIKE "_____";
/* vai retornar todos os títulos com 5 caracteres */

SELECT t.nome_titulo AS 'Título', t.ano_titulo AS 'ANO'
FROM tbtitulo t
WHERE t.nome_titulo LIKE "f___e";
/* vai retornar todos os títulos com 5 caracteres iniciados em 'f' e terminados em 'e' */

/* ---==== ORDER BY - Ordernar os valores */
/* ASC = Ascendente */
/* DESC = Descendente */
SELECT t.nome_titulo AS 'Título'
FROM tbtitulo t ORDER BY t.nome_titulo ASC;

SELECT t.nome_titulo AS 'Título'
FROM tbtitulo t ORDER BY t.nome_titulo DESC;

SELECT t.nome_titulo AS 'Título', t.ano_titulo AS 'Ano'
FROM tbtitulo t ORDER BY t.ano_titulo ASC;

SELECT c.nome_cliente, c.data_cadastro_cliente
FROM tbcliente AS c
ORDER BY c.data_cadastro_cliente ASC;