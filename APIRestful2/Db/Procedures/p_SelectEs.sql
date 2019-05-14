USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_SelectEs]    Script Date: 14/05/2019 11:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_SelectEs]
@Id INT
AS
SELECT * FROM TB_EstadoCivil WHERE @Id = Id