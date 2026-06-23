/* ----=== Controle de Acesso ===----*/

/* ---== Criação de usuários ==--- */

/* Usuário Caixa */
CREATE USER 'caixa'@'localhost' IDENTIFIED BY '123';

/* Usuário Gerente */
CREATE USER 'gerente'@'localhost' IDENTIFIED BY '123';

/* ---== Consultar Usuários ==---*/
SELECT user, host
FROM mysql.user;

/* ---== Consultar Permissões de um Usuário ==--- */
SHOW GRANTS FOR 'caixa'@'localhost';

/* ---== Concedendo Permissões - GRANT ==---*/

/* Para o Caixa */
GRANT SELECT, INSERT
ON loja.*
TO 'caixa'@'localhost';

/* Para o Gerente */
GRANT SELECT, INSERT, UPDATE, DELETE
ON loja.*
TO 'gerente'@'localhost';

/* ---== Testando Acessos ==---*/

/* Com o usuário Caixa */

SELECT * FROM produto;
/* Resultado: Consulta funcionou*/

DELETE FROM produto WHERE id = 1;
/* Resultado: Acesso negado, o usuário caixa não têm permissão para deletar dados */

/* Com o usuário Gerente */

UPDATE produto
SET preco = 4000
WHERE id = 1;
/* Resultado: Sucesso, fez o UPDATE pois o gerente possui a permissão */

/* ---== Removendo Permissões - REVOKE ==--- */
REVOKE INSERT
ON loja.*
FROM 'caixa'@'localhost';

/* ---== Removendo Usuários ==--- */
DROP USER 'caixa'@'localhost';
