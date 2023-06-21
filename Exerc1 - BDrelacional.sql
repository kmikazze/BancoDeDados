CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
classe_id int PRIMARY KEY,
nome_classe VARCHAR(255) not null,
habilidade VARCHAR(255) not null
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (classe_id,nome_classe,habilidade)
VALUES (1,"Iniciador","Cura");
INSERT INTO tb_classes (classe_id,nome_classe,habilidade)
VALUES (2,"Sentinela","Bloqueio do mapa");
INSERT INTO tb_classes (classe_id,nome_classe,habilidade)
VALUES (3,"Controlador","Visão do mapa");
INSERT INTO tb_classes (classe_id,nome_classe,habilidade)
VALUES (4,"Duelista","Combate direto");
INSERT INTO tb_classes (classe_id,nome_classe,habilidade)
VALUES (5,"BOT","Treinamento");

ALTER TABLE tb_personagens ADD id_classe int;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classes_personagens
FOREIGN KEY (id_classe) REFERENCES tb_classes (classe_id);

USE db_generation_game_online;

CREATE TABLE tb_personagens(
id int auto_increment PRIMARY KEY,
nome_personagem VARCHAR(255) not null,
arma VARCHAR(255) not null,
poder_ataque INT,
poder_defesa INT
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Reyna","Phanton",4000,2600,4);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Cypher","Operator",2600,4000,2);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Viper","Vandal",2700,3500,3);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Sage","Odin",2000,3000,2);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Phoenix","Vandal",3200,2600,4);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Chamber","Marshal",3500,3600,2);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Fade","Spectre",1800,2000,4);
INSERT INTO tb_personagens (nome_personagem,arma,poder_ataque,poder_defesa,id_classe)
VALUES ("Jett","Phanton",3800,1800,5);

SELECT * FROM tb_personagens WHERE poder_ataque >=2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.classe_id WHERE nome_classe = "Controlador";

