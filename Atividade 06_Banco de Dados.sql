CREATE DATABASE entidade_01;
USE entidade_01;

CREATE TABLE professores (
codigo INT(11) AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (70),
data_nascimento DATE,
disciplina VARCHAR (70)
);

INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Ana Silva', '1999-03-15', 'Matemática');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Bruno Santos', '1998-07-22', 'Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Carla Pereira', '2000-01-30', 'Química');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Daniel Costa', '1999-11-12', 'Biologia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Eduarda Almeida', '1998-09-05', 'História');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Felipe Oliveira', '2001-04-18', 'Geografia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Gabriela Lima', '2000-06-25', 'Literatura');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Henrique Martins', '1999-10-09', 'Inglês');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Isabela Fernandes', '1998-12-14', 'Arte');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('João Ferreira', '2000-08-21', 'Educação Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Karen Rocha', '1999-05-11', 'Matemática');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Lucas Castro', '1998-02-20', 'Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Mariana Ribeiro', '2000-03-17', 'Química');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Nicolas Silva', '1999-10-31', 'Biologia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Olga Lima', '1998-04-23', 'História');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Pedro Santos', '2001-11-08', 'Geografia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Quésia Souza', '2000-12-29', 'Literatura');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Rafael Andrade', '1999-06-30', 'Inglês');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Sofia Pereira', '1998-07-19', 'Arte');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Tiago Costa', '2000-05-14', 'Educação Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Ursula Almeida', '1999-08-02', 'Matemática');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Vítor Oliveira', '1998-10-25', 'Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Wanda Ferreira', '2001-09-11', 'Química');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Xuxa Silva', '1999-03-22', 'Biologia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Yuri Lima', '1998-11-15', 'História');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Zara Fernandes', '2000-06-07', 'Geografia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Arthur Martins', '1999-07-12', 'Literatura');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Bárbara Costa', '1998-05-27', 'Inglês');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Cláudia Almeida', '2001-02-16', 'Arte');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Diego Santos', '1999-12-08', 'Educação Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Elena Ribeiro', '1998-01-14', 'Matemática');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Fernando Castro', '2000-09-20', 'Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Gustavo Rocha', '1999-08-31', 'Química');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Helena Silva', '1998-04-17', 'Biologia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Igor Lima', '2001-07-26', 'História');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Júlia Pereira', '1999-11-03', 'Geografia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Kleber Ferreira', '1998-02-12', 'Literatura');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Lúcia Souza', '2000-10-29', 'Inglês');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Marcos Almeida', '1999-09-21', 'Arte');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Nina Santos', '1998-12-19', 'Educação Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Otávio Oliveira', '2001-03-12', 'Matemática');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Patrícia Castro', '1999-06-08', 'Física');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Quintino Lima', '1998-10-30', 'Química');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Rosa Silva', '2000-01-18', 'Biologia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Samuel Pereira', '1999-04-25', 'História');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Tatiane Santos', '1998-07-01', 'Geografia');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Ulysses Rocha', '2001-11-14', 'Literatura');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Vanessa Almeida', '1999-02-09', 'Inglês');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Walter Costa', '1998-09-13', 'Arte');
INSERT INTO professores (nome, data_nascimento, disciplina) VALUES ('Xander Ferreira', '2000-12-24', 'Educação Física');

SELECT * FROM professores;



CREATE DATABASE entidade_02;
USE entidade_02;

CREATE TABLE tb_categoria (
id_categoria INT (11) AUTO_INCREMENT PRIMARY KEY,
desc_categoria VARCHAR (50)
);

INSERT INTO tb_categoria (desc_categoria) VALUES ('Cimento');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Areia');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Brita');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Tijolo');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Bloco de Concreto');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Argamassa');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Revestimento Cerâmico');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Azulejo');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Pedra');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Madeira');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Aço');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Cal');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Gesso');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Vidro');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Tubos de PVC');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Ferragens');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Telhas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Lajes');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Revestimento de Piso');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Revestimento de Parede');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Tinta');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Esquadrias de Alumínio');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Portas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Janelas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Placas de Drywall');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Isolamento Térmico');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Isolamento Acústico');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Impermeabilizante');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Caixas d\'Água');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Concreto Pré-moldado');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Balde de Cimento');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Ferramentas Manuais');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Ferramentas Elétricas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Materiais de Soldagem');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Acessórios para Tubos');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Arames');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Cola para Revestimento');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Adesivo para Madeira');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Chapas Metálicas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Rejunte');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Manta Asfáltica');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Selante');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Fita de Vedação');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Gravação');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Componentes para Telhado');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Estrutura de Ferro');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Suportes e Fixadores');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Materiais para Impermeabilização');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Rodos e Espátulas');
INSERT INTO tb_categoria (desc_categoria) VALUES ('Equipamentos de Proteção Individual (EPIs)');

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
id_produtos INT (11) AUTO_INCREMENT PRIMARY KEY,
desc_produto VARCHAR (50),
valor DECIMAL (25, 2),
id_categoria INT (11) NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Cimento Portland', 1, 30.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Areia Lavada', 2, 50.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Brita 1', 3, 60.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Tijolo Cerâmico', 4, 1.20);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Bloco de Concreto 15x20x40', 5, 5.50);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Argamassa AC I', 6, 20.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Revestimento Cerâmico 30x30 cm', 7, 25.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Azulejo 20x20 cm', 8, 15.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Pedra Britada', 9, 55.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Madeira de Pinus', 10, 80.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Aço Estrutural 6m', 11, 120.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Cal Hidráulica', 12, 18.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Gesso Acartonado', 13, 35.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Vidro Temperado 6mm', 14, 45.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Tubo PVC 100mm', 15, 8.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Parafuso Metálico', 16, 0.50);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Telha Cerâmica', 17, 2.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Laje Pré-moldada 1x1 m', 18, 70.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Piso Porcelanato 60x60 cm', 19, 90.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Revestimento para Parede 20x40 cm', 20, 20.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Tinta Acrílica 18L', 21, 120.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Esquadria de Alumínio', 22, 150.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Porta de Madeira', 23, 200.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Janela de Alumínio', 24, 180.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Placa de Drywall 1,20x2,40m', 25, 35.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Isolamento Térmico em Lã de Vidro', 26, 50.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Isolamento Acústico em Espuma', 27, 40.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Impermeabilizante Líquido', 28, 70.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Caixa d\'Água de 1000L', 29, 200.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Concreto Pré-moldado', 30, 80.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Balde de Cimento 20L', 31, 25.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Alicate de Corte', 32, 15.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Furadeira Elétrica', 33, 200.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Máscara de Solda', 34, 30.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Curva de PVC', 35, 5.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Arame de Aço 2mm', 36, 10.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Cola para Revestimento Cerâmico', 37, 25.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Adesivo para Madeira', 38, 15.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Chapa Metálica 1x2m', 39, 50.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Rejunte para Azulejos', 40, 18.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Manta Asfáltica 1x10m', 41, 80.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Selante Acrílico', 42, 12.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Fita de Vedação', 43, 8.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Gravação para Revestimento', 44, 5.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Componentes para Telhado', 45, 60.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Estrutura de Ferro', 46, 200.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Suporte para Prateleira', 47, 12.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Impermeabilizante em Spray', 48, 25.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Rodo de Borracha', 49, 10.00);
INSERT INTO tb_produtos (desc_produto, id_categoria, valor) VALUES ('Capacete de Segurança', 50, 20.00);

SELECT * FROM tb_produtos;



CREATE DATABASE entidade_03;
USE entidade_03;

CREATE TABLE funcionarios (
id INT (11) AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50),
email VARCHAR (50),
cpf VARCHAR (50),
endereco VARCHAR (50)
);

INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Ana Silva', 'ana.silva@example.com', '123.456.789-00', 'Rua das Flores, 123, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Bruno Santos', 'bruno.santos@example.com', '234.567.890-11', 'Avenida Paulista, 456, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Carla Pereira', 'carla.pereira@example.com', '345.678.901-22', 'Rua da Paz, 789, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Daniel Costa', 'daniel.costa@example.com', '456.789.012-33', 'Rua do Sol, 101, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Eduarda Almeida', 'eduarda.almeida@example.com', '567.890.123-44', 'Rua das Acácias, 202, Curitiba, PR');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Felipe Oliveira', 'felipe.oliveira@example.com', '678.901.234-55', 'Avenida das Nações, 303, Porto Alegre, RS');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Gabriela Lima', 'gabriela.lima@example.com', '789.012.345-66', 'Rua dos Jacarandás, 404, Fortaleza, CE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Henrique Martins', 'henrique.martins@example.com', '890.123.456-77', 'Rua da Esperança, 505, Salvador, BA');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Isabela Fernandes', 'isabela.fernandes@example.com', '901.234.567-88', 'Avenida Central, 606, Recife, PE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('João Ferreira', 'joao.ferreira@example.com', '012.345.678-99', 'Rua do Comércio, 707, Brasília, DF');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Karen Rocha', 'karen.rocha@example.com', '123.456.789-01', 'Rua das Palmeiras, 808, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Lucas Castro', 'lucas.castro@example.com', '234.567.890-12', 'Avenida Rio Branco, 909, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Mariana Ribeiro', 'mariana.ribeiro@example.com', '345.678.901-23', 'Rua do Ouro, 1001, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Nicolas Silva', 'nicolas.silva@example.com', '456.789.012-34', 'Rua do Limoeiro, 1111, Curitiba, PR');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Olga Lima', 'olga.lima@example.com', '567.890.123-45', 'Avenida Brasil, 1212, Porto Alegre, RS');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Pedro Santos', 'pedro.santos@example.com', '678.901.234-56', 'Rua dos Castanheiros, 1313, Fortaleza, CE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Quésia Souza', 'quesia.souza@example.com', '789.012.345-67', 'Rua das Oliveiras, 1414, Salvador, BA');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Rafael Andrade', 'rafael.andrade@example.com', '890.123.456-78', 'Avenida Goiás, 1515, Recife, PE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Sofia Pereira', 'sofia.pereira@example.com', '901.234.567-89', 'Rua da Alegria, 1616, Brasília, DF');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Tiago Costa', 'tiago.costa@example.com', '012.345.678-10', 'Rua das Orquídeas, 1717, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Ursula Almeida', 'ursula.almeida@example.com', '123.456.789-12', 'Avenida das Américas, 1818, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Vítor Oliveira', 'vitor.oliveira@example.com', '234.567.890-23', 'Rua das Margaridas, 1919, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Wanda Ferreira', 'wanda.ferreira@example.com', '345.678.901-34', 'Rua do Maracanã, 2020, Curitiba, PR');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Xuxa Silva', 'xuxa.silva@example.com', '456.789.012-45', 'Avenida Brasilia, 2121, Porto Alegre, RS');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Yuri Lima', 'yuri.lima@example.com', '567.890.123-56', 'Rua dos Andrades, 2222, Fortaleza, CE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Zara Fernandes', 'zara.fernandes@example.com', '678.901.234-67', 'Rua dos Lírios, 2323, Salvador, BA');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Arthur Martins', 'arthur.martins@example.com', '789.012.345-78', 'Avenida Sumaré, 2424, Recife, PE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Bárbara Costa', 'barbara.costa@example.com', '890.123.456-89', 'Rua das Violetas, 2525, Brasília, DF');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Cláudia Almeida', 'claudia.almeida@example.com', '901.234.567-90', 'Rua das Hortênsias, 2626, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Diego Santos', 'diego.santos@example.com', '012.345.678-01', 'Avenida dos Ipês, 2727, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Elena Ribeiro', 'elena.ribeiro@example.com', '123.456.789-12', 'Rua do Bosque, 2828, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Fernando Castro', 'fernando.castro@example.com', '234.567.890-23', 'Rua da Alegria, 2929, Curitiba, PR');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Gustavo Rocha', 'gustavo.rocha@example.com', '345.678.901-34', 'Avenida dos Pinhais, 3030, Porto Alegre, RS');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Helena Silva', 'helena.silva@example.com', '456.789.012-45', 'Rua dos Cedros, 3131, Fortaleza, CE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Igor Lima', 'igor.lima@example.com', '567.890.123-56', 'Rua das Figueiras, 3232, Salvador, BA');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Júlia Pereira', 'julia.pereira@example.com', '678.901.234-67', 'Avenida das Flores, 3333, Recife, PE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Kleber Ferreira', 'kleber.ferreira@example.com', '789.012.345-78', 'Rua dos Jacarandás, 3434, Brasília, DF');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Lúcia Souza', 'lucia.souza@example.com', '890.123.456-89', 'Rua dos Girassóis, 3535, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Marcos Almeida', 'marcos.almeida@example.com', '901.234.567-90', 'Avenida das Palmeiras, 3636, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Nina Santos', 'nina.santos@example.com', '012.345.678-01', 'Rua do Itamaraty, 3737, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Otávio Oliveira', 'otavio.oliveira@example.com', '123.456.789-12', 'Rua da Independência, 3838, Curitiba, PR');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Patrícia Castro', 'patricia.castro@example.com', '234.567.890-23', 'Avenida das Nações, 3939, Porto Alegre, RS');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Quintino Lima', 'quintino.lima@example.com', '345.678.901-34', 'Rua do Mercado, 4040, Fortaleza, CE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Rosa Silva', 'rosa.silva@example.com', '456.789.012-45', 'Rua das Hortênsias, 4141, Salvador, BA');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Samuel Pereira', 'samuel.pereira@example.com', '567.890.123-56', 'Avenida das Acácias, 4242, Recife, PE');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Tatiane Santos', 'tatiane.santos@example.com', '678.901.234-67', 'Rua das Palmeiras, 4343, Brasília, DF');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Ulysses Rocha', 'ulysses.rocha@example.com', '789.012.345-78', 'Rua dos Especiais, 4444, São Paulo, SP');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Vanessa Almeida', 'vanessa.almeida@example.com', '890.123.456-89', 'Avenida dos Sonhos, 4545, Rio de Janeiro, RJ');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Walter Costa', 'walter.costa@example.com', '901.234.567-90', 'Rua da Boa Vista, 4646, Belo Horizonte, MG');
INSERT INTO funcionarios (nome, email, cpf, endereco) VALUES ('Xander Ferreira', 'xander.ferreira@example.com', '012.345.678-01', 'Rua da Vitória, 4747, Curitiba, PR');

SELECT * FROM funcionarios;


