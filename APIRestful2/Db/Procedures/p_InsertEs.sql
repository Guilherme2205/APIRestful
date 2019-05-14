USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertES]    Script Date: 14/05/2019 10:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_InsertES]
@Nome VARCHAR(100)
AS
INSERT INTO TB_EstadoCivil(Nome)
VALUES(@Nome)