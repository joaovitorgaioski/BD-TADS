/* ----=== Criação da database de exemplo ===---- */
CREATE DATABASE loja;
USE loja;
CREATE TABLE produto
(
id INT PRIMARY KEY,
descricao VARCHAR(50),
preco DECIMAL(10,2)
);

/* Inserção de dados */
INSERT INTO produto VALUES (1, 'Notebook', 3500.00);
INSERT INTO produto VALUES (2, 'Mouse', 50.00);
INSERT INTO produto VALUES (3, 'Teclado', 120.00);
