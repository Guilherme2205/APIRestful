USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_SelectEmpresas]    Script Date: 14/05/2019 11:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_SelectEmpresas]
@Id INT
AS
SELECT * FROM TB_Empresas WHERE @Id = Id