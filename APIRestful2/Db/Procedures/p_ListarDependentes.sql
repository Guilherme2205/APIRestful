USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_ListarDependentes]    Script Date: 14/05/2019 10:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_ListarDependentes]
AS
SELECT * FROM TB_Dependentes
GO;