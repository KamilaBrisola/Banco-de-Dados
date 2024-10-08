DROP DATABASE empresa;

CREATE DATABASE empresa;
USE empresa;


CREATE TABLE estoque (
    CODIGO_PRODUTO_ESTOQUE int(11) NOT NULL,
    PRODUTO_ESTOQUE varchar(100) DEFAULT NULL,
    QUANTIDADE_ESTOQUE decimal(10,2) DEFAULT NULL,
    VALOR_ESTOQUE decimal(10,2) DEFAULT NULL,
    PRIMARY KEY (CODIGO_PRODUTO_ESTOQUE)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE funcionarios (
    ID_FUNCIONARIO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME_FUNCIONARIO varchar(100) DEFAULT NULL,
    CPF_FUNCIONARIO varchar(14) DEFAULT NULL,
    TELEFONE_FUNCIONARIO varchar(15) DEFAULT NULL,
    ENDERECO_FUNCIONARIO varchar(255) DEFAULT NULL,
    CARGO_FUNCIONARIO varchar(100) DEFAULT NULL,
    UNIQUE KEY CPF_FUNCIONARIO (CPF_FUNCIONARIO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE pedido (
    ID_PEDIDO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DATA_PEDIDO date DEFAULT NULL,
    TOTAL_PEDIDO decimal(10,2) DEFAULT NULL   
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE item_pedido (
    ID_ITEM int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_PEDIDO int(11) DEFAULT NULL,
    CODIGO_PRODUTO_ESTOQUE int(11) DEFAULT NULL,
    PRODUTO varchar(255) DEFAULT NULL,
    QUANTIDADE decimal(10,2) DEFAULT NULL,
    VALOR_UNITARIO decimal(10,2) DEFAULT NULL,    
    FOREIGN KEY (ID_PEDIDO) REFERENCES pedido (ID_PEDIDO),
    FOREIGN KEY (CODIGO_PRODUTO_ESTOQUE) REFERENCES estoque (CODIGO_PRODUTO_ESTOQUE)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE pagamento (
    ID_PAGAMENTO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_PEDIDO int(11) DEFAULT NULL,
    DATA_PAGAMENTO date DEFAULT NULL,
    METODO_PAGAMENTO varchar(50) DEFAULT NULL,
    VALOR_PAGAMENTO decimal(10,2) DEFAULT NULL,
    KEY ID_PEDIDO (ID_PEDIDO),
	CONSTRAINT pagamento_ibfk_1 FOREIGN KEY (ID_PEDIDO) REFERENCES pedido (ID_PEDIDO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE posto (
    ID_POSTO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CNPJ_POSTO varchar(14) DEFAULT NULL,
    NOME_POSTO varchar(100) DEFAULT NULL,
    ENDERECO_POSTO varchar(255) DEFAULT NULL,
    RAZAO_SOCIAL_POSTO varchar(255) DEFAULT NULL,
    UNIQUE KEY CNPJ_POSTO (CNPJ_POSTO)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE sistema (
    ID_SISTEMA int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    LOGIN_SISTEMA varchar(100) DEFAULT NULL,
    SENHA_SISTEMA varchar(100) DEFAULT NULL,
    PERMISSAO_SISTEMA varchar (50) DEFAULT NULL,
    UNIQUE KEY LOGIN_SISTEMA (LOGIN_SISTEMA)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE cliente (
	CPF varchar(15) NOT NULL PRIMARY KEY,
    NOME varchar(70) DEFAULT NULL,
    DTNASC date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE patio (
	NUM INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ENDER varchar(50) DEFAULT NULL,
    CAPACIDADE int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1; 


CREATE TABLE modelo (
	CODMODELO int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    MODELO varchar(70) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
 

CREATE TABLE veiculo (
	PLACA varchar(8) NOT NULL PRIMARY KEY,
    CODMODELO int(10) DEFAULT NULL,
    CLIENTE_CPF varchar(15) DEFAULT NULL,
    COR varchar(40) DEFAULT NULL,
    FOREIGN KEY (CLIENTE_CPF) REFERENCES cliente (CPF),
    FOREIGN KEY (CODMODELO) REFERENCES modelo (CODMODELO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
CREATE TABLE estaciona (
	COD int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PATIO_NUM int(10) DEFAULT NULL,
    VEICULO_PLACA varchar(8) DEFAULT NULL,
    DTENTRADA date DEFAULT NULL,
    DTSAIDA date DEFAULT NULL,
    HSENTRADA time DEFAULT NULL,
    HSSAIDA time DEFAULT NULL,
    FOREIGN KEY (PATIO_NUM) REFERENCES patio (NUM),
    FOREIGN KEY (VEICULO_PLACA) REFERENCES veiculo (PLACA)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE bomba (
	ID_BOMBA INT(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TIPO varchar(20) NOT NULL,
    PRECO float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE caixa (
	ID_CAIXA int(1) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CAIXA float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE despesa_mensal (
	ID_DESPESA int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DESPESA float NOT NULL,
    DATA_DESPESA date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE fornecedor (
	ID_FORNECEDOR int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME varchar(45) NOT NULL,
    EMAIL varchar(45) NOT NULL,
    TELEFONE varchar(45) NOT NULL,
    ENDERECO varchar(100) NOT NULL,
    BAIRRO varchar(35) NOT NULL,
    CIDADE varchar(35) NOT NULL,
    ESTADO varchar(2) NOT NULL,
    DATAADICIONADO date NOT NULL,
    DATAATUALIZADO date NOT NULL,
    TEMPO_ENTREGA varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE login (
	ID_LOGIN int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    LOGIN varchar(60) NOT NULL,
    SENHA varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


CREATE TABLE receita_combustivel (
	ID_RECEITACOMB int(4) NOT NULL PRIMARY KEY,
    RECEITA_COMBUSTIVEL int(4) NOT NULL,
    DATA_REC_COMB date DEFAULT NULL,
    TIPO_COMBUSTIVEL varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE receita_mensal (
	ID_RECEITA int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    RECEITA float NOT NULL,
    DATA_RECEITA date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE lucro_mensal (
	RECEITA int(4) DEFAULT NULL,
    DESPESA int(4) DEFAULT NULL,
    ID_LUCRO int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    LUCRO float NOT NULL,
    DATA_LUCRO date DEFAULT NULL,
    FOREIGN KEY (RECEITA) REFERENCES receita_mensal (ID_RECEITA),
    FOREIGN KEY (DESPESA) REFERENCES despesa_mensal (ID_DESPESA)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE produto (
	FORNECEDOR int(2) DEFAULT NULL,
    ID_PRODUTO int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PRECO_PRODUTO float NOT NULL,
    PRODUTO varchar(25) NOT NULL,
    FOREIGN KEY (FORNECEDOR) REFERENCES fornecedor (ID_FORNECEDOR)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE relatorio_bomba (
	BOMBA int(2) DEFAULT NULL,
    ID_RELATORIO int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    QUANT float NOT NULL,
    VALOR_FINAL float NOT NULL,
    FOREIGN KEY (BOMBA) REFERENCES bomba (ID_BOMBA)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE tanque (
	ID_TANQUE int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TIPO varchar(200) NOT NULL,
    CAPACIDADE int(6) DEFAULT 10000,
    QUANTIDADE int(8) DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


CREATE TABLE cargo (
	ID_CARGO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TITULO_CARGO varchar(100) DEFAULT NULL,
    NIVEL_CARGO varchar(100) DEFAULT NULL,
    SALARIO_BASE decimal (10, 2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE departamento (
	COD_DEPARTAMENTO int(11) NOT NULL PRIMARY KEY,
    NOME_DEPARTAMENTO varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE funcionario (
	ID_FUNCIONARIO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_CARGO int(11) DEFAULT NULL,
    COD_DEPARTAMENTO int(11) DEFAULT NULL,
    DATNASCIMENTO_FUNCIONARIO date DEFAULT NULL,
    STATUS_FUNCIONARIO enum('ativo', 'inativo', 'suspenso', 'férias') DEFAULT NULL,
    NOME_FUNCIONARIO varchar(100) DEFAULT NULL,
    EMAIL_FUNCIONARIO varchar(100) DEFAULT NULL,
    SENHA_FUNCIONARIO varchar(100) DEFAULT NULL,
    CPF_FUNCIONARIO varchar(11) DEFAULT NULL,
    CELULAR_FUNCIONARIO varchar(20) DEFAULT NULL,
    CARGO varchar(100) DEFAULT NULL,
    DEPARTAMENTO varchar(100) DEFAULT NULL,
	FOTO_FUNCIONARIO blob,
    ADM tinyint(1) DEFAULT NULL,
    FOREIGN KEY (ID_CARGO) REFERENCES cargo (ID_CARGO),
    FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES departamento (COD_DEPARTAMENTO)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


CREATE TABLE registrohoras (
	ID_REGISTROHORAS int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_FUNCIONARIO int(11) DEFAULT NULL,
    DATA_HORAS date DEFAULT NULL,
    CHEGADA_HORAS time DEFAULT NULL,
    SAIDA_HORAS time DEFAULT NULL,
    HORAS_TRABALHADAS time DEFAULT NULL,
    HORAS_EXTRAS time DEFAULT NULL,
    CARGA_HORARIOSEMANAL int(11) DEFAULT NULL,
    FERIAS int(11) DEFAULT NULL,
    LICENCAS int(11) DEFAULT NULL,
    FOREIGN KEY (ID_FUNCIONARIO) REFERENCES funcionario (ID_FUNCIONARIO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE solicitacao (
	ID_SOLICITACAO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_FUNCIONARIO int(11) DEFAULT NULL,
    DESCRICAO_SOLICITACAO varchar(255) DEFAULT NULL,
    DATA_SOLICITACAO date DEFAULT NULL,
    HORA_SOLICITACAO time DEFAULT NULL,
    STATUS_SOLICITACAO varchar(50) DEFAULT NULL,
    ARQUIVO_ANEXADO blob,
    FOREIGN KEY (ID_FUNCIONARIO) REFERENCES funcionario (ID_FUNCIONARIO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    
DROP DATABASE empresa2;

CREATE DATABASE empresa2;
USE empresa2;

CREATE TABLE fornecedor (
	ID_FORNECEDOR int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME varchar(45) NOT NULL,
    EMAIL varchar(45) NOT NULL,
    TELEFONE varchar(45) NOT NULL,
    ENDERECO varchar(100) NOT NULL,
    BAIRRO varchar(35) NOT NULL,
    CIDADE varchar(35) NOT NULL,
    ESTADO varchar(2) NOT NULL,
    DATAADICIONADO date NOT NULL,
    DATAATUALIZACAO date NOT NULL,
    TEMPO_ENTREGA varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE produto (
	FORNECEDOR int(2) DEFAULT NULL,
    ID_PRODUTO int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PRECO_PRODUTO float NOT NULL,
    PRODUTO varchar(25) NOT NULL,
    FOREIGN KEY (FORNECEDOR) REFERENCES fornecedor (ID_FORNECEDOR)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE pedido (
	FORNECEDOR int(2) DEFAULT NULL,
    PRODUTO int(4) DEFAULT NULL,
    ID_PEDIDO int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DATA_PEDIDO datetime NOT NULL,
    DATA_CHEGADA datetime DEFAULT NULL,
    PRECO float NOT NULL,
    QUANTIDADE float NOT NULL,
    FOREIGN KEY (FORNECEDOR) REFERENCES fornecedor (ID_FORNECEDOR),
    FOREIGN KEY (PRODUTO) REFERENCES produto (ID_PRODUTO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE departamento (
	COD_DEPARTAMENTO int(11) NOT NULL PRIMARY KEY,
    NOME_DEPARTAMENTO varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE cargo (
	ID_CARGO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TITULO_CARGO varchar(100) DEFAULT NULL,
    NIVEL_CARGO varchar(100) DEFAULT NULL,
    SALARIO_BASE decimal (10, 2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE funcionario (
	ID_FUNCIONARIO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_CARGO int(11) DEFAULT NULL,
    COD_DEPARTAMENTO int(11) DEFAULT NULL,
    DATNASCIMENTO_FUNCIONARIO date DEFAULT NULL,
    STATUS_FUNCIONARIO enum('ativo', 'inativo', 'suspenso', 'férias') DEFAULT NULL,
    NOME_FUNCIONARIO varchar(100) DEFAULT NULL,
    EMAIL_FUNCIONARIO varchar(100) DEFAULT NULL,
    SENHA_FUNCIONARIO varchar(100) DEFAULT NULL,
    CPF_FUNCIONARIO varchar(11) DEFAULT NULL,
    CELULAR_FUNCIONARIO varchar(20) DEFAULT NULL,
    CARGO varchar(100) DEFAULT NULL,
    DEPARTAMENTO varchar(100) DEFAULT NULL,
	FOTO_FUNCIONARIO blob,
    ADM tinyint(1) DEFAULT NULL,
    FOREIGN KEY (ID_CARGO) REFERENCES cargo (ID_CARGO),
    FOREIGN KEY (COD_DEPARTAMENTO) REFERENCES departamento (COD_DEPARTAMENTO)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


CREATE TABLE pagamento (
    ID_PAGAMENTO int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_PEDIDO int(11) DEFAULT NULL,
    DATA_PAGAMENTO date DEFAULT NULL,
    METODO_PAGAMENTO varchar(50) DEFAULT NULL,
    VALOR_PAGAMENTO decimal(10,2) DEFAULT NULL,
    KEY ID_PEDIDO (ID_PEDIDO),
	CONSTRAINT pagamento_ibfk_1 FOREIGN KEY (ID_PEDIDO) REFERENCES pedido (ID_PEDIDO)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



    


















	

    
    
    
    






