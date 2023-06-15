CREATE DATABASE bd_RH;

USE bd_RH;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
email varchar(255) not null,
endereco varchar(255) not null,
telefone varchar(50) not null,
salario decimal not null,
PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome, email, endereco, telefone, salario)
values ("Andressa","andressinha06@gmail.com","Rua Caraguá","11940240925",7500.00);
INSERT INTO tb_colaboradores (nome,email,endereco,telefone,salario)
values ("Pedro","pedrinho06@gmail.com","Rua Among us","11967890633",2500.00);
INSERT INTO tb_colaboradores (nome,email,endereco,telefone,salario)
values ("Miguel","miguelito06@gmail.com","Rua Pedregulho","11978542678",1200.00);
INSERT INTO tb_colaboradores (nome,email,endereco,telefone,salario)
values ("Lucas","lukkinhas06@gmail.com","Rua Maringá","11967826532",2000.00);
INSERT INTO tb_colaboradores (nome,email,endereco,telefone,salario)
values ("Junior","juniorzao06@gmail.com","Rua Sergipe","11965279987",6000.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET nome = "Paulo" WHERE id = 2;