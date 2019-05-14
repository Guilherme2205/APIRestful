USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateProfissao]    Script Date: 14/05/2019 11:20:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateProfissao]
@Id INT, @Novo VARCHAR(100)
AS
UPDATE TB_Profissoes
SET Nome = @Novo WHERE Id = @Id