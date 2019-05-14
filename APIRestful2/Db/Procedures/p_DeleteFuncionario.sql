USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteFuncionario]    Script Date: 14/05/2019 10:51:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteFuncionario]
@Id INT
AS
DELETE FROM TB_Funcionarios WHERE Id = @Id;