USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateParentesco]    Script Date: 14/05/2019 11:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateParentesco]
@Id INT, @Novo VARCHAR(100)
AS
UPDATE TB_Parentescos
SET Nome = @Novo WHERE Id = @Id