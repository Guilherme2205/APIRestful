USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_ListarEstadoCivil]    Script Date: 14/05/2019 11:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_ListarEstadoCivil]
AS
SELECT * FROM TB_EstadoCivil
GO;