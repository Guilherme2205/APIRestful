USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_SelectDependente]    Script Date: 14/05/2019 11:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_SelectDependente]
@Id INT
AS
SELECT * FROM TB_Dependentes W