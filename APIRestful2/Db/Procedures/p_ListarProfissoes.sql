USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_ListarProfissoes]    Script Date: 14/05/2019 11:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_ListarProfissoes]
AS
SELECT * FROM TB_Profissoes
GO;