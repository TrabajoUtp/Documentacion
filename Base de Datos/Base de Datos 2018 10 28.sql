/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2016 (13.0.4001)
    SourceDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2016
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/

USE [Demo]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Login]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Usuario_Login]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_Registrar]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_ObtenerPorId]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_Obtener]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_Modificar]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_Eliminar]
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Seguridad].[usp_Rol_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Ubigeo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Ubigeo_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_TipoEstado_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_TipoCorreo_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Prioridad_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Pais_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Pais_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Motivo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Motivo_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Estado_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_Registrar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_ObtenerPorId]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_Obtener]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_Modificar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_Eliminar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Cliente_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_Registrar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_ObtenerPorId]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_Obtener]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_Modificar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_Eliminar]
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_CategoriaFaq_Combo]
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Combo]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Maestro].[usp_Area_Combo]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Incidencia_Registrar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Incidencia_Modificar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_FaqDetalle_Registrar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_FaqDetalle_Modificar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Faq_Registrar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Faq_ObtenerPorId]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Faq_Obtener]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Faq_Modificar]
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
DROP PROCEDURE IF EXISTS [Gestion].[usp_Faq_Eliminar]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[Usuario]') AND type in (N'U'))
ALTER TABLE [Seguridad].[Usuario] DROP CONSTRAINT IF EXISTS [DF__Usuario__Elimina__52593CB8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[Correo]') AND type in (N'U'))
ALTER TABLE [Seguimiento].[Correo] DROP CONSTRAINT IF EXISTS [DF__Correo__Enviado__5165187F]
GO
/****** Object:  Table [Seguridad].[Usuario]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Seguridad].[Usuario]
GO
/****** Object:  Table [Seguridad].[RolUsuario]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Seguridad].[RolUsuario]
GO
/****** Object:  Table [Seguridad].[Rol]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Seguridad].[Rol]
GO
/****** Object:  Table [Seguridad].[Acceso]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Seguridad].[Acceso]
GO
/****** Object:  Table [Seguimiento].[Correo]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Seguimiento].[Correo]
GO
/****** Object:  Table [Maestro].[Ubigeo]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Ubigeo]
GO
/****** Object:  Table [Maestro].[TipoIncidencia]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[TipoIncidencia]
GO
/****** Object:  Table [Maestro].[TipoEstado]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[TipoEstado]
GO
/****** Object:  Table [Maestro].[TipoCorreo]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[TipoCorreo]
GO
/****** Object:  Table [Maestro].[Prioridad]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Prioridad]
GO
/****** Object:  Table [Maestro].[Pais]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Pais]
GO
/****** Object:  Table [Maestro].[Motivo]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Motivo]
GO
/****** Object:  Table [Maestro].[Estado]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Estado]
GO
/****** Object:  Table [Maestro].[Contacto]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Contacto]
GO
/****** Object:  Table [Maestro].[Cliente]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Cliente]
GO
/****** Object:  Table [Maestro].[CategoriaFaq]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[CategoriaFaq]
GO
/****** Object:  Table [Maestro].[Area]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Maestro].[Area]
GO
/****** Object:  Table [Gestion].[IncidenciaDetalleAdjunto]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Gestion].[IncidenciaDetalleAdjunto]
GO
/****** Object:  Table [Gestion].[IncidenciaDetalle]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Gestion].[IncidenciaDetalle]
GO
/****** Object:  Table [Gestion].[Incidencia]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Gestion].[Incidencia]
GO
/****** Object:  Table [Gestion].[FaqAdjunto]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Gestion].[FaqAdjunto]
GO
/****** Object:  Table [Gestion].[Faq]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Gestion].[Faq]
GO
/****** Object:  Table [Configuracion].[Parametro]    Script Date: 29/10/2018 01:09:46 ******/
DROP TABLE IF EXISTS [Configuracion].[Parametro]
GO
/****** Object:  Schema [Seguridad]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Seguridad]
GO
/****** Object:  Schema [Seguimiento]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Seguimiento]
GO
/****** Object:  Schema [Maestro]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Maestro]
GO
/****** Object:  Schema [Gestion]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Gestion]
GO
/****** Object:  Schema [Configuracion]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Configuracion]
GO
/****** Object:  Schema [Auditoria]    Script Date: 29/10/2018 01:09:46 ******/
DROP SCHEMA IF EXISTS [Auditoria]
GO
USE [master]
GO
/****** Object:  Database [Demo]    Script Date: 29/10/2018 01:09:46 ******/
DROP DATABASE IF EXISTS [Demo]
GO
/****** Object:  Database [Demo]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Demo')
BEGIN
CREATE DATABASE [Demo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Demo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Demo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [Demo] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo] SET RECOVERY FULL 
GO
ALTER DATABASE [Demo] SET  MULTI_USER 
GO
ALTER DATABASE [Demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Demo] SET QUERY_STORE = OFF
GO
USE [Demo]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Demo]
GO
/****** Object:  Schema [Auditoria]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Auditoria')
EXEC sys.sp_executesql N'CREATE SCHEMA [Auditoria]'
GO
/****** Object:  Schema [Configuracion]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Configuracion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Configuracion]'
GO
/****** Object:  Schema [Gestion]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Gestion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Gestion]'
GO
/****** Object:  Schema [Maestro]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Maestro')
EXEC sys.sp_executesql N'CREATE SCHEMA [Maestro]'
GO
/****** Object:  Schema [Seguimiento]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguimiento')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguimiento]'
GO
/****** Object:  Schema [Seguridad]    Script Date: 29/10/2018 01:09:46 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguridad')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguridad]'
GO
/****** Object:  Table [Configuracion].[Parametro]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Configuracion].[Parametro]') AND type in (N'U'))
BEGIN
CREATE TABLE [Configuracion].[Parametro](
	[IdParametro] [int] NULL,
	[Propiedad] [varchar](250) NULL,
	[Valor] [varchar](500) NULL,
	[Observacion] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[Faq]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[Faq]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[Faq](
	[IdFaq] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](250) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[IdCategoriaFaq] [int] NULL,
	[IdUsuarioRegistra] [int] NULL,
	[IdUsuarioActualiza] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[FaqAdjunto]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[FaqAdjunto]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[FaqAdjunto](
	[IdFaqAdjunto] [int] IDENTITY(1,1) NOT NULL,
	[IdFaq] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[NombreArchivo] [varchar](250) NULL,
	[Extension] [varchar](100) NULL,
	[Archivo] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[Incidencia]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[Incidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[Incidencia](
	[IdIncidencia] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[Asunto] [varchar](500) NULL,
	[IdTipoIncidencia] [int] NULL,
	[IdUsuarioRegistra] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioFinaliza] [int] NULL,
	[FechaFinalizacion] [datetime] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[IncidenciaDetalle]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[IncidenciaDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[IncidenciaDetalle](
	[IdIncidenciaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdIncidencia] [int] NULL,
	[IdUsuario] [int] NULL,
	[Descripcion] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[IncidenciaDetalleAdjunto]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[IncidenciaDetalleAdjunto]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[IncidenciaDetalleAdjunto](
	[IdIncidenciaDetalleAdjunto] [int] IDENTITY(1,1) NOT NULL,
	[IdIncidenciaDetalle] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[NombreArchivo] [varchar](250) NULL,
	[Extension] [varchar](100) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Area]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Area]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Area](
	[IdArea] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](250) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[CategoriaFaq]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[CategoriaFaq]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[CategoriaFaq](
	[IdCategoriaFaq] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Observacion] [varchar](250) NULL,
	[IdEstado] [int] NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Cliente]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](20) NULL,
	[RazonSocial] [varchar](250) NULL,
	[Direccion] [varchar](250) NULL,
	[IdPais] [int] NULL,
	[IdUbigeo] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Contacto]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Contacto]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Contacto](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Apellido] [varchar](250) NULL,
	[Correo] [varchar](250) NULL,
	[Telefono] [varchar](50) NULL,
	[IdCliente] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Estado]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Estado](
	[IdEstado] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](500) NULL,
	[IdTipoEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Motivo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Motivo]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Motivo](
	[IdMotivo] [int] NULL,
	[Abreviatura] [varchar](100) NULL,
	[Nombre] [varchar](250) NULL,
	[Observacion] [varchar](250) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Pais]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Pais]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Prioridad]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Prioridad]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Prioridad](
	[IdPrioridad] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](250) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[TipoCorreo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[TipoCorreo]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[TipoCorreo](
	[IdTipoCorreo] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](250) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[TipoEstado]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[TipoEstado]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[TipoEstado](
	[IdTipoEstado] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](500) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[TipoIncidencia]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[TipoIncidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[TipoIncidencia](
	[IdTipoIncidencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](500) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Ubigeo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Ubigeo]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Ubigeo](
	[IdUbigeo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoDepartamento] [varchar](10) NULL,
	[CodigoProvincia] [varchar](10) NULL,
	[CodigoDistrito] [varchar](10) NULL,
	[Departamento] [varchar](100) NULL,
	[Provincia] [varchar](100) NULL,
	[Distrito] [varchar](100) NULL,
	[IdPais] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguimiento].[Correo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[Correo]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguimiento].[Correo](
	[IdCorreo] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoCorreo] [int] NULL,
	[Destinatario] [varchar](500) NULL,
	[Copia] [varchar](500) NULL,
	[Asunto] [varchar](250) NULL,
	[Cuerpo] [nvarchar](max) NULL,
	[Enviado] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[Acceso]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[Acceso]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[Acceso](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdAccesoPadre] [bigint] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Url] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Orden] [int] NULL,
	[Tipo] [varchar](20) NULL,
	[Activo] [bit] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[Rol]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[Rol](
	[IdRol] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](500) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[RolUsuario]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[RolUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[RolUsuario](
	[IdRolUsuario] [int] NULL,
	[IdRol] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[Usuario]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[Usuario](
	[IdUsuario] [int] NULL,
	[UserName] [varchar](50) NULL,
	[Contrasenia] [nvarchar](max) NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Eliminado] [bit] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [Maestro].[Cliente] ON 
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3013, N'12345678901', N'Razon Social 3', N'Direccion 3', 1, 9, CAST(N'2018-10-25T20:31:41.347' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3014, N'12345678901', N'Razon Social 4', N'Direccion 4', 1, 24, CAST(N'2018-10-25T20:37:27.960' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (4012, N'65498732165', N'Razon Social 5', N'Direccion 5', 1, 11, CAST(N'2018-10-27T10:45:31.510' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1011, N'12345678901', N'Razon Social 1', N'Direccion 1', 1, 42, CAST(N'2018-10-13T22:54:14.990' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3012, N'12345678901', N'Razon Social 2', N'Direccion 2', 1, 35, CAST(N'2018-10-24T20:02:44.507' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [Maestro].[Cliente] OFF
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (1, N'Activo', NULL, 1)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (2, N'Inactivo', NULL, 1)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (3, N'Pendiente', NULL, 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (4, N'En Revision', NULL, 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (5, N'Cancelada', NULL, 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (6, N'Finalizada', NULL, 2)
GO
SET IDENTITY_INSERT [Maestro].[Pais] ON 
GO
INSERT [Maestro].[Pais] ([IdPais], [Nombre], [Codigo]) VALUES (1, N'Perú', N'51')
GO
SET IDENTITY_INSERT [Maestro].[Pais] OFF
GO
INSERT [Maestro].[TipoEstado] ([IdTipoEstado], [Nombre], [Observacion]) VALUES (1, N'Maestros', N'Usado para los mantenimientos en general')
GO
INSERT [Maestro].[TipoEstado] ([IdTipoEstado], [Nombre], [Observacion]) VALUES (2, N'Incidencias', N'Indica los estados que puede adquirir una incidencia')
GO
SET IDENTITY_INSERT [Maestro].[Ubigeo] ON 
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (1, N'14', N'01', N'01', N'LIMA', N'LIMA', N'LIMA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (2, N'14', N'01', N'02', N'LIMA', N'LIMA', N'ANCON', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (3, N'14', N'01', N'03', N'LIMA', N'LIMA', N'ATE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (4, N'14', N'01', N'04', N'LIMA', N'LIMA', N'BREÑA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (5, N'14', N'01', N'05', N'LIMA', N'LIMA', N'CARABAYLLO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (6, N'14', N'01', N'06', N'LIMA', N'LIMA', N'COMAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (7, N'14', N'01', N'07', N'LIMA', N'LIMA', N'CHACLACAYO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (8, N'14', N'01', N'08', N'LIMA', N'LIMA', N'CHORRILLOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (9, N'14', N'01', N'09', N'LIMA', N'LIMA', N'LA VICTORIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (10, N'14', N'01', N'10', N'LIMA', N'LIMA', N'LA MOLINA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (11, N'14', N'01', N'11', N'LIMA', N'LIMA', N'LINCE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (12, N'14', N'01', N'12', N'LIMA', N'LIMA', N'LURIGANCHO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (13, N'14', N'01', N'13', N'LIMA', N'LIMA', N'LURIN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (14, N'14', N'01', N'14', N'LIMA', N'LIMA', N'MAGDALENA DEL MAR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (15, N'14', N'01', N'15', N'LIMA', N'LIMA', N'MIRAFLORES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (16, N'14', N'01', N'16', N'LIMA', N'LIMA', N'PACHACAMAC', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (17, N'14', N'01', N'17', N'LIMA', N'LIMA', N'PUEBLO LIBRE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (18, N'14', N'01', N'18', N'LIMA', N'LIMA', N'PUCUSANA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (19, N'14', N'01', N'19', N'LIMA', N'LIMA', N'PUENTE PIEDRA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (20, N'14', N'01', N'20', N'LIMA', N'LIMA', N'PUNTA HERMOSA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (21, N'14', N'01', N'21', N'LIMA', N'LIMA', N'PUNTA NEGRA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (22, N'14', N'01', N'22', N'LIMA', N'LIMA', N'RIMAC', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (23, N'14', N'01', N'23', N'LIMA', N'LIMA', N'SAN BARTOLO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (24, N'14', N'01', N'24', N'LIMA', N'LIMA', N'SAN ISIDRO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (25, N'14', N'01', N'25', N'LIMA', N'LIMA', N'BARRANCO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (26, N'14', N'01', N'26', N'LIMA', N'LIMA', N'SAN MARTIN DE PORRES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (27, N'14', N'01', N'27', N'LIMA', N'LIMA', N'SAN MIGUEL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (28, N'14', N'01', N'28', N'LIMA', N'LIMA', N'SANTA MARIA DEL MAR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (29, N'14', N'01', N'29', N'LIMA', N'LIMA', N'SANTA ROSA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (30, N'14', N'01', N'30', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (31, N'14', N'01', N'31', N'LIMA', N'LIMA', N'SURQUILLO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (32, N'14', N'01', N'32', N'LIMA', N'LIMA', N'VILLA MARIA DEL TRIUNFO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (33, N'14', N'01', N'33', N'LIMA', N'LIMA', N'JESUS MARIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (34, N'14', N'01', N'34', N'LIMA', N'LIMA', N'INDEPENDENCIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (35, N'14', N'01', N'35', N'LIMA', N'LIMA', N'EL AGUSTINO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (36, N'14', N'01', N'36', N'LIMA', N'LIMA', N'SAN JUAN DE MIRAFLORES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (37, N'14', N'01', N'37', N'LIMA', N'LIMA', N'SAN JUAN DE LURIGANCHO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (38, N'14', N'01', N'38', N'LIMA', N'LIMA', N'SAN LUIS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (39, N'14', N'01', N'39', N'LIMA', N'LIMA', N'CIENEGUILLA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (40, N'14', N'01', N'40', N'LIMA', N'LIMA', N'SAN BORJA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (41, N'14', N'01', N'41', N'LIMA', N'LIMA', N'VILLA EL SALVADOR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (42, N'14', N'01', N'42', N'LIMA', N'LIMA', N'LOS OLIVOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (43, N'14', N'01', N'43', N'LIMA', N'LIMA', N'SANTA ANITA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (44, N'14', N'02', N'01', N'LIMA', N'CAJATAMBO', N'CAJATAMBO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (45, N'14', N'02', N'05', N'LIMA', N'CAJATAMBO', N'COPA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (46, N'14', N'02', N'06', N'LIMA', N'CAJATAMBO', N'GORGOR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (47, N'14', N'02', N'07', N'LIMA', N'CAJATAMBO', N'HUANCAPON', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (48, N'14', N'02', N'08', N'LIMA', N'CAJATAMBO', N'MANAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (49, N'14', N'03', N'01', N'LIMA', N'CANTA', N'CANTA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (50, N'14', N'03', N'02', N'LIMA', N'CANTA', N'ARAHUAY', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (51, N'14', N'03', N'03', N'LIMA', N'CANTA', N'HUAMANTANGA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (52, N'14', N'03', N'04', N'LIMA', N'CANTA', N'HUAROS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (53, N'14', N'03', N'05', N'LIMA', N'CANTA', N'LACHAQUI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (54, N'14', N'03', N'06', N'LIMA', N'CANTA', N'SAN BUENAVENTURA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (55, N'14', N'03', N'07', N'LIMA', N'CANTA', N'SANTA ROSA DE QUIVES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (56, N'14', N'04', N'01', N'LIMA', N'CAÑETE', N'SAN VICENTE DE CAÑETE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (57, N'14', N'04', N'02', N'LIMA', N'CAÑETE', N'CALANGO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (58, N'14', N'04', N'03', N'LIMA', N'CAÑETE', N'CERRO AZUL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (59, N'14', N'04', N'04', N'LIMA', N'CAÑETE', N'COAYLLO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (60, N'14', N'04', N'05', N'LIMA', N'CAÑETE', N'CHILCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (61, N'14', N'04', N'06', N'LIMA', N'CAÑETE', N'IMPERIAL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (62, N'14', N'04', N'07', N'LIMA', N'CAÑETE', N'LUNAHUANA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (63, N'14', N'04', N'08', N'LIMA', N'CAÑETE', N'MALA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (64, N'14', N'04', N'09', N'LIMA', N'CAÑETE', N'NUEVO IMPERIAL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (65, N'14', N'04', N'10', N'LIMA', N'CAÑETE', N'PACARAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (66, N'14', N'04', N'11', N'LIMA', N'CAÑETE', N'QUILMANA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (67, N'14', N'04', N'12', N'LIMA', N'CAÑETE', N'SAN ANTONIO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (68, N'14', N'04', N'13', N'LIMA', N'CAÑETE', N'SAN LUIS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (69, N'14', N'04', N'14', N'LIMA', N'CAÑETE', N'SANTA CRUZ DE FLORES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (70, N'14', N'04', N'15', N'LIMA', N'CAÑETE', N'ZUÑIGA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (71, N'14', N'04', N'16', N'LIMA', N'CAÑETE', N'ASIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (72, N'14', N'05', N'01', N'LIMA', N'HUAURA', N'HUACHO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (73, N'14', N'05', N'02', N'LIMA', N'HUAURA', N'AMBAR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (74, N'14', N'05', N'04', N'LIMA', N'HUAURA', N'CALETA DE CARQUIN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (75, N'14', N'05', N'05', N'LIMA', N'HUAURA', N'CHECRAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (76, N'14', N'05', N'06', N'LIMA', N'HUAURA', N'HUALMAY', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (77, N'14', N'05', N'07', N'LIMA', N'HUAURA', N'HUAURA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (78, N'14', N'05', N'08', N'LIMA', N'HUAURA', N'LEONCIO PRADO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (79, N'14', N'05', N'09', N'LIMA', N'HUAURA', N'PACCHO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (80, N'14', N'05', N'11', N'LIMA', N'HUAURA', N'SANTA LEONOR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (81, N'14', N'05', N'12', N'LIMA', N'HUAURA', N'SANTA MARIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (82, N'14', N'05', N'13', N'LIMA', N'HUAURA', N'SAYAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (83, N'14', N'05', N'16', N'LIMA', N'HUAURA', N'VEGUETA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (84, N'14', N'06', N'01', N'LIMA', N'HUAROCHIRI', N'MATUCANA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (85, N'14', N'06', N'02', N'LIMA', N'HUAROCHIRI', N'ANTIOQUIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (86, N'14', N'06', N'03', N'LIMA', N'HUAROCHIRI', N'CALLAHUANCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (87, N'14', N'06', N'04', N'LIMA', N'HUAROCHIRI', N'CARAMPOMA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (88, N'14', N'06', N'05', N'LIMA', N'HUAROCHIRI', N'CASTA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (89, N'14', N'06', N'06', N'LIMA', N'HUAROCHIRI', N'SAN JOSE DE LOS CHORRILLOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (90, N'14', N'06', N'07', N'LIMA', N'HUAROCHIRI', N'CHICLA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (91, N'14', N'06', N'08', N'LIMA', N'HUAROCHIRI', N'HUANZA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (92, N'14', N'06', N'09', N'LIMA', N'HUAROCHIRI', N'HUAROCHIRI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (93, N'14', N'06', N'10', N'LIMA', N'HUAROCHIRI', N'LAHUAYTAMBO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (94, N'14', N'06', N'11', N'LIMA', N'HUAROCHIRI', N'LANGA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (95, N'14', N'06', N'12', N'LIMA', N'HUAROCHIRI', N'MARIATANA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (96, N'14', N'06', N'13', N'LIMA', N'HUAROCHIRI', N'RICARDO PALMA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (97, N'14', N'06', N'14', N'LIMA', N'HUAROCHIRI', N'SAN ANDRES DE TUPICOCHA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (98, N'14', N'06', N'15', N'LIMA', N'HUAROCHIRI', N'SAN ANTONIO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (99, N'14', N'06', N'16', N'LIMA', N'HUAROCHIRI', N'SAN BARTOLOME', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (100, N'14', N'06', N'17', N'LIMA', N'HUAROCHIRI', N'SAN DAMIAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (101, N'14', N'06', N'18', N'LIMA', N'HUAROCHIRI', N'SANGALLAYA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (102, N'14', N'06', N'19', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE TANTARANCHE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (103, N'14', N'06', N'20', N'LIMA', N'HUAROCHIRI', N'SAN LORENZO DE QUINTI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (104, N'14', N'06', N'21', N'LIMA', N'HUAROCHIRI', N'SAN MATEO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (105, N'14', N'06', N'22', N'LIMA', N'HUAROCHIRI', N'SAN MATEO DE OTAO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (106, N'14', N'06', N'23', N'LIMA', N'HUAROCHIRI', N'SAN PEDRO DE HUANCAYRE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (107, N'14', N'06', N'24', N'LIMA', N'HUAROCHIRI', N'SANTA CRUZ DE COCACHACRA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (108, N'14', N'06', N'25', N'LIMA', N'HUAROCHIRI', N'SANTA EULALIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (109, N'14', N'06', N'26', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE ANCHUCAYA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (110, N'14', N'06', N'27', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE TUNA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (111, N'14', N'06', N'28', N'LIMA', N'HUAROCHIRI', N'SANTO DOMINGO DE LOS OLLEROS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (112, N'14', N'06', N'29', N'LIMA', N'HUAROCHIRI', N'SURCO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (113, N'14', N'06', N'30', N'LIMA', N'HUAROCHIRI', N'HUACHUPAMPA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (114, N'14', N'06', N'31', N'LIMA', N'HUAROCHIRI', N'LARAOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (115, N'14', N'06', N'32', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE IRIS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (116, N'14', N'07', N'01', N'LIMA', N'YAUYOS', N'YAUYOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (117, N'14', N'07', N'02', N'LIMA', N'YAUYOS', N'ALIS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (118, N'14', N'07', N'03', N'LIMA', N'YAUYOS', N'ALLAUCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (119, N'14', N'07', N'04', N'LIMA', N'YAUYOS', N'AYAVIRI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (120, N'14', N'07', N'05', N'LIMA', N'YAUYOS', N'AZANGARO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (121, N'14', N'07', N'06', N'LIMA', N'YAUYOS', N'CACRA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (122, N'14', N'07', N'07', N'LIMA', N'YAUYOS', N'CARANIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (123, N'14', N'07', N'08', N'LIMA', N'YAUYOS', N'COCHAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (124, N'14', N'07', N'09', N'LIMA', N'YAUYOS', N'COLONIA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (125, N'14', N'07', N'10', N'LIMA', N'YAUYOS', N'CHOCOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (126, N'14', N'07', N'11', N'LIMA', N'YAUYOS', N'HUAMPARA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (127, N'14', N'07', N'12', N'LIMA', N'YAUYOS', N'HUANCAYA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (128, N'14', N'07', N'13', N'LIMA', N'YAUYOS', N'HUANGASCAR', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (129, N'14', N'07', N'14', N'LIMA', N'YAUYOS', N'HUANTAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (130, N'14', N'07', N'15', N'LIMA', N'YAUYOS', N'HUAÑEC', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (131, N'14', N'07', N'16', N'LIMA', N'YAUYOS', N'LARAOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (132, N'14', N'07', N'17', N'LIMA', N'YAUYOS', N'LINCHA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (133, N'14', N'07', N'18', N'LIMA', N'YAUYOS', N'MIRAFLORES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (134, N'14', N'07', N'19', N'LIMA', N'YAUYOS', N'OMAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (135, N'14', N'07', N'20', N'LIMA', N'YAUYOS', N'QUINCHES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (136, N'14', N'07', N'21', N'LIMA', N'YAUYOS', N'QUINOCAY', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (137, N'14', N'07', N'22', N'LIMA', N'YAUYOS', N'SAN JOAQUIN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (138, N'14', N'07', N'23', N'LIMA', N'YAUYOS', N'SAN PEDRO DE PILAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (139, N'14', N'07', N'24', N'LIMA', N'YAUYOS', N'TANTA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (140, N'14', N'07', N'25', N'LIMA', N'YAUYOS', N'TAURIPAMPA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (141, N'14', N'07', N'26', N'LIMA', N'YAUYOS', N'TUPE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (142, N'14', N'07', N'27', N'LIMA', N'YAUYOS', N'TOMAS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (143, N'14', N'07', N'28', N'LIMA', N'YAUYOS', N'VIÑAC', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (144, N'14', N'07', N'29', N'LIMA', N'YAUYOS', N'VITIS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (145, N'14', N'07', N'30', N'LIMA', N'YAUYOS', N'HONGOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (146, N'14', N'07', N'31', N'LIMA', N'YAUYOS', N'MADEAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (147, N'14', N'07', N'32', N'LIMA', N'YAUYOS', N'PUTINZA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (148, N'14', N'07', N'33', N'LIMA', N'YAUYOS', N'CATAHUASI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (149, N'14', N'08', N'01', N'LIMA', N'HUARAL', N'HUARAL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (150, N'14', N'08', N'02', N'LIMA', N'HUARAL', N'ATAVILLOS ALTO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (151, N'14', N'08', N'03', N'LIMA', N'HUARAL', N'ATAVILLOS BAJO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (152, N'14', N'08', N'04', N'LIMA', N'HUARAL', N'AUCALLAMA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (153, N'14', N'08', N'05', N'LIMA', N'HUARAL', N'CHANCAY', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (154, N'14', N'08', N'06', N'LIMA', N'HUARAL', N'IHUARI', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (155, N'14', N'08', N'07', N'LIMA', N'HUARAL', N'LAMPIAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (156, N'14', N'08', N'08', N'LIMA', N'HUARAL', N'PACARAOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (157, N'14', N'08', N'09', N'LIMA', N'HUARAL', N'SAN MIGUEL DE ACOS', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (158, N'14', N'08', N'10', N'LIMA', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (159, N'14', N'08', N'11', N'LIMA', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (160, N'14', N'08', N'12', N'LIMA', N'HUARAL', N'SUMBILCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (161, N'14', N'09', N'01', N'LIMA', N'BARRANCA', N'BARRANCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (162, N'14', N'09', N'02', N'LIMA', N'BARRANCA', N'PARAMONGA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (163, N'14', N'09', N'03', N'LIMA', N'BARRANCA', N'PATIVILCA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (164, N'14', N'09', N'04', N'LIMA', N'BARRANCA', N'SUPE', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (165, N'14', N'09', N'05', N'LIMA', N'BARRANCA', N'SUPE PUERTO', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (166, N'14', N'10', N'01', N'LIMA', N'OYON', N'OYON', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (167, N'14', N'10', N'02', N'LIMA', N'OYON', N'NAVAN', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (168, N'14', N'10', N'03', N'LIMA', N'OYON', N'CAUJUL', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (169, N'14', N'10', N'04', N'LIMA', N'OYON', N'ANDAJES', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (170, N'14', N'10', N'05', N'LIMA', N'OYON', N'PACHANGARA', 1)
GO
INSERT [Maestro].[Ubigeo] ([IdUbigeo], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito], [IdPais]) VALUES (171, N'14', N'10', N'06', N'LIMA', N'OYON', N'COCHAMARCA', 1)
GO
SET IDENTITY_INSERT [Maestro].[Ubigeo] OFF
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Administrador Sistema', NULL, 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Ventas', NULL, 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Contabilidad', N'Nada por aca', 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (4, N'Nuevo Rol', N'Nueva Observacion', 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (5, N'Nuevo Rol 5', NULL, 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (6, N'Nuevo Rol 6', NULL, 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (7, N'Nuevo Rol 7 Modificado', N'Nueva Descripcion', 1)
GO
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (1, 1, 1, 1)
GO
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (2, 2, 1, 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Eliminado], [IdEstado]) VALUES (1, N'fcochachin', N'123456', N'Frank', N'Cochachin', N'Quito', 0, 1)
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[DF__Correo__Enviado__5165187F]') AND type = 'D')
BEGIN
ALTER TABLE [Seguimiento].[Correo] ADD  DEFAULT ((0)) FOR [Enviado]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[DF__Usuario__Elimina__52593CB8]') AND type = 'D')
BEGIN
ALTER TABLE [Seguridad].[Usuario] ADD  DEFAULT ((0)) FOR [Eliminado]
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_Eliminar] 
(
	@IdFaq INT
)
AS
BEGIN
	DELETE FROM Gestion.Faq
	WHERE IdFaq = @IdFaq
		
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_Modificar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_Modificar] 
(
	@IdFaq INT
	,@Titulo VARCHAR(250)
	,@Descripcion NVARCHAR(MAX)
	,@IdCategoriaFaq INT
	,@IdUsuario INT
)
AS
BEGIN
	UPDATE Gestion.Faq
	SET Titulo = @Titulo
		,Descripcion = @Descripcion
		,IdCategoriaFaq = @IdCategoriaFaq
		,IdUsuarioActualiza = @IdUsuario
		,FechaActualizacion = GETDATE()
	WHERE IdFaq = @IdFaq
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_Obtener] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_Obtener] --'','',1,1,10,'RazonSocial','asc'
	@Descripcion NVARCHAR(MAX)=''
	,@IdCategoriaFaq INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'Titulo'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdFaq,
			Titulo,
			NombreCategoriaFaq,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdFaq' AND @DireccionOrden = 'desc' THEN  fq.IdFaq END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdFaq' AND @DireccionOrden = 'asc' THEN fq.IdFaq END) ASC,
					(CASE WHEN @ColumnaOrden = 'Titulo' AND @DireccionOrden = 'desc' THEN fq.Titulo END) DESC,
					(CASE WHEN @ColumnaOrden = 'Titulo' AND @DireccionOrden = 'asc' THEN fq.Titulo  END) ASC,
					(CASE WHEN @ColumnaOrden = 'NombreCategoriaFaq' AND @DireccionOrden = 'desc' THEN catFaq.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'NombreCategoriaFaq' AND @DireccionOrden = 'asc' THEN catFaq.Nombre  END) ASC
			) AS Item 
			,fq.IdFaq
			,fq.Titulo
			,catFaq.Nombre NombreCategoriaFaq
			,COUNT(fq.IdFaq) OVER ( )  AS TotalItems 
		FROM Gestion.Faq fq
		INNER JOIN Maestro.CategoriaFaq catFaq ON fq.IdCategoriaFaq = catFaq.IdCategoriaFaq
		WHERE (fq.Titulo LIKE '%' + ISNULL(@Descripcion,'') + '%'
			OR fq.Descripcion LIKE '%' + ISNULL(@Descripcion,'') + '%')
			AND fq.IdCategoriaFaq = CASE @IdCategoriaFaq
								WHEN 0 THEN fq.IdCategoriaFaq
								ELSE @IdCategoriaFaq
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_ObtenerPorId]
	@IdFaq INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Gestion.Faq
	WHERE IdFaq = @IdFaq
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_Registrar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_Registrar] 
(
	@Titulo VARCHAR(250)
	,@Descripcion NVARCHAR(MAX)
	,@IdCategoriaFaq INT
	,@IdUsuario INT
)
AS
BEGIN

	INSERT INTO Gestion.Faq (
		Titulo
		,Descripcion
		,IdCategoriaFaq
		,IdUsuarioRegistra
		,FechaRegistro
		)
	VALUES (
		@Titulo
		,@Descripcion
		,@IdCategoriaFaq
		,@IdUsuario
		,GETDATE()
		)
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_FaqDetalle_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_FaqDetalle_Modificar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_FaqDetalle_Modificar] 
(
	@IdFaqDetalle INT
	,@IdFaq INT
	,@Descripcion NVARCHAR(MAX)
)
AS
BEGIN
	UPDATE Gestion.FaqDetalle
		SET IdFaq = @IdFaq
		,Descripcion = @Descripcion
	WHERE IdFaqDetalle = @IdFaqDetalle
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_FaqDetalle_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_FaqDetalle_Registrar] AS' 
END
GO

ALTER PROCEDURE [Gestion].[usp_FaqDetalle_Registrar] 
(
	@IdFaq INT
	,@Descripcion NVARCHAR(MAX)
)
AS
BEGIN
	INSERT INTO Gestion.FaqDetalle(
		IdFaq
		,Descripcion
		)
	VALUES (
		@IdFaq
		,@Descripcion
		)
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_Modificar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_Modificar] 
(
	@IdIncidencia INT
	,@IdCliente INT
	,@Asunto VARCHAR(500)
	,@IdTipoIncidencia INT
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Gestion.Incidencia
	SET IdCliente = @IdCliente
		,Asunto = @Asunto
		,IdTipoIncidencia = @IdTipoIncidencia
		,IdEstado = @IdEstado
	WHERE IdIncidencia = @IdIncidencia
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_Registrar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_Registrar] 
(
	@IdCliente INT
	,@Asunto VARCHAR(500)
	,@IdTipoIncidencia INT
	,@IdUsuarioRegistra INT
	,@IdEstado INT
)
AS
BEGIN
	INSERT INTO Gestion.Incidencia (
		IdCliente
		,Asunto
		,IdTipoIncidencia
		,IdUsuarioRegistra
		,FechaRegistro
		,IdEstado
		)
	VALUES (
		@IdCliente
		,@Asunto
		,@IdTipoIncidencia
		,@IdUsuarioRegistra
		,GETDATE()
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Area_Combo]
AS
BEGIN
	SELECT IdArea, Nombre FROM Maestro.Area
	WHERE IdEstado = 1
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_Combo]
@IdEstado INT = 1
AS
BEGIN
	SELECT	IdCategoriaFaq, 
			Nombre
	FROM Maestro.CategoriaFaq
	WHERE IdEstado = @IdEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_Eliminar] 
(
	@IdCategoriaFaq INT
)
AS
BEGIN
	DELETE FROM Maestro.CategoriaFaq
	WHERE IdCategoriaFaq = @IdCategoriaFaq
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_Modificar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_Modificar] 
(
	@IdCategoriaFaq INT
	,@Nombre VARCHAR(250)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
	,@IdUsuario INT
)
AS
BEGIN
	UPDATE Maestro.CategoriaFaq
		SET Nombre = @Nombre
		,Observacion = @Observacion
		,IdUsuario = @IdUsuario
		,IdEstado = @IdEstado
	WHERE IdCategoriaFaq = @IdCategoriaFaq
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_Obtener] 
	@Nombre VARCHAR(250)=''
	,@Observacion VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdCategoriaFaq'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdCategoriaFaq,
			Nombre,
			Observacion,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdCategoriaFaq' AND @DireccionOrden = 'desc' THEN  catFaq.IdCategoriaFaq END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdCategoriaFaq' AND @DireccionOrden = 'asc' THEN catFaq.IdCategoriaFaq END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN catFaq.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN catFaq.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN catFaq.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN catFaq.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN catFaq.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN catFaq.IdEstado  END) ASC
			) AS Item 
			,catFaq.IdCategoriaFaq
			,catFaq.Nombre
			,catFaq.Observacion
			,catFaq.IdEstado
			,COUNT(catFaq.IdCategoriaFaq) OVER ( )  AS TotalItems 
		FROM Maestro.CategoriaFaq catFaq
		WHERE catFaq.Nombre LIKE '%' + ISNULL(@Nombre,'') + '%'
			AND catFaq.Observacion LIKE '%' + ISNULL(@Observacion,'') + '%'
			AND catFaq.IdEstado = CASE @IdEstado
								WHEN 0 THEN catFaq.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_ObtenerPorId]
	@IdCategoriaFaq INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.CategoriaFaq
	WHERE IdCategoriaFaq = @IdCategoriaFaq
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_CategoriaFaq_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_CategoriaFaq_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_CategoriaFaq_Registrar] 
(
	@Nombre VARCHAR(250)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
	,@IdUsuario INT
)
AS
BEGIN
	INSERT INTO Maestro.CategoriaFaq (
		Nombre
		,Observacion
		,IdUsuario
		,IdEstado
		,FechaRegistro
		)
	VALUES (
		@Nombre
		,@Observacion
		,@IdUsuario
		,@IdEstado
		,GETDATE()
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_Combo]
@IdEstado INT = 1
AS
BEGIN
	SELECT	IdCliente, 
			NumeroDocumento,
			RazonSocial
	FROM Maestro.Cliente
	WHERE IdEstado = @IdEstado
	ORDER BY RazonSocial
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_Eliminar] 
(
	@IdCliente INT
)
AS
BEGIN
	DELETE FROM Maestro.Cliente
	WHERE IdCliente = @IdCliente
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_Cliente_Modificar] 
(
	@IdCliente INT
	,@NumeroDocumento VARCHAR(20)
	,@RazonSocial VARCHAR(250)
	,@Direccion VARCHAR(250)
	,@IdPais INT
	,@IdUbigeo INT = NULL
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.Cliente
		SET NumeroDocumento = @NumeroDocumento
		,RazonSocial = @RazonSocial
		,Direccion = @Direccion
		,IdPais = @IdPais
		,IdUbigeo = @IdUbigeo
		,IdUsuario = @IdUsuario
		,IdEstado = @IdEstado
	WHERE IdCliente = @IdCliente
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_Obtener] --'','',1,1,10,'RazonSocial','asc'
	@NumeroDocumento VARCHAR(20)=''
	,@RazonSocial VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdCliente'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdCliente,
			NumeroDocumento,
			RazonSocial,
			Direccion,
			IdEstado,
			--Estado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdCliente' AND @DireccionOrden = 'desc' THEN  cli.IdCliente END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdCliente' AND @DireccionOrden = 'asc' THEN cli.IdCliente END) ASC,
					(CASE WHEN @ColumnaOrden = 'NumeroDocumento' AND @DireccionOrden = 'desc' THEN cli.NumeroDocumento END) DESC,
					(CASE WHEN @ColumnaOrden = 'NumeroDocumento' AND @DireccionOrden = 'asc' THEN cli.NumeroDocumento  END) ASC,
					(CASE WHEN @ColumnaOrden = 'RazonSocial' AND @DireccionOrden = 'desc' THEN cli.RazonSocial END) DESC,
					(CASE WHEN @ColumnaOrden = 'RazonSocial' AND @DireccionOrden = 'asc' THEN cli.RazonSocial  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Direccion' AND @DireccionOrden = 'desc' THEN cli.Direccion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Direccion' AND @DireccionOrden = 'asc' THEN cli.Direccion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN cli.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN cli.IdEstado  END) ASC
			) AS Item 
			,cli.IdCliente
			,cli.NumeroDocumento
			,cli.RazonSocial
			,cli.Direccion
			,cli.IdEstado
			--,est.Nombre Estado
			,COUNT(cli.IdCliente) OVER ( )  AS TotalItems 
		FROM Maestro.Cliente cli
		--INNER JOIN Maestro.Estado est ON cli.IdEstado = est.IdEstado
		WHERE cli.NumeroDocumento LIKE '%' + ISNULL(@NumeroDocumento,'') + '%'
			AND cli.RazonSocial LIKE '%' + ISNULL(@RazonSocial,'') + '%'
			AND cli.IdEstado = CASE @IdEstado
								WHEN 0
									THEN cli.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_ObtenerPorId]
	@IdCliente INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.Cliente
	WHERE IdCliente = @IdCliente
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Registrar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_Cliente_Registrar] 
(
	@NumeroDocumento VARCHAR(20)
	,@RazonSocial VARCHAR(250)
	,@Direccion VARCHAR(250)
	,@IdPais INT
	,@IdUbigeo INT = NULL
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
	INSERT INTO Maestro.Cliente (
		NumeroDocumento
		,RazonSocial
		,Direccion
		,IdPais
		,IdUbigeo
		,FechaRegistro
		,IdUsuario
		,IdEstado
		)
	VALUES (
		@NumeroDocumento
		,@RazonSocial
		,@Direccion
		,@IdPais
		,@IdUbigeo
		,GETDATE()
		,@IdUsuario
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Estado_Combo] --1
@IdTipoEstado INT
AS
BEGIN
	SELECT IdEstado, Nombre FROM Maestro.Estado WHERE IdTipoEstado = @IdTipoEstado
	ORDER BY IdEstado
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Motivo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Motivo_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Motivo_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Motivo_Combo]
AS
BEGIN
	SELECT IdMotivo, Nombre FROM Maestro.Motivo
	WHERE IdEstado = 1
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Pais_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Pais_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Pais_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Pais_Combo]
AS
BEGIN
	SELECT IdPais, Nombre FROM Maestro.Pais
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Prioridad_Combo]
AS
BEGIN
	SELECT IdPrioridad, Nombre FROM Maestro.Prioridad
	WHERE IdEstado = 1
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoCorreo_Combo]
AS
BEGIN
	SELECT IdTipoCorreo, Nombre FROM Maestro.TipoCorreo
	WHERE IdEstado = 1
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_Combo] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_TipoEstado_Combo]
AS
BEGIN
	SELECT IdTipoEstado, Nombre FROM Maestro.TipoEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Ubigeo_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Ubigeo_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Ubigeo_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Ubigeo_Combo] --1
@IdPais INT
AS
BEGIN
	--DECLARE @TbDepartamento TABLE (CodigoDepartamento VARCHAR(10), NombreDepartamento VARCHAR(100))
	--INSERT INTO @TbDepartamento
	--SELECT	DISTINCT CodigoDepartamento,
	--		Departamento
	--FROM Maestro.Ubigeo
	--WHERE IdPais = @IdPais

	--SELECT	
	--FROM Maestro.Ubigeo
	SELECT	CodigoDepartamento,
			('Departamento: ' + Departamento) NombreDepartamento,
			IdUbigeo,
			CodigoDepartamento,
			(Provincia + ' - ' + Distrito) NombreUbigeo
	FROM Maestro.Ubigeo
	WHERE IdPais = @IdPais
	ORDER BY Provincia, Distrito

END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Combo]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_Combo] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Rol_Combo]
@IdEstado INT = 1
AS
BEGIN
	SELECT	IdRol,
			Nombre
	FROM Seguridad.Rol
	WHERE IdEstado = @IdEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Eliminar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Rol_Eliminar] 
(
	@IdRol INT
)
AS
BEGIN
	DELETE FROM Seguridad.Rol
	WHERE IdRol = @IdRol
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Modificar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_Modificar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Rol_Modificar]
@IdRol INT,
@Nombre VARCHAR(100),
@Observacion VARCHAR(500) = NULL,
@IdEstado INT
AS
BEGIN
	UPDATE Seguridad.Rol
	SET Nombre = @Nombre, 
		Observacion = @Observacion, 
		IdEstado = @IdEstado
	WHERE IdRol = @IdRol
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Obtener]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_Obtener] AS' 
END
GO

ALTER PROCEDURE [Seguridad].[usp_Rol_Obtener] --'',1,1,10,'Nombre','desc'
	@Nombre VARCHAR(100)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdRol'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdRol,
			Nombre,
			Observacion,
			IdEstado,
			Estado
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdRol' AND @DireccionOrden = 'desc' THEN  ro.IdRol END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdRol' AND @DireccionOrden = 'asc' THEN ro.IdRol END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN ro.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN ro.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN ro.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN ro.Observacion  END) ASC
			) AS Item 
			,ro.IdRol
			,ro.Nombre
			,ro.Observacion
			,ro.IdEstado
			,est.Nombre Estado
		FROM Seguridad.Rol ro
		INNER JOIN Maestro.Estado est ON ro.IdEstado = est.IdEstado
		WHERE ro.Nombre LIKE '%' + ISNULL(@Nombre,'') + '%'
			AND ro.IdEstado = CASE @IdEstado
								WHEN 0
									THEN ro.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_ObtenerPorId]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Rol_ObtenerPorId] --1
	@IdRol INT
AS
BEGIN
	SELECT ro.IdRol
		,ro.Nombre
		,ro.Observacion
		,ro.IdEstado
		,est.Nombre Estado
	FROM Seguridad.Rol ro
	INNER JOIN Maestro.Estado est ON ro.IdEstado = est.IdEstado
	WHERE ro.IdRol = @IdRol
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Registrar]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Rol_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Rol_Registrar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Rol_Registrar]
@IdRol INT,
@Nombre VARCHAR(100),
@Observacion VARCHAR(500) = NULL,
@IdEstado INT
AS
BEGIN
	INSERT INTO Seguridad.Rol(IdRol, Nombre, Observacion, IdEstado)
	VALUES(@IdRol, @Nombre, @Observacion, @IdEstado)
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Login]    Script Date: 29/10/2018 01:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Login] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Login] --'fcochachin','123456'
	@UserName VARCHAR(50)
	,@Contrasenia NVARCHAR(MAX)
AS
BEGIN
	SELECT	usu.IdUsuario,
			usu.UserName,
			usu.Nombre,
			usu.ApellidoPaterno,
			usu.ApellidoMaterno,
			rolUsu.IdRolUsuario,
			rolUsu.IdUsuario,
			rolUsu.IdRol,
			ro.Nombre NombreRol
	FROM Seguridad.Usuario usu
	INNER JOIN Seguridad.RolUsuario rolUsu ON usu.IdUsuario = rolUsu.IdUsuario
	INNER JOIN Seguridad.Rol ro ON rolUsu.IdRol = ro.IdRol
	WHERE usu.UserName = @UserName
		AND usu.Contrasenia = @Contrasenia
		AND usu.IdEstado = 1
		AND usu.Eliminado = 0
		AND rolUsu.IdEstado = 1
		AND ro.IdEstado = 1
END
GO
USE [master]
GO
ALTER DATABASE [Demo] SET  READ_WRITE 
GO
