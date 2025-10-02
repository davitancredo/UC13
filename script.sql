CREATE DATABASE IF NOT EXISTS
DEFAULT CHARACTER SET = 'utf8mb4'

CREATE TABLE Cliente
(
    ID_cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    Endereco TEXT,
    Criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Categoria
(
    ID_Categoria INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT
);

CREATE TABLE Produto
(
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10,02),
    Estoque INT DEFAULT 0,
    ID_Categoria INT,
    foreign key(ID_Categoria) REFERENCES Categoria(ID_Categoria),
    Criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Pedido
(
    Pedido_id INT AUTO_INCREMENT
    ID_cliente INT,
    foreign key(ID_cliente) REFERENCES Cadastro_Pessoal(ID_cliente),
    Data_Pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status_Pedido VARCHAR(50) DEFAULT 'EM ANDAMENTO'
);

CREATE TABLE Item_Pedido
(
    id_pedido INT AUTO_INCREMENT,
    Pedido_id INT,
    ID_Produto INT,
    foreign key (ID_Produto) REFERENCES Produto(ID_Produto)
    foreign key(ID_Produto) REFERENCES Produto(ID_Produto),
    Quantidade INT DEFAULT 1,
    Preco_Unitario DECIMAL(10,02)
);





USE ecommerce_pc;
