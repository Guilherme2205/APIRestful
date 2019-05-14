USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertParentesco]    Script Date: 14/05/2019 10:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertParentesco]
@Nome VARCHAR(100)
AS
INSERT INTO TB_Parentescos(Nome)
VALUES(@Nome)