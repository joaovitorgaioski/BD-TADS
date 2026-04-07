/* ---==== Comando UPDATE - Atualiza dados de uma ou mais tabelas ====--- */

UPDATE tbarea
SET nome_area = "Ficção";

UPDATE tbarea
SET nome_area = "Banco de Dados"
WHERE cod_area = 1;

UPDATE tbarea
SET nome_area = "Algoritmos"
WHERE cod_area = 2;

UPDATE tbarea
SET nome_area = "Literatura"
WHERE cod_area = 3;

UPDATE tbarea
SET nome_area = "Literatura Inglesa"
WHERE cod_area = 4;

UPDATE tbarea
SET nome_area = "Lógica"
WHERE cod_area = 5;
