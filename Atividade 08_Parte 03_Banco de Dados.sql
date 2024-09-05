CREATE DATABASE loja;
USE loja;

CREATE TABLE produto (
id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR (255),
categoria_produto VARCHAR (255)
);

CREATE TABLE cliente (
id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR (255),
cpf_cliente VARCHAR (15),
endereco_cliente VARCHAR (255),
email_cliente VARCHAR (255),
telefone VARCHAR (255),
data_nascimento_cliente DATE
);

CREATE TABLE pedido (
id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
id_produto INT NOT NULL,
qtdade_pedido INT NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_produto) REFERENCES cliente (id_cliente)
);

INSERT INTO produto (nome_produto, categoria_produto) VALUES
('Smartphone X20', 'Eletrônicos'),
('Notebook Pro 15', 'Computadores'),
('Cadeira Ergonômica', 'Móveis'),
('Tênis de Corrida', 'Calçados'),
('Cafeteira Expresso', 'Eletrodomésticos'),
('Fones de Ouvido Bluetooth', 'Acessórios'),
('Livro "O Sol é para Todos"', 'Livros'),
('Relógio Digital', 'Acessórios'),
('Camera DSLR', 'Fotografia'),
('Geladeira Frost Free', 'Eletrodomésticos');

INSERT INTO cliente (nome_cliente, cpf_cliente, endereco_cliente, email_cliente, telefone, data_nascimento_cliente) VALUES
('Ana Silva', '12345678901', 'Rua A, 123, Bairro Centro, São Paulo - SP', 'ana.silva@example.com', '(11) 98765-4321', '1985-02-20'),
('Carlos Oliveira', '23456789012', 'Avenida B, 456, Bairro Jardim, Rio de Janeiro - RJ', 'carlos.oliveira@example.com', '(21) 98765-4321', '1990-03-15'),
('Fernanda Santos', '34567890123', 'Rua C, 789, Bairro Vila, Belo Horizonte - MG', 'fernanda.santos@example.com', '(31) 98765-4321', '1987-04-10'),
('Juliano Costa', '45678901234', 'Praça D, 101, Bairro Centro, Curitiba - PR', 'juliano.costa@example.com', '(41) 98765-4321', '1989-05-25'),
('Mariana Lima', '56789012345', 'Rua E, 202, Bairro Alto, Porto Alegre - RS', 'mariana.lima@example.com', '(51) 98765-4321', '1992-06-30'),
('Pedro Almeida', '67890123456', 'Avenida F, 303, Bairro Sul, Recife - PE', 'pedro.almeida@example.com', '(81) 98765-4321', '1984-07-05'),
('Renata Pereira', '78901234567', 'Rua G, 404, Bairro Norte, Salvador - BA', 'renata.pereira@example.com', '(71) 98765-4321', '1986-08-15'),
('Thiago Rodrigues', '89012345678', 'Praça H, 505, Bairro Leste, Fortaleza - CE', 'thiago.rodrigues@example.com', '(85) 98765-4321', '1991-09-20'),
('Vanessa Almeida', '90123456789', 'Rua I, 606, Bairro Oeste, Brasília - DF', 'vanessa.almeida@example.com', '(61) 98765-4321', '1988-10-10'),
('Wesley Fernandes', '01234567890', 'Avenida J, 707, Bairro Sul, Goiânia - GO', 'wesley.fernandes@example.com', '(62) 98765-4321', '1993-11-25');

INSERT INTO pedido (id_pedido, id_produto, id_cliente, qtdade_pedido) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1), 
(3, 3, 3, 4), 
(4, 4, 4, 3), 
(5, 5, 5, 5), 
(6, 6, 5, 6), 
(7, 7, 2, 2),
(8, 8, 4, 8), 
(9, 9, 1, 9),
(10, 10, 10, 1); 

SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM pedido;

SHOW TABLES;
SELECT c.nome_cliente, p.id_pedido FROM
pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente;

SELECT p.nome_produto, d.id_pedido FROM pedido d
JOIN produto p ON d.id_produto = p.id_produto;








