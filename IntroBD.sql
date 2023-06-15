CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null, -- 999.99 -> 1000
-- preco decimal(6,2) not null, -- 999.99
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,quantidade,preco)
values ("tomate",100,8.00);
INSERT INTO tb_produtos(nome,quantidade,preco)
values ("maçã",20,5.00);
INSERT INTO tb_produtos(nome,quantidade,preco)
values ("laranja",50,10.00);
INSERT INTO tb_produtos(nome,quantidade,preco)
values ("banana",200,12.00);
INSERT INTO tb_produtos(nome,quantidade,preco)
values ("uva",1200,30.00);
INSERT INTO tb_produtos(nome,quantidade,preco)
values ("pêra",500,2.99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos Where id = 5;

SELECT * FROM tb_produtos Where nome = "maçã";

SELECT nome FROM tb_produtos WHERE preco < 10;

SELECT nome FROM tb_produtos WHERE preco >5 AND quantidade <100;

UPDATE tb_produtos SET preco = 5.00 WHERE id=1;

DELETE FROM tb_produtos WHERE id = 1;