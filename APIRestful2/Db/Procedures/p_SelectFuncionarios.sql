USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_SelectFuncionarios]    Script Date: 14/05/2019 11:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_SelectFuncionarios]
@Id INT
AS
SELECT * FROM TB_Funcionarios WHERE @Id = Id