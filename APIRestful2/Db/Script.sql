CREATE DATABASE ProjetoAPI
USE ProjetoAPI

CREATE TABLE TB_Profissoes(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL UNIQUE,
	DataCadastro DATETIME NOT NULL
);

CREATE TABLE TB_Parentescos(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
);

CREATE TABLE TB_Empresas(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	RazaoSocial VARCHAR(100) NOT NULL UNIQUE,
	DataCadastro DATETIME NOT NULL,
	DataAlteracao DATETIME NOT NULL,
	Cnpj CHAR(18) NOT NULL UNIQUE
);

CREATE TABLE TB_EstadoCivil(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL
);

CREATE TABLE TB_Funcionarios(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	IdEstadoCivil INT NOT NULL,
	Cpf CHAR(14) NOT NULL UNIQUE,
	DataNascimento DATETIME NOT NULL,
	IdProfissao INT NOT NULL,
	Telefone VARCHAR(50),
	IdEmpresa INT NOT NULL,
	DataCadastro DATETIME NOT NULL,
	DataAlteracao DATETIME NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Bairro VARCHAR(100) NOT NULL,
	Cidade VARCHAR(100) NOT NULL,
	Estado VARCHAR(100) NOT NULL,
	Cep CHAR(10) NOT NULL,

	CONSTRAINT fk_IdEstadoCivil FOREIGN KEY (IdEstadoCivil) REFERENCES TB_EstadoCivil (Id),
	CONSTRAINT fk_IdProfissao FOREIGN KEY (IdProfissao) REFERENCES TB_Profissoes (Id),
	CONSTRAINT fk_IdEmpresa FOREIGN KEY (IdEmpresa) REFERENCES TB_Empresas (Id)
);

CREATE TABLE TB_Dependentes(
	Id INT IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	IdFuncionario INT NOT NULL,
	DataCadastro DATETIME NOT NULL,
	DataAlteracao DATETIME NOT NULL,
	Cpf CHAR(14) NOT NULL UNIQUE,
	DataNascimento DATETIME NOT NULL,
	IdParentesco INT NOT NULL,

	CONSTRAINT fk_IdFuncionario FOREIGN KEY (IdFuncionario) REFERENCES TB_Funcionarios (Id),
	CONSTRAINT fk_IdParentesco FOREIGN KEY (IdParentesco) REFERENCES TB_Parentescos (Id)
);