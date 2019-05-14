USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertDependentes]    Script Date: 14/05/2019 10:54:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertDependentes]
@nome VARCHAR(100), @IdFuncionario INT, @DataCadastro DATETIME, @DataAlteracao DATETIME, @Cpf CHAR(14), @DataNascimento DATETIME, @IdParentesco INT
AS
INSERT INTO TB_Dependentes(Nome, IdFuncionario, DataCadastro, DataAlteracao, Cpf, DataNascimento, IdParentesco)
VALUES(@nome, @IdFuncionario, @DataCadastro, @DataAlteracao, @Cpf, @DataNascimento, @IdParentesco)