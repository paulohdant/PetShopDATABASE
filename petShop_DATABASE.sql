CREATE DATABASE petshop;

USE petshop;

CREATE TABLE cliente(
	ID INT AUTO_INCREMENT,
	nome VARCHAR(100),
	endereco VARCHAR(100),
	telefone VARCHAR(20),
	PRIMARY KEY(ID)
);

CREATE TABLE funcionario(
	ID INT AUTO_INCREMENT,
	nome VARCHAR(100),
	PRIMARY KEY(ID)
);

CREATE TABLE animal(
	ID INT AUTO_INCREMENT,
	nome VARCHAR(100),
	especie VARCHAR(100),
	raca VARCHAR(20),
	dono INT,
	PRIMARY KEY(ID),
	FOREIGN KEY (dono) REFERENCES cliente(ID)
);

CREATE TABLE servico(
	ID INT AUTO_INCREMENT,
	data DATE,
	tipo_servico VARCHAR(100),
	status BOOL,
	codCliente INT,
	codAnimal INT,
	codFuncionario INT, 
	valor REAL,
	PRIMARY KEY (ID),
	FOREIGN KEY(codCliente) REFERENCES cliente(ID),
	FOREIGN KEY(codAnimal) REFERENCES animal(ID),
	FOREIGN KEY(codFuncionario) REFERENCES funcionario(ID)
);