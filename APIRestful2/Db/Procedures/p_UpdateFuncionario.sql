USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateFuncionario]    Script Date: 16/05/2019 08:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateFuncionario]
@Id INT, @Novo VARCHAR(100), @IdEstadoCivil INT, @cpf CHAR(14), @DataNascimento DATETIME, @IdProfissao INT, @Telefone VARCHAR(50), @IdEmpresa INT, @DataCadastro DATETIME, @DataAlteracao DATETIME, @Logradouro VARCHAR(100), @Bairro VARCHAR(100), @Cidade VARCHAR(100), @Estado VARCHAR(100), @Cep CHAR(10)
AS
UPDATE TB_Funcionarios
SET Nome = @Novo, IdEstadoCivil = @IdEstadoCivil, Cpf = @cpf, DataNascimento = @DataNascimento, IdProfissao = @IdProfissao, Telefone = @Telefone, IdEmpresa = @IdEmpresa, DataCadastro = @DataCadastro, DataAlteracao = @DataAlteracao, Logradouro = @Logradouro, Bairro = @Bairro, Cidade = @Cidade, Estado = @Estado, Cep = @Cep WHERE Id = @Id