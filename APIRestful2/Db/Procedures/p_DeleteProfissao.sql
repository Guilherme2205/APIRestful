USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteProfissao]    Script Date: 14/05/2019 10:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteProfissao]
@Id INT
AS
DELETE FROM TB_Profissoes WHERE Id = @Id;