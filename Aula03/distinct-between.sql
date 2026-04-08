/* ---==== Outros comandos úteis SQL ====---*/

/* DISTINCT - Obtém apenas o que é distinto, único */
SELECT DISTINCT nome_filme FROM tbfilme;

/* BETWEEN - Para determinar um período */
SELECT * FROM tbemprestimo
WHERE  tbemprestimo.data_emprestimo
BETWEEN "2019-01-01" AND "2019-12-31";