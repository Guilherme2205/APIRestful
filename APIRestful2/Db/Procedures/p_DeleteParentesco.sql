USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteParentesco]    Script Date: 14/05/2019 10:52:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteParentesco]
@Id INT
AS
DELETE FROM TB_Parentescos WHERE Id = @Id;