DROP DATABASE empresa;
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE empregado (
id_empregado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_empregado VARCHAR (255),
id_supervisor INT,
FOREIGN KEY (id_supervisor) REFERENCES empregado (id_empregado)
);

INSERT INTO empregado (nome_empregado, id_supervisor) VALUES ('Kamila Brisola', 1);
INSERT INTO empregado (nome_empregado) VALUES ('Thaianny Oliveira');
INSERT INTO empregado (nome_empregado, id_supervisor) VALUES ('Marcelo Maia', 1);
INSERT INTO empregado (nome_empregado, id_supervisor) VALUES ('Marcia Teixeira', 2);
INSERT INTO empregado (nome_empregado) VALUES ('João Carlos');

SELECT * FROM empregado;

