DROP DATABASE escola;

CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
id_aluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR (255)
);

CREATE TABLE nota (
id_nota INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nota_aluno DECIMAL (3, 2),
id_aluno INT NOT NULL,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno)
);

INSERT INTO aluno (nome_aluno) VALUES ('Ana Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Carlos Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Beatriz Souza');
INSERT INTO aluno (nome_aluno) VALUES ('Daniel Pereira');
INSERT INTO aluno (nome_aluno) VALUES ('Fernanda Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Eduardo Lima');
INSERT INTO aluno (nome_aluno) VALUES ('Juliana Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Roberto Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Camila Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Lucas Martins');
INSERT INTO aluno (nome_aluno) VALUES ('Mariana Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Felipe Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Tatiane Ribeiro');
INSERT INTO aluno (nome_aluno) VALUES ('André Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Larissa Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Tiago Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Monique Pereira');
INSERT INTO aluno (nome_aluno) VALUES ('Rafael Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Nathalia Rodrigues');
INSERT INTO aluno (nome_aluno) VALUES ('Gustavo Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Aline Souza');
INSERT INTO aluno (nome_aluno) VALUES ('Bruno Lima');
INSERT INTO aluno (nome_aluno) VALUES ('Letícia Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('João Pedro Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Patrícia Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Vinícius Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Isabela Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Ricardo Martins');
INSERT INTO aluno (nome_aluno) VALUES ('Sabrina Souza');
INSERT INTO aluno (nome_aluno) VALUES ('Renato Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Jéssica Ribeiro');
INSERT INTO aluno (nome_aluno) VALUES ('Paulo Sérgio Lima');
INSERT INTO aluno (nome_aluno) VALUES ('Cíntia Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Marcelo Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Flávia Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Leandro Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Daniella Pereira');
INSERT INTO aluno (nome_aluno) VALUES ('Rodrigo Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Gabriela Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Alexandre Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Cristiane Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Felipe Martins');
INSERT INTO aluno (nome_aluno) VALUES ('Tatiane Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Vinícius Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Amanda Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Leonardo Pereira');
INSERT INTO aluno (nome_aluno) VALUES ('Juliana Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Rogério Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Luana Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Daniela Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Anderson Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Sílvia Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Júlio Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Viviane Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Fabio Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Amanda Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Claudia Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Mário Souza');
INSERT INTO aluno (nome_aluno) VALUES ('Simone Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Ricardo Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Carla Costa');
INSERT INTO aluno (nome_aluno) VALUES ('João Carlos Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Elaine Ribeiro');
INSERT INTO aluno (nome_aluno) VALUES ('Marcelo Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Daniela Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Fabiana Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Thiago Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Viviane Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Ana Paula Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Hugo Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('Claudia Pereira');
INSERT INTO aluno (nome_aluno) VALUES ('Maurício Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Sônia Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Gisele Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Rafael Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Priscila Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Fernando Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Leila Santos');
INSERT INTO aluno (nome_aluno) VALUES ('Rodrigo Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Graziella Oliveira');
INSERT INTO aluno (nome_aluno) VALUES ('João Vitor Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Tatiane Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Gabriel Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Aline Ferreira');
INSERT INTO aluno (nome_aluno) VALUES ('Victor Silva');
INSERT INTO aluno (nome_aluno) VALUES ('Paula Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Luciana Almeida');
INSERT INTO aluno (nome_aluno) VALUES ('Ricardo Costa');
INSERT INTO aluno (nome_aluno) VALUES ('Mônica Pereira');

INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 1);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 1);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (9.0, 2);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 2);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 3);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 3);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (9.0, 4);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 4);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 5);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 5);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (9.0, 6);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 6);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 7);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 7);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 8);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 8);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 9);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 9);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (9.0, 10);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 10);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 11);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 11);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 12);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 12);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 13);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 13);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 14);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 14);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 15);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 15);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 16);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 16);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 17);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 17);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 18);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 18);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 19);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 19);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 20);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 20);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 21);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 21);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 22);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 22);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 23);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 23);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 24);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 24);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 25);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 25);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 26);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 26);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 27);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 27);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 28);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 28);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 29);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 29);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 30);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 30);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 31);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 31);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 32);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 32);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 33);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 33);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 34);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 34);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 35);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 35);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 36);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 36);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 37);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (6.0, 37);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 38);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 38);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 39);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 39);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (7.0, 40);
INSERT INTO nota (nota_aluno, id_aluno) VALUES (8.0, 40);

SELECT a.nome_aluno AS aluno, AVG (n.nota_aluno) AS media
FROM aluno a
JOIN nota n ON a.id_aluno = n.id_aluno
GROUP BY a.id_aluno, a.nome_aluno;




