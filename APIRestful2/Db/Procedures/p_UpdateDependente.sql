USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateDependente]    Script Date: 14/05/2019 11:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateDependente]
@Id INT, @Nome VARCHAR(100)
AS
UPDATE TB_Dependentes
SET Nome = @Nome WHERE Id = @Id