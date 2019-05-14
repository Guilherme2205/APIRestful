USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateFuncionario]    Script Date: 14/05/2019 11:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateFuncionario]
@Id INT, @Novo VARCHAR(100)
AS
UPDATE TB_Funcionarios
SET Nome = @Novo WHERE Id = @Id