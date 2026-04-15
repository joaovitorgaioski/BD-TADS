/* ---==== Funções Agregadas ====---*/
/* AVG, SUM, MIN, MAX, COUNT*/

/* 1. Preço médio dos preços da classe de tbclasse */
SELECT AVG(c.preco_classe) AS 'Média dos Preços'
FROM tbclasse c;

/* 2. Somatório de multas de todos os empréstimos */
SELECT SUM(e.valor_multa_emprestimo) AS 'Soma Total das Multas'
FROM tbemprestimo e;

/* 3. O cadastro do cliente mais antigo */
SELECT MIN(c.data_cadastro_cliente) AS 'Cadastro Mais Antigo'
FROM tbcliente c;

/* 4. O cadastro do cliente mais recente */
SELECT MAX(c.data_cadastro_cliente) AS 'Cadastro Mais Recente'
FROM tbcliente c;

/* 5. A quantidade de filmes */
SELECT COUNT(*) AS 'Quantidade de Filmes Cadastrados'
FROM tbfilme;

/* 6. Retorne a quantidade de títulos de uma determinada categoria */
SELECT COUNT(*) AS 'Quantidade de Títulos da Categoria TERROR'
FROM tbtitulo t, tbcategoria c
WHERE t.cod_categoria = c.cod_categoria
AND c.nome_categoria LIKE "TERROR";
