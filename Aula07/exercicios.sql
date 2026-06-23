/* ----=== Exercícios de Controle de Acesso ===----*/

/* 1 - Criar usuário “estoquista” com permissão apenas de SELECT e UPDATE na tabela produto. */
CREATE USER 'estoquista'@'localhost' IDENTIFIED BY '12345';

GRANT SELECT, UPDATE
ON loja.*
TO 'estoquista'@'localhost';

/* 2 - Criar usuário “analista” com permissão apenas de leitura. */
CREATE USER 'analista'@'localhost' IDENTIFIED BY 'abc';

GRANT SELECT
ON loja.*
TO 'analista'@'localhost';

/* 3 - Revogar a permissão de INSERT do usuário gerente. */
REVOKE INSERT
ON loja.* 
FROM 'gerente'@'localhost';

/* 4 - Como conceder todas as permissões para um usuário? */
/* Usando o comando GRANT ALL PRIVILEGES */

/* 5 - Crie um usuário diretor e conceda todas as permissões */
CREATE USER 'diretor'@'localhost' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES
ON loja.*
TO 'diretor'@'localhost';

/* 6 - Como revogar todas as permissões? */
/* Da mesma forma, usando REVOKE ALL PRIVILEGES */
