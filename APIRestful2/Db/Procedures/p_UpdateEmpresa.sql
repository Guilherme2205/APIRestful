USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateEmpresa]    Script Date: 16/05/2019 08:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateEmpresa]
@Id INT, @Novo VARCHAR(100), @DataCadastro DATETIME, @DataAlteracao DATETIME, @Cnpj CHAR(18)
AS
UPDATE TB_Empresas
SET RazaoSocial = @Novo, DataCadastro = @DataCadastro, DataAlteracao = @DataAlteracao, Cnpj = @Cnpj WHERE Id = @Id