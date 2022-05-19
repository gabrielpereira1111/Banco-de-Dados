CREATE DATABASE ECommerce
GO 
USE ECommerce

CREATE TABLE Lojas (
	IdLoja		INT PRIMARY KEY IDENTITY,
	RazaoSocial	VARCHAR(100)
)
GO

CREATE TABLE Categorias (
	IdCategoria	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(100),
	IdLoja		INT FOREIGN KEY REFERENCES Lojas(IdLoja)
)
GO

CREATE TABLE SubCategorias(
	IdSubCategoria	INT PRIMARY KEY IDENTITY,
	IdCategoria		INT FOREIGN KEY REFERENCES Categorias(IdCategoria),
	Nome			VARCHAR(100)
)
GO

CREATE TABLE Produtos(
	IdProduto		INT PRIMARY KEY IDENTITY,
	IdSubCategoria	INT FOREIGN KEY REFERENCES SubCategorias(IdSubCategoria),
	Titulo			VARCHAR(100),
	Valor			NUMERIC(5, 2)
)
GO

CREATE TABLE Clientes (
	IdCliente		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100)
)
GO

CREATE TABLE Pedidos(
	IdPedido		INT PRIMARY KEY IDENTITY,
	IdCliente		INT FOREIGN KEY REFERENCES Clientes(IdCliente),
	NumPedido		INT,
	DataPedido		DATE,
)
GO

CREATE TABLE PedidosProdutos(
	IdPedido		INT FOREIGN KEY REFERENCES Pedidos(IdPedido),
	IdProduto		INT FOREIGN KEY REFERENCES Produtos(IdProduto)
)
GO