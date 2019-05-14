USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteDependente]    Script Date: 14/05/2019 10:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteDependente]
@Id INT
AS
DELETE FROM TB_Dependentes WHERE Id = @Id;
