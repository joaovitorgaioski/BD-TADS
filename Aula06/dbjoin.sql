DROP DATABASE dbJoin;

CREATE DATABASE dbJoin;
USE dbJoin;

CREATE TABLE tba (
	cod_tbA INT NOT NULL,
	nome_tbA VARCHAR(30) NOT NULL,
	PRIMARY KEY (cod_tbA)
);

CREATE TABLE tbb (
	cod_tbB INT NOT NULL ,
	valor_tbB DECIMAL NOT NULL,
	cod_tbA INT NOT NULL,
	PRIMARY KEY(cod_tbB),
	FOREIGN KEY(cod_tbA) REFERENCES tbA(cod_tbA)
);

INSERT INTO `tba` (`cod_tbA`, `nome_tbA`) VALUES
	('1', 'Joao'),
	('2', 'Ana'),
	('3', 'Maria'),
	('4', 'Jose'),
	('5', 'Pedro');
		
/*Desabilitar as chaves estrangeiras temporariamente*/
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO `tbb` (`cod_tbb`, `valor_tbb`,`cod_tba`) VALUES ('1', '1','1');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('2', '2','1');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('3', '5','1');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('4', '4','2');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('5', '9','2');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('6', '7','3');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('7', '4','5');
INSERT INTO `tbb` (`cod_tbB`, `valor_tbB`, `cod_tbA`) VALUES('8', '7','8');
/*Reabilitar as chaves estrangeiras*/
SET FOREIGN_KEY_CHECKS=1;