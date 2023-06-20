CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id int PRIMARY KEY,
tipo_pizza VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (id,tipo_pizza,tamanho)
VALUES (1,"Doce","Grande");
INSERT INTO tb_categorias (id,tipo_pizza,tamanho)
VALUES (2,"Doce","Brotinho");
INSERT INTO tb_categorias (id,tipo_pizza,tamanho)
VALUES (3,"Salgada","Grande");
INSERT INTO tb_categorias (id,tipo_pizza,tamanho)
VALUES (4,"Salgada","Médio");
INSERT INTO tb_categorias (id,tipo_pizza,tamanho)
VALUES (5,"Meio a meio","Grande");

ALTER TABLE tb_pizzas ADD categoria_id int;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id); 

SELECT * FROM tb_pizzas;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id_pizzas int auto_increment PRIMARY KEY,
sabor_pizza VARCHAR (255) NOT NULL,
borda VARCHAR(255) NOT NULL,
bebida VARCHAR(255) NOT NULL,
preco DECIMAL not null 
);

INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Portuguesa","Catupiry","Coca-Cola 350ml",42.00,3);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Calabresa","Catupiry","Guaraná 350ml",50.00,3);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Sensação","Nenhuma","Coca-Cola 2L",70.00,1);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Nutella com morango","Nenhuma","Guaraná 2L",65.00,2);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Frango c/ catupiry","Cheddar","Itubaina 2L",42.00,3);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Pepperoni e Frango","Cheddar","Coca-Cola 350ml",80.00,5);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Grega","Catupiry","Itubaina 350ml",60.00,4);
INSERT INTO tb_pizzas (sabor_pizza,borda,bebida,preco,categoria_id)
VALUES ("Napolitana","Cheddar","Dell Vale 1L",58.00,3);

SELECT * FROM tb_pizzas WHERE preco >=45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor_pizza LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tipo_pizza = "Doce";