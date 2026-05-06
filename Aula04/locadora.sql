/* ---==== Criação do banco de dados da Locadora ====---*/

DROP DATABASE IF EXISTS `dbLocadora2026`;
CREATE DATABASE `dbLocadora2026`;
USE `dbLocadora2026`;

CREATE TABLE tbCliente
(cod_cliente INT AUTO_INCREMENT, /*autoincrement código com incremento automático Ex: 1, 2, 3  */
 nome_cliente VARCHAR (200) NOT NULL,
 cpf_cliente CHAR(11) NOT NULL, 
 data_cadastro_cliente DATE, 
 cidade_cliente VARCHAR(200), 
 uf_cliente CHAR(2) DEFAULT 'PR', /*DEFAULT coloca o PR no campo uf_cliente por padrão*/
 
 CONSTRAINT un_cpf_cliente UNIQUE (cpf_cliente), /*UNIQUE não permite cpf repetido na tabela*/
 CONSTRAINT pk_tbCliente PRIMARY KEY (cod_cliente)								
)ENGINE=INNODB;

CREATE TABLE tbCategoria
(cod_categoria INT,
 nome_categoria VARCHAR (20) NOT NULL,
  
 CONSTRAINT pk_tbCategoria PRIMARY KEY(cod_categoria)
)ENGINE=INNODB;

CREATE TABLE tbClasse
(cod_classe INT,
 nome_classe VARCHAR(20), 
 preco_classe NUMERIC(4,2) NOT NULL,
 
 CONSTRAINT pk_tbClasse PRIMARY KEY (cod_classe),
 CONSTRAINT ck_NomeClasse CHECK (nome_classe IN ('Lancamento','Catalogo')) /*CONSTRAINT CHECK so permite que na tabela sejam cadastrados dois valores Lancamento ou Catálogo*/
)ENGINE=INNODB;


CREATE TABLE tbTitulo
(cod_titulo INT, 
 nome_titulo VARCHAR(30), 
 ano_titulo NUMERIC(4), 
 cod_categoria INT,
 cod_classe INT,
 
 CONSTRAINT pk_tbTitulo PRIMARY KEY (cod_titulo),
 
 CONSTRAINT fk_tbTitulo_tbCategoria FOREIGN KEY (cod_categoria) REFERENCES tbCategoria(cod_categoria)
 ON DELETE CASCADE ON UPDATE CASCADE,
 
 CONSTRAINT fk_tbTitulo_tbClasse FOREIGN KEY (cod_classe) REFERENCES tbClasse(cod_classe)
 ON DELETE CASCADE ON UPDATE CASCADE 
)ENGINE=INNODB;
 
CREATE TABLE tbFilme
(cod_filme INT , 
 nome_filme VARCHAR (200),
 cod_titulo INT,
 
 CONSTRAINT pk_tbFilme PRIMARY KEY (cod_filme),
 
 CONSTRAINT fk_tbFilme_tbTitulo FOREIGN KEY (cod_titulo) REFERENCES tbTitulo(cod_titulo)
 ON DELETE CASCADE ON UPDATE CASCADE
 )ENGINE=INNODB;

CREATE TABLE tbEmprestimo
(data_emprestimo DATE NOT NULL,
 data_devolucao_prevista_emprestimo DATE NOT NULL, 
 data_devolucao_efetiva_emprestimo DATE, 
 valor_multa_emprestimo NUMERIC(4,2) DEFAULT 0,
 cod_cliente INT,
 cod_filme INT,
 
 CONSTRAINT pk_tbEmprestimo PRIMARY KEY (cod_cliente, cod_filme, data_emprestimo),
 
 CONSTRAINT fk_tbEmpDev_tbCliente FOREIGN KEY(cod_cliente) REFERENCES tbCliente(cod_cliente)
 ON DELETE CASCADE ON UPDATE CASCADE,
 
 CONSTRAINT fk_tbEmpDev_tbFilme FOREIGN KEY (cod_filme) REFERENCES tbFilme(cod_filme)
 ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;