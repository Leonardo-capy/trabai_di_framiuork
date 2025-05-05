CREATE DATABASE trabalho_catalogo;

USE trabalho_catalogo;

CREATE TABLE produto (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    vendedor VARCHAR(100) NOT NULL
);

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    CHECK (CHAR_LENGTH(senha)  >=8 ),
    email VARCHAR(255),
    CHECK (email LIKE '%@%')
);