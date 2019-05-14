USE [ProjetoAPI]
GO
/****** Object:  StoredProcedure [dbo].[p_SelectParentesco]    Script Date: 14/05/2019 11:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_SelectParentesco]
@Id INT
AS
SELECT * FROM TB_Parentescos WHERE @Id = Id