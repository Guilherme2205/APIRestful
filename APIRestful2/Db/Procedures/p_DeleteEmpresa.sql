USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteEmpresa]    Script Date: 14/05/2019 10:50:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteEmpresa]
@Id INT
AS
DELETE FROM TB_Empresas WHERE Id = @Id;
