/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2016 (13.0.4001)
    SourceDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2017
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/

USE [Demo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Ubigeo_Combo]    Script Date: 24/10/2018 06:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Maestro].[usp_Ubigeo_Combo] --1
@IdPais INT
AS
BEGIN

	SELECT	CodigoDepartamento,
			('Departamento: ' + Departamento) NombreDepartamento,
			IdUbigeo,
			CodigoDepartamento,
			(Provincia + ' - ' + Distrito) NombreUbigeo
	FROM Maestro.Ubigeo
	WHERE IdPais = @IdPais
	ORDER BY Provincia, Distrito

END
