USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateDependente]    Script Date: 16/05/2019 08:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateDependente]
@Id INT, @Nome VARCHAR(100), @IdFuncionario INT, @DataCadastro DATETIME, @DataAlteracao DATETIME, @Cpf CHAR(14), @DataNascimento DATETIME, @IdParentesco INT
AS
UPDATE TB_Dependentes
SET Nome = @Nome, IdFuncionario = @IdFuncionario, DataCadastro = @DataCadastro, DataAlteracao = @DataAlteracao, Cpf = @Cpf, DataNascimento = @DataNascimento, IdParentesco = @IdParentesco WHERE Id = @Id