USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateEmpresa]    Script Date: 14/05/2019 11:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_UpdateEmpresa]
@Id INT, @Novo VARCHAR(100)
AS
UPDATE TB_Empresas
SET RazaoSocial = @Novo WHERE Id = @Id