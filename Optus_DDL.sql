CREATE DATABASE Optus
GO

USE Optus

CREATE TABLE Usuarios (
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100),
	Email			VARCHAR(500),
	Senha			VARCHAR(500),
	Permissao		BIT
)
GO

CREATE TABLE Artistas (
	IdArtista		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100)
)
GO

CREATE TABLE Estilos(
	IdEstilo		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(100)
)
GO

CREATE TABLE Albuns(
	IdAlbum			INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(100),
	DataLancamento	DATE,
	Localizacao		VARCHAR(100),
	QtdMinutos		INT,
	Ativo			BIT,
	IdArtista		INT FOREIGN KEY REFERENCES Artistas(IdArtista)
)
GO

CREATE TABLE AlbunsEstilos(
	IdAlbum			INT FOREIGN KEY REFERENCES Albuns(IdAlbum),
	IdEstilo		INT FOREIGN KEY	REFERENCES Estilos(IdEstilo)
)
GO