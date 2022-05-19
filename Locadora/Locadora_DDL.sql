CREATE DATABASE Locadora
USE Locadora

CREATE TABLE Empresas (
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome	  VARCHAR(100)
)

CREATE TABLE Marcas (
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome     VARCHAR(100)
)

CREATE TABLE Modelos (
	IdModelo INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(100),
	IdMarca INT FOREIGN KEY REFERENCES Marcas(IdMarca)
)

CREATE TABLE Veiculos (
	IdVeiculo INT PRIMARY KEY IDENTITY,
	Placa	  VARCHAR(50),
	IdEmpresa INT FOREIGN KEY REFERENCES Empresas(IdEmpresa),
	IdModelo  INT FOREIGN KEY REFERENCES Modelos(IdModelo)
)

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome      VARCHAR(100),
	CPF		  VARCHAR(11)
)

CREATE TABLE Alugueis (
	IdAluguel  INT PRIMARY KEY IDENTITY,
	DataInicio DATE,
	DataFim    DATE,
	IdCliente  INT FOREIGN KEY REFERENCES Clientes(IdCliente),
	IdVeiculo  INT FOREIGN KEY REFERENCES Veiculos(IdVeiculo)
)