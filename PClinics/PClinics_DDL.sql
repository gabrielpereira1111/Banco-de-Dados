CREATE DATABASE PClinics
USE PClinics

CREATE TABLE Clinicas (
	IdClinica	INT PRIMARY KEY IDENTITY,
	RazaoSocial VARCHAR(100) UNIQUE,
	CNPJ		CHAR(17) UNIQUE,
	Endereco	VARCHAR(200) UNIQUE
);
GO

CREATE TABLE Veterinarios (
	IdVeterinario	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	CRMV			CHAR(6),
	IdClinica		INT FOREIGN KEY REFERENCES Clinicas(IdClinica)
);
GO

CREATE TABLE TipoPet (
	IdTipoPet		INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR(200)
);
GO

CREATE TABLE Racas (
	IdRaca			INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR(200),
	IdTipoPet		INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet)
);
GO

CREATE TABLE Donos (
	IdDono			INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
GO

CREATE TABLE Pets(
	IdPet			INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	DataNascimento	DATE,
	IdRaca			INT FOREIGN KEY REFERENCES Racas(IdRaca),
	IdDono			INT FOREIGN KEY REFERENCES Donos(IdDono)
);
GO

CREATE TABLE Atendimentos(
	IdAtendimento	INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR(200),
	DataAtendimento DATE,
	IdVeterinario	INT FOREIGN KEY REFERENCES Veterinarios(IdVeterinario),
	IdPet			INT FOREIGN KEY REFERENCES Pets(IdPet)
);
GO