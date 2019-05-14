USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_DeleteEs]    Script Date: 14/05/2019 10:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_DeleteEs]
@Id INT
AS
DELETE FROM TB_EstadoCivil WHERE Id = @Id;