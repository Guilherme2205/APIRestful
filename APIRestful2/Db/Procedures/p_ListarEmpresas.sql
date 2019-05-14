USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_ListarEmpresas]    Script Date: 14/05/2019 10:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_ListarEmpresas]
AS
SELECT * FROM TB_Empresas
GO;