DROP DATABASE biblioteca;

CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autor (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL
);

CREATE TABLE categoria (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR (255));

CREATE TABLE livro (
id_livro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR (200) NOT NULL,
id_autor INT,
id_categoria INT NOT NULL,
FOREIGN KEY (id_autor) REFERENCES autor (id_autor),
FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
);

INSERT INTO autor (nome) VALUES ('J.K. Rowling');
INSERT INTO autor (nome) VALUES ('J.R.R. Tolkien');

INSERT INTO categoria (nome_categoria) VALUES ('Ficção');

INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Pedra Filosofal', 1, 1);
INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Câmara Secreta', 1, 1);
INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 2, 1);

SELECT livro.titulo, autor.nome AS autor, nome_categoria
FROM livro
JOIN autor ON livro.id_autor = autor.id_autor
JOIN categoria ON livro.id_categoria = categoria.id_categoria;

