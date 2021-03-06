/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2016 (13.0.4001)
    SourceDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2014
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/

USE [DB_A25F3D_HelpDesk]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_ObtenerPendientesPorRol]    Script Date: 21/11/2018 07:05:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_ObtenerPendientesPorRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Seguridad].[usp_Usuario_ObtenerPendientesPorRol]
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Registrar]    Script Date: 21/11/2018 07:05:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_Registrar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Asignacion].[usp_RolUsuario_Registrar]
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorIdRol]    Script Date: 21/11/2018 07:05:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_ObtenerPorIdRol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorIdRol]
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorId]    Script Date: 21/11/2018 07:05:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_ObtenerPorId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorId]
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Eliminar]    Script Date: 21/11/2018 07:05:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_Eliminar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Asignacion].[usp_RolUsuario_Eliminar]
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Eliminar]    Script Date: 21/11/2018 07:05:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_RolUsuario_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_RolUsuario_Eliminar] 
(
	@IdRolUsuario INT
)
AS
BEGIN
	
	DELETE FROM Seguridad.RolUsuario
	WHERE IdRolUsuario = @IdRolUsuario

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorId]    Script Date: 21/11/2018 07:05:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorId]
	@IdRolUsuario INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Seguridad.RolUsuario
	WHERE IdRolUsuario = @IdRolUsuario
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorIdRol]    Script Date: 21/11/2018 07:05:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_ObtenerPorIdRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorIdRol] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_RolUsuario_ObtenerPorIdRol] --'',0,1,1,10,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdRol INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdUsuario'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdRolUsuario,
			IdUsuario,
			UserName,
			Nombre,
			ApellidoPaterno,
			ApellidoMaterno,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'desc' THEN  usu.IdUsuario END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'asc' THEN usu.IdUsuario END) ASC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'desc' THEN usu.UserName END) DESC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'asc' THEN usu.UserName  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN usu.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN usu.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'ApellidoPaterno' AND @DireccionOrden = 'desc' THEN usu.ApellidoPaterno END) DESC,
					(CASE WHEN @ColumnaOrden = 'ApellidoPaterno' AND @DireccionOrden = 'asc' THEN usu.ApellidoPaterno  END) ASC,
					(CASE WHEN @ColumnaOrden = 'ApellidoMaterno' AND @DireccionOrden = 'desc' THEN usu.ApellidoMaterno END) DESC,
					(CASE WHEN @ColumnaOrden = 'ApellidoMaterno' AND @DireccionOrden = 'asc' THEN usu.ApellidoMaterno  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN usu.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN usu.IdEstado  END) ASC
			) AS Item 
			,rolUsu.IdRolUsuario
			,usu.IdUsuario
			,usu.UserName
			,usu.Nombre
			,usu.ApellidoPaterno
			,usu.ApellidoMaterno
			,usu.IdEstado
			,COUNT(usu.IdUsuario) OVER ( )  AS TotalItems 
		FROM Seguridad.Usuario usu
		INNER JOIN Seguridad.RolUsuario rolUsu ON usu.IdUsuario = rolUsu.IdUsuario
		WHERE (usu.UserName LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoPaterno LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoMaterno LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND usu.IdEstado = CASE @IdEstado
								WHEN 0 THEN usu.IdEstado
								ELSE @IdEstado
							  END
			AND rolUsu.IdRol = @IdRol
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Registrar]    Script Date: 21/11/2018 07:05:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_RolUsuario_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_RolUsuario_Registrar] AS' 
END
GO

ALTER PROCEDURE [Asignacion].[usp_RolUsuario_Registrar] 
(
	@IdRol INT
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @CantidadRegistros INT
	SET @CantidadRegistros = (SELECT COUNT(IdRolUsuario) FROM Seguridad.RolUsuario
	WHERE IdRol = @IdRol 
	AND IdUsuario = @IdUsuario)

	SET NOCOUNT OFF;

	IF(@CantidadRegistros = 0)
	BEGIN

		DECLARE @IdRolUsuario INT
		SET @IdRolUsuario = (SELECT (ISNULL(MAX(IdRolUsuario), 0) + 1) FROM Seguridad.RolUsuario)

		INSERT INTO Seguridad.RolUsuario(
			IdRolUsuario
			,IdRol
			,IdUsuario
			,IdEstado
			)
		VALUES (
			@IdRolUsuario
			,@IdRol
			,@IdUsuario
			,@IdEstado
			)
	END	

END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_ObtenerPendientesPorRol]    Script Date: 21/11/2018 07:05:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_ObtenerPendientesPorRol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_ObtenerPendientesPorRol] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_ObtenerPendientesPorRol] --'',1,1,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdRol INT
	--,@NumeroPagina INT
	--,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdUsuario'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	--DECLARE @Desde INT
	--DECLARE @Hasta INT
	--SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	--SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdUsuario,
			UserName,
			ApellidoPaterno,
			ApellidoMaterno,
			Nombre,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'desc' THEN  usu.IdUsuario END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'asc' THEN usu.IdUsuario END) ASC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'desc' THEN usu.UserName END) DESC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'asc' THEN usu.UserName  END) ASC,
					(CASE WHEN @ColumnaOrden = 'ApellidoPaterno' AND @DireccionOrden = 'desc' THEN usu.ApellidoPaterno END) DESC,
					(CASE WHEN @ColumnaOrden = 'ApellidoPaterno' AND @DireccionOrden = 'asc' THEN usu.ApellidoPaterno  END) ASC,
					(CASE WHEN @ColumnaOrden = 'ApellidoMaterno' AND @DireccionOrden = 'desc' THEN usu.ApellidoMaterno END) DESC,
					(CASE WHEN @ColumnaOrden = 'ApellidoMaterno' AND @DireccionOrden = 'asc' THEN usu.ApellidoMaterno  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN usu.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN usu.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN usu.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN usu.IdEstado  END) ASC
			) AS Item 
			,usu.IdUsuario
			,usu.UserName
			,usu.ApellidoPaterno
			,usu.ApellidoMaterno
			,usu.Nombre
			,usu.IdEstado
			,COUNT(usu.IdUsuario) OVER ( )  AS TotalItems 
		FROM Seguridad.Usuario usu
		WHERE (usu.UserName LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoPaterno LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoMaterno LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND usu.IdEstado = CASE @IdEstado
								WHEN 0 THEN usu.IdEstado
								ELSE @IdEstado
							  END
			AND usu.IdUsuario NOT IN (SELECT rolUsu.IdUsuario FROM Seguridad.RolUsuario rolUsu
										WHERE rolUsu.IdRol = @IdRol)
	) AS Resultado
	--WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
