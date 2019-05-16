USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateProfissao]    Script Date: 16/05/2019 08:58:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateProfissao]
@Id INT, @Novo VARCHAR(100), @DataCadastro DATETIME, @DataAlteracao DATETIME
AS
UPDATE TB_Profissoes
SET Nome = @Novo, DataCadastro = @DataCadastro, DataAlteracao = @DataAlteracao WHERE Id = @Id