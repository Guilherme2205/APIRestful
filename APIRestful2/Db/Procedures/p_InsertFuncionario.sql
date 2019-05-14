USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertFuncionario]    Script Date: 14/05/2019 10:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertFuncionario]
@IdEc INT, @Cpf CHAR(14), @DataN DATETIME, @IdPro INT, @tel VARCHAR(50), @IdEm INT, @DataCad DATETIME, @DataAlt DATETIME, @Logr VARCHAR(100), @Bai VARCHAR(100), @Cid VARCHAR(100), @Es VARCHAR(100), @Cep CHAR(10), @Nome VARCHAR(100)
AS
INSERT INTO TB_Funcionarios(IdEstadoCivil, Cpf, DataNascimento,IdProfissao, Telefone, IdEmpresa, DataCadastro, DataAlteracao, Logradouro, Bairro, Cidade, Estado, Cep, Nome)
VALUES(@IdEc, @Cpf, @DataN, @IdPro, @tel, @IdEm, @DataCad, @DataAlt, @Logr, @Bai, @Cid, @Es, @Cep, @Nome)