DROP DATABASE biblioteca;

#BANCO DE DADOS BIBLIOTECA
CREATE DATABASE biblioteca;
USE biblioteca;


CREATE TABLE autor (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
nome_autor VARCHAR(255)
);

CREATE TABLE livro (
id_livro INT AUTO_INCREMENT PRIMARY KEY,
titulo_livro VARCHAR(255)
);

CREATE TABLE associacao (
id_associacao INT AUTO_INCREMENT PRIMARY KEY,
id_autor INT NOT NULL,
id_livro INT NOT NULL,
FOREIGN KEY (id_autor) REFERENCES autor (id_autor),
FOREIGN KEY (id_livro) REFERENCES livro (id_livro)
);

DROP DATABASE ecommerce;
#BANCO DE DADOS ECOMMERCE
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE cliente (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(255)
);

CREATE TABLE pedido (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

DROP DATABASE documentos;
#BANCO DE DADOS DOCUMENTOS - PESSOAS
CREATE DATABASE documentos;
USE documentos;

CREATE TABLE documento (
id_documento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo_documento VARCHAR(255)
);

CREATE TABLE pessoa (
id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_pesssoa VARCHAR(255),
data_nascimento DATE,
id_documento INT,
FOREIGN KEY (id_documento) REFERENCES documento (id_documento)
);

DROP DATABASE departamento;
#BANCO DE DADOS DEPARTAMENTO FUNCIONÁRIOS
CREATE DATABASE departamento;
USE departamento;

CREATE TABLE departamentos (
id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_departamento VARCHAR(255)
);

CREATE TABLE funcionarios (
id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(255),
cargo_funcionario VARCHAR(255),
id_departamento INT NOT NULL,
FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
);


DROP DATABASE estudantes;
#BANCO DE DADOS ESTUDANTES
CREATE DATABASE estudantes;
USE estudantes;

CREATE TABLE estudante (
id_estudante INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_estudante VARCHAR(255),
nascimento_estudantes DATE
);

CREATE TABLE curso (
id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(255),
duracao VARCHAR(255)
);

CREATE TABLE associacao_curso (
id_associacao_curso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_estudante INT,
id_curso INT,
FOREIGN KEY (id_estudante) REFERENCES estudante (id_estudante),
FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);

DROP DATABASE projetos;
#BANCO DE DADOS DE PROJETOS
CREATE DATABASE projetos;
USE projetos;

CREATE TABLE funcionarios (
id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(255),
cargo_funcionario VARCHAR(255)
);

CREATE TABLE projeto (
id_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_projeto VARCHAR(255)
);

CREATE TABLE associacao_projeto (
id_associacao_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_funcionario INT,
id_projeto INT,
FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
FOREIGN KEY (id_projeto) REFERENCES projeto (id_projeto)
);


DROP DATABASE herança;
#BANCO DE DADOS PESSOAS_ALUNOS_PROFESSORES
CREATE DATABASE herança;
USE herança;

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(100),
    ano_ingresso INTEGER,
	FOREIGN KEY (id_aluno) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(100),
    titulacao VARCHAR(100),
	FOREIGN KEY (id_professor) REFERENCES pessoa (id_pessoa)
);

































