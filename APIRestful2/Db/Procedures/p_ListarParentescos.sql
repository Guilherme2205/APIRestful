USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_ListarFuncionarios]    Script Date: 14/05/2019 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_ListarFuncionarios]
AS
SELECT * FROM TB_Funcionarios
GO;