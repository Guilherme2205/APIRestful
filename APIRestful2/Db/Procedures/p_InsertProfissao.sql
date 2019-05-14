USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertProfissao]    Script Date: 14/05/2019 10:58:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertProfissao]
@Nome VARCHAR(100), @DataCad DATETIME
AS
INSERT INTO TB_Profissoes(Nome, DataCadastro)
VALUES(@Nome, @DataCad)