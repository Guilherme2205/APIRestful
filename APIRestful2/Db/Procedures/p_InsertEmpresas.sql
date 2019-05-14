USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertEmpresas]    Script Date: 14/05/2019 10:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertEmpresas]
@RazaoSocial VARCHAR(100), @DataCadastro DATETIME, @DataAlteracao DATETIME, @Cnpj CHAR(18)
AS
INSERT INTO TB_Empresas(RazaoSocial, DataCadastro, DataAlteracao, Cnpj)
VALUES(@RazaoSocial, @DataCadastro, @DataAlteracao, @Cnpj)
