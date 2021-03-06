/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2016 (13.0.4001)
    SourceDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2008 R2
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/
USE [master]
GO
/****** Object:  Database [Demo]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Demo')
BEGIN
CREATE DATABASE [Demo] ON  PRIMARY 
( NAME = N'Demo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Demo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Demo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
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
USE [Demo]
GO
/****** Object:  Schema [Auditoria]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Auditoria')
EXEC sys.sp_executesql N'CREATE SCHEMA [Auditoria]'
GO
/****** Object:  Schema [Configuracion]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Configuracion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Configuracion]'
GO
/****** Object:  Schema [Gestion]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Gestion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Gestion]'
GO
/****** Object:  Schema [Maestro]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Maestro')
EXEC sys.sp_executesql N'CREATE SCHEMA [Maestro]'
GO
/****** Object:  Schema [Seguimiento]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguimiento')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguimiento]'
GO
/****** Object:  Schema [Seguridad]    Script Date: 15/10/2018 01:24:02 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguridad')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguridad]'
GO
/****** Object:  Table [Configuracion].[Parametro]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [dbo].[Lima]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lima]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lima](
	[Item] [int] NULL,
	[CodigoDepartamento] [nvarchar](255) NULL,
	[CodigoProvincia] [nvarchar](255) NULL,
	[CodigoDistrito] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Provincia] [nvarchar](255) NULL,
	[Distrito] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[Faq]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[Faq]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[Faq](
	[IdFaq] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](250) NULL,
	[IdCategoriaFaq] [int] NULL,
	[IdEstado] [int] NULL,
	[IdUsuarioRegistra] [int] NULL,
	[IdUsuarioActualiza] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[FaqDetalle]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[FaqDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[FaqDetalle](
	[IdFaqDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdFaq] [int] NULL,
	[Descripcion] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[FaqDetalleAdjunto]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[FaqDetalleAdjunto]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[FaqDetalleAdjunto](
	[IdFaqDetalleAdjunto] [int] IDENTITY(1,1) NOT NULL,
	[IdFaqDetalle] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[NombreArchivo] [varchar](250) NULL,
	[Extension] [varchar](100) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[Incidencia]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Gestion].[IncidenciaDetalle]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[IncidenciaDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [Gestion].[IncidenciaDetalle](
	[IdIncidenciaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdIncidencia] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[IncidenciaDetalleAdjunto]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[Area]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[CategoriaFaq]    Script Date: 15/10/2018 01:24:02 ******/
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
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Cliente]    Script Date: 15/10/2018 01:24:02 ******/
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
	[IdDepartamento] [int] NULL,
	[IdProvincia] [int] NULL,
	[IdDistrito] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Contacto]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Contacto]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Contacto](
	[IdContacto] [int] NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Apellido] [varchar](250) NULL,
	[Correo] [varchar](250) NULL,
	[Telefono] [varchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Departamento]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Departamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](20) NULL,
	[IdPais] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Distrito]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Distrito]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Distrito](
	[IdDistrito] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](20) NULL,
	[IdProvincia] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Estado]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[Motivo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[Pais]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[Prioridad]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[Provincia]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[Provincia]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[Provincia](
	[IdProvincia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](20) NULL,
	[IdDepartamento] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[TipoCorreo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[TipoEstado]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Maestro].[TipoIncidencia]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Seguimiento].[Correo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Seguridad].[Rol]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Seguridad].[RolUsuario]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  Table [Seguridad].[Usuario]    Script Date: 15/10/2018 01:24:02 ******/
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
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (1, N'14', N'01', N'01', N'LIMA', N'LIMA', N'LIMA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (2, N'14', N'01', N'02', N'LIMA', N'LIMA', N'ANCON')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (3, N'14', N'01', N'03', N'LIMA', N'LIMA', N'ATE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (4, N'14', N'01', N'04', N'LIMA', N'LIMA', N'BREÑA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (5, N'14', N'01', N'05', N'LIMA', N'LIMA', N'CARABAYLLO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (6, N'14', N'01', N'06', N'LIMA', N'LIMA', N'COMAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (7, N'14', N'01', N'07', N'LIMA', N'LIMA', N'CHACLACAYO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (8, N'14', N'01', N'08', N'LIMA', N'LIMA', N'CHORRILLOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (9, N'14', N'01', N'09', N'LIMA', N'LIMA', N'LA VICTORIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (10, N'14', N'01', N'10', N'LIMA', N'LIMA', N'LA MOLINA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (11, N'14', N'01', N'11', N'LIMA', N'LIMA', N'LINCE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (12, N'14', N'01', N'12', N'LIMA', N'LIMA', N'LURIGANCHO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (13, N'14', N'01', N'13', N'LIMA', N'LIMA', N'LURIN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (14, N'14', N'01', N'14', N'LIMA', N'LIMA', N'MAGDALENA DEL MAR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (15, N'14', N'01', N'15', N'LIMA', N'LIMA', N'MIRAFLORES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (16, N'14', N'01', N'16', N'LIMA', N'LIMA', N'PACHACAMAC')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (17, N'14', N'01', N'17', N'LIMA', N'LIMA', N'PUEBLO LIBRE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (18, N'14', N'01', N'18', N'LIMA', N'LIMA', N'PUCUSANA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (19, N'14', N'01', N'19', N'LIMA', N'LIMA', N'PUENTE PIEDRA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (20, N'14', N'01', N'20', N'LIMA', N'LIMA', N'PUNTA HERMOSA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (21, N'14', N'01', N'21', N'LIMA', N'LIMA', N'PUNTA NEGRA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (22, N'14', N'01', N'22', N'LIMA', N'LIMA', N'RIMAC')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (23, N'14', N'01', N'23', N'LIMA', N'LIMA', N'SAN BARTOLO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (24, N'14', N'01', N'24', N'LIMA', N'LIMA', N'SAN ISIDRO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (25, N'14', N'01', N'25', N'LIMA', N'LIMA', N'BARRANCO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (26, N'14', N'01', N'26', N'LIMA', N'LIMA', N'SAN MARTIN DE PORRES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (27, N'14', N'01', N'27', N'LIMA', N'LIMA', N'SAN MIGUEL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (28, N'14', N'01', N'28', N'LIMA', N'LIMA', N'SANTA MARIA DEL MAR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (29, N'14', N'01', N'29', N'LIMA', N'LIMA', N'SANTA ROSA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (30, N'14', N'01', N'30', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (31, N'14', N'01', N'31', N'LIMA', N'LIMA', N'SURQUILLO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (32, N'14', N'01', N'32', N'LIMA', N'LIMA', N'VILLA MARIA DEL TRIUNFO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (33, N'14', N'01', N'33', N'LIMA', N'LIMA', N'JESUS MARIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (34, N'14', N'01', N'34', N'LIMA', N'LIMA', N'INDEPENDENCIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (35, N'14', N'01', N'35', N'LIMA', N'LIMA', N'EL AGUSTINO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (36, N'14', N'01', N'36', N'LIMA', N'LIMA', N'SAN JUAN DE MIRAFLORES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (37, N'14', N'01', N'37', N'LIMA', N'LIMA', N'SAN JUAN DE LURIGANCHO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (38, N'14', N'01', N'38', N'LIMA', N'LIMA', N'SAN LUIS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (39, N'14', N'01', N'39', N'LIMA', N'LIMA', N'CIENEGUILLA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (40, N'14', N'01', N'40', N'LIMA', N'LIMA', N'SAN BORJA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (41, N'14', N'01', N'41', N'LIMA', N'LIMA', N'VILLA EL SALVADOR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (42, N'14', N'01', N'42', N'LIMA', N'LIMA', N'LOS OLIVOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (43, N'14', N'01', N'43', N'LIMA', N'LIMA', N'SANTA ANITA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (44, N'14', N'02', N'01', N'LIMA', N'CAJATAMBO', N'CAJATAMBO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (45, N'14', N'02', N'05', N'LIMA', N'CAJATAMBO', N'COPA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (46, N'14', N'02', N'06', N'LIMA', N'CAJATAMBO', N'GORGOR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (47, N'14', N'02', N'07', N'LIMA', N'CAJATAMBO', N'HUANCAPON')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (48, N'14', N'02', N'08', N'LIMA', N'CAJATAMBO', N'MANAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (49, N'14', N'03', N'01', N'LIMA', N'CANTA', N'CANTA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (50, N'14', N'03', N'02', N'LIMA', N'CANTA', N'ARAHUAY')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (51, N'14', N'03', N'03', N'LIMA', N'CANTA', N'HUAMANTANGA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (52, N'14', N'03', N'04', N'LIMA', N'CANTA', N'HUAROS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (53, N'14', N'03', N'05', N'LIMA', N'CANTA', N'LACHAQUI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (54, N'14', N'03', N'06', N'LIMA', N'CANTA', N'SAN BUENAVENTURA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (55, N'14', N'03', N'07', N'LIMA', N'CANTA', N'SANTA ROSA DE QUIVES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (56, N'14', N'04', N'01', N'LIMA', N'CAÑETE', N'SAN VICENTE DE CAÑETE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (57, N'14', N'04', N'02', N'LIMA', N'CAÑETE', N'CALANGO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (58, N'14', N'04', N'03', N'LIMA', N'CAÑETE', N'CERRO AZUL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (59, N'14', N'04', N'04', N'LIMA', N'CAÑETE', N'COAYLLO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (60, N'14', N'04', N'05', N'LIMA', N'CAÑETE', N'CHILCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (61, N'14', N'04', N'06', N'LIMA', N'CAÑETE', N'IMPERIAL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (62, N'14', N'04', N'07', N'LIMA', N'CAÑETE', N'LUNAHUANA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (63, N'14', N'04', N'08', N'LIMA', N'CAÑETE', N'MALA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (64, N'14', N'04', N'09', N'LIMA', N'CAÑETE', N'NUEVO IMPERIAL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (65, N'14', N'04', N'10', N'LIMA', N'CAÑETE', N'PACARAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (66, N'14', N'04', N'11', N'LIMA', N'CAÑETE', N'QUILMANA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (67, N'14', N'04', N'12', N'LIMA', N'CAÑETE', N'SAN ANTONIO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (68, N'14', N'04', N'13', N'LIMA', N'CAÑETE', N'SAN LUIS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (69, N'14', N'04', N'14', N'LIMA', N'CAÑETE', N'SANTA CRUZ DE FLORES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (70, N'14', N'04', N'15', N'LIMA', N'CAÑETE', N'ZUÑIGA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (71, N'14', N'04', N'16', N'LIMA', N'CAÑETE', N'ASIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (72, N'14', N'05', N'01', N'LIMA', N'HUAURA', N'HUACHO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (73, N'14', N'05', N'02', N'LIMA', N'HUAURA', N'AMBAR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (74, N'14', N'05', N'04', N'LIMA', N'HUAURA', N'CALETA DE CARQUIN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (75, N'14', N'05', N'05', N'LIMA', N'HUAURA', N'CHECRAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (76, N'14', N'05', N'06', N'LIMA', N'HUAURA', N'HUALMAY')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (77, N'14', N'05', N'07', N'LIMA', N'HUAURA', N'HUAURA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (78, N'14', N'05', N'08', N'LIMA', N'HUAURA', N'LEONCIO PRADO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (79, N'14', N'05', N'09', N'LIMA', N'HUAURA', N'PACCHO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (80, N'14', N'05', N'11', N'LIMA', N'HUAURA', N'SANTA LEONOR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (81, N'14', N'05', N'12', N'LIMA', N'HUAURA', N'SANTA MARIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (82, N'14', N'05', N'13', N'LIMA', N'HUAURA', N'SAYAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (83, N'14', N'05', N'16', N'LIMA', N'HUAURA', N'VEGUETA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (84, N'14', N'06', N'01', N'LIMA', N'HUAROCHIRI', N'MATUCANA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (85, N'14', N'06', N'02', N'LIMA', N'HUAROCHIRI', N'ANTIOQUIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (86, N'14', N'06', N'03', N'LIMA', N'HUAROCHIRI', N'CALLAHUANCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (87, N'14', N'06', N'04', N'LIMA', N'HUAROCHIRI', N'CARAMPOMA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (88, N'14', N'06', N'05', N'LIMA', N'HUAROCHIRI', N'CASTA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (89, N'14', N'06', N'06', N'LIMA', N'HUAROCHIRI', N'SAN JOSE DE LOS CHORRILLOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (90, N'14', N'06', N'07', N'LIMA', N'HUAROCHIRI', N'CHICLA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (91, N'14', N'06', N'08', N'LIMA', N'HUAROCHIRI', N'HUANZA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (92, N'14', N'06', N'09', N'LIMA', N'HUAROCHIRI', N'HUAROCHIRI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (93, N'14', N'06', N'10', N'LIMA', N'HUAROCHIRI', N'LAHUAYTAMBO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (94, N'14', N'06', N'11', N'LIMA', N'HUAROCHIRI', N'LANGA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (95, N'14', N'06', N'12', N'LIMA', N'HUAROCHIRI', N'MARIATANA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (96, N'14', N'06', N'13', N'LIMA', N'HUAROCHIRI', N'RICARDO PALMA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (97, N'14', N'06', N'14', N'LIMA', N'HUAROCHIRI', N'SAN ANDRES DE TUPICOCHA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (98, N'14', N'06', N'15', N'LIMA', N'HUAROCHIRI', N'SAN ANTONIO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (99, N'14', N'06', N'16', N'LIMA', N'HUAROCHIRI', N'SAN BARTOLOME')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (100, N'14', N'06', N'17', N'LIMA', N'HUAROCHIRI', N'SAN DAMIAN')
GO
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (101, N'14', N'06', N'18', N'LIMA', N'HUAROCHIRI', N'SANGALLAYA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (102, N'14', N'06', N'19', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE TANTARANCHE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (103, N'14', N'06', N'20', N'LIMA', N'HUAROCHIRI', N'SAN LORENZO DE QUINTI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (104, N'14', N'06', N'21', N'LIMA', N'HUAROCHIRI', N'SAN MATEO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (105, N'14', N'06', N'22', N'LIMA', N'HUAROCHIRI', N'SAN MATEO DE OTAO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (106, N'14', N'06', N'23', N'LIMA', N'HUAROCHIRI', N'SAN PEDRO DE HUANCAYRE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (107, N'14', N'06', N'24', N'LIMA', N'HUAROCHIRI', N'SANTA CRUZ DE COCACHACRA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (108, N'14', N'06', N'25', N'LIMA', N'HUAROCHIRI', N'SANTA EULALIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (109, N'14', N'06', N'26', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE ANCHUCAYA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (110, N'14', N'06', N'27', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE TUNA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (111, N'14', N'06', N'28', N'LIMA', N'HUAROCHIRI', N'SANTO DOMINGO DE LOS OLLEROS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (112, N'14', N'06', N'29', N'LIMA', N'HUAROCHIRI', N'SURCO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (113, N'14', N'06', N'30', N'LIMA', N'HUAROCHIRI', N'HUACHUPAMPA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (114, N'14', N'06', N'31', N'LIMA', N'HUAROCHIRI', N'LARAOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (115, N'14', N'06', N'32', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE IRIS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (116, N'14', N'07', N'01', N'LIMA', N'YAUYOS', N'YAUYOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (117, N'14', N'07', N'02', N'LIMA', N'YAUYOS', N'ALIS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (118, N'14', N'07', N'03', N'LIMA', N'YAUYOS', N'ALLAUCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (119, N'14', N'07', N'04', N'LIMA', N'YAUYOS', N'AYAVIRI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (120, N'14', N'07', N'05', N'LIMA', N'YAUYOS', N'AZANGARO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (121, N'14', N'07', N'06', N'LIMA', N'YAUYOS', N'CACRA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (122, N'14', N'07', N'07', N'LIMA', N'YAUYOS', N'CARANIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (123, N'14', N'07', N'08', N'LIMA', N'YAUYOS', N'COCHAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (124, N'14', N'07', N'09', N'LIMA', N'YAUYOS', N'COLONIA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (125, N'14', N'07', N'10', N'LIMA', N'YAUYOS', N'CHOCOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (126, N'14', N'07', N'11', N'LIMA', N'YAUYOS', N'HUAMPARA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (127, N'14', N'07', N'12', N'LIMA', N'YAUYOS', N'HUANCAYA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (128, N'14', N'07', N'13', N'LIMA', N'YAUYOS', N'HUANGASCAR')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (129, N'14', N'07', N'14', N'LIMA', N'YAUYOS', N'HUANTAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (130, N'14', N'07', N'15', N'LIMA', N'YAUYOS', N'HUAÑEC')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (131, N'14', N'07', N'16', N'LIMA', N'YAUYOS', N'LARAOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (132, N'14', N'07', N'17', N'LIMA', N'YAUYOS', N'LINCHA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (133, N'14', N'07', N'18', N'LIMA', N'YAUYOS', N'MIRAFLORES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (134, N'14', N'07', N'19', N'LIMA', N'YAUYOS', N'OMAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (135, N'14', N'07', N'20', N'LIMA', N'YAUYOS', N'QUINCHES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (136, N'14', N'07', N'21', N'LIMA', N'YAUYOS', N'QUINOCAY')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (137, N'14', N'07', N'22', N'LIMA', N'YAUYOS', N'SAN JOAQUIN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (138, N'14', N'07', N'23', N'LIMA', N'YAUYOS', N'SAN PEDRO DE PILAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (139, N'14', N'07', N'24', N'LIMA', N'YAUYOS', N'TANTA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (140, N'14', N'07', N'25', N'LIMA', N'YAUYOS', N'TAURIPAMPA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (141, N'14', N'07', N'26', N'LIMA', N'YAUYOS', N'TUPE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (142, N'14', N'07', N'27', N'LIMA', N'YAUYOS', N'TOMAS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (143, N'14', N'07', N'28', N'LIMA', N'YAUYOS', N'VIÑAC')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (144, N'14', N'07', N'29', N'LIMA', N'YAUYOS', N'VITIS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (145, N'14', N'07', N'30', N'LIMA', N'YAUYOS', N'HONGOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (146, N'14', N'07', N'31', N'LIMA', N'YAUYOS', N'MADEAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (147, N'14', N'07', N'32', N'LIMA', N'YAUYOS', N'PUTINZA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (148, N'14', N'07', N'33', N'LIMA', N'YAUYOS', N'CATAHUASI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (149, N'14', N'08', N'01', N'LIMA', N'HUARAL', N'HUARAL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (150, N'14', N'08', N'02', N'LIMA', N'HUARAL', N'ATAVILLOS ALTO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (151, N'14', N'08', N'03', N'LIMA', N'HUARAL', N'ATAVILLOS BAJO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (152, N'14', N'08', N'04', N'LIMA', N'HUARAL', N'AUCALLAMA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (153, N'14', N'08', N'05', N'LIMA', N'HUARAL', N'CHANCAY')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (154, N'14', N'08', N'06', N'LIMA', N'HUARAL', N'IHUARI')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (155, N'14', N'08', N'07', N'LIMA', N'HUARAL', N'LAMPIAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (156, N'14', N'08', N'08', N'LIMA', N'HUARAL', N'PACARAOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (157, N'14', N'08', N'09', N'LIMA', N'HUARAL', N'SAN MIGUEL DE ACOS')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (158, N'14', N'08', N'10', N'LIMA', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (159, N'14', N'08', N'11', N'LIMA', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (160, N'14', N'08', N'12', N'LIMA', N'HUARAL', N'SUMBILCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (161, N'14', N'09', N'01', N'LIMA', N'BARRANCA', N'BARRANCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (162, N'14', N'09', N'02', N'LIMA', N'BARRANCA', N'PARAMONGA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (163, N'14', N'09', N'03', N'LIMA', N'BARRANCA', N'PATIVILCA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (164, N'14', N'09', N'04', N'LIMA', N'BARRANCA', N'SUPE')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (165, N'14', N'09', N'05', N'LIMA', N'BARRANCA', N'SUPE PUERTO')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (166, N'14', N'10', N'01', N'LIMA', N'OYON', N'OYON')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (167, N'14', N'10', N'02', N'LIMA', N'OYON', N'NAVAN')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (168, N'14', N'10', N'03', N'LIMA', N'OYON', N'CAUJUL')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (169, N'14', N'10', N'04', N'LIMA', N'OYON', N'ANDAJES')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (170, N'14', N'10', N'05', N'LIMA', N'OYON', N'PACHANGARA')
INSERT [dbo].[Lima] ([Item], [CodigoDepartamento], [CodigoProvincia], [CodigoDistrito], [Departamento], [Provincia], [Distrito]) VALUES (171, N'14', N'10', N'06', N'LIMA', N'OYON', N'COCHAMARCA')
SET IDENTITY_INSERT [Maestro].[Cliente] ON 

INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1, N'11111111111', N'Frank1', N'Avenida Los Olivos', 1, 1, 1, 1, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (2, N'22222222222', N'Frank2', N'Jiron Los Olivos', 1, 1, 1, 1, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1001, N'2545257', N'ffewfewfweff', N'qwfqwfqw', 1, 1, 1, 1, CAST(N'2018-10-13T12:03:15.640' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1002, N'727272782', N'trjrhrjsejwj', N'trjerjetjejerj', 1, 1, 1, 1, CAST(N'2018-10-13T12:04:29.817' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1003, N'82828723', N'sdggasga', N'ggqwgwqgqwg', 1, 1, 1, 1, CAST(N'2018-10-13T12:05:27.863' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1004, N'2872872872', N'sgegewg', N'egewgewg', 1, 1, 1, 1, CAST(N'2018-10-13T12:06:53.560' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1005, N'7838723872', N'sbewbwq', N'qbqwqbwq', 1, 1, 1, 1, CAST(N'2018-10-13T12:07:38.920' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1006, N'7827832783', N'egewgw', N'egewg', 1, 1, 1, 1, CAST(N'2018-10-13T12:18:25.700' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1007, N'7827832783', N'egewgw', N'egewg', 1, 1, 1, 1, CAST(N'2018-10-13T12:18:58.353' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1008, N'57272', N'ERGERE', N'SVWEB', 1, 1, 1, 1, CAST(N'2018-10-13T12:19:18.663' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1009, N'7527832873', N'BREVWB', N'WQVvqw', 1, 1, 1, 1, CAST(N'2018-10-13T12:20:40.130' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1010, N'5876786', N'HRWEEEBE', N'EWBEWBE', 1, 1, 1, 1, CAST(N'2018-10-13T12:23:21.213' AS DateTime), 1, 1)
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdDepartamento], [IdProvincia], [IdDistrito], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1011, N'12345678901', N'razon13', N'direccion13', 1, 1, 1, 1, CAST(N'2018-10-13T22:54:14.990' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Maestro].[Cliente] OFF
SET IDENTITY_INSERT [Maestro].[Departamento] ON 

INSERT [Maestro].[Departamento] ([IdDepartamento], [Nombre], [Codigo], [IdPais]) VALUES (1, N'Lima', N'01', 1)
SET IDENTITY_INSERT [Maestro].[Departamento] OFF
SET IDENTITY_INSERT [Maestro].[Distrito] ON 

INSERT [Maestro].[Distrito] ([IdDistrito], [Nombre], [Codigo], [IdProvincia]) VALUES (1, N'Los Olivos', N'39', 1)
INSERT [Maestro].[Distrito] ([IdDistrito], [Nombre], [Codigo], [IdProvincia]) VALUES (1001, N'Cercado', N'15', 1)
INSERT [Maestro].[Distrito] ([IdDistrito], [Nombre], [Codigo], [IdProvincia]) VALUES (1002, N'Independencia', N'25', 1)
SET IDENTITY_INSERT [Maestro].[Distrito] OFF
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (1, N'Activo', NULL, 1)
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (2, N'Inactivo', NULL, 1)
SET IDENTITY_INSERT [Maestro].[Pais] ON 

INSERT [Maestro].[Pais] ([IdPais], [Nombre], [Codigo]) VALUES (1, N'Perú', N'51')
SET IDENTITY_INSERT [Maestro].[Pais] OFF
SET IDENTITY_INSERT [Maestro].[Provincia] ON 

INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1, N'LIMA', N'01', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1001, N'BARRANCA', N'09', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1002, N'CAJATAMBO', N'02', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1003, N'CANTA', N'03', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1004, N'CAÑETE', N'04', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1005, N'HUARAL', N'08', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1006, N'HUAROCHIRI', N'06', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1007, N'HUAURA', N'05', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1008, N'OYON', N'10', 1)
INSERT [Maestro].[Provincia] ([IdProvincia], [Nombre], [Codigo], [IdDepartamento]) VALUES (1009, N'YAUYOS', N'07', 1)
SET IDENTITY_INSERT [Maestro].[Provincia] OFF
INSERT [Maestro].[TipoEstado] ([IdTipoEstado], [Nombre], [Observacion]) VALUES (1, N'Maestros', N'Usado para los mantenimientos en general')
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Administrador Sistema', NULL, 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Ventas', NULL, 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Contabilidad', N'Nada por aca', 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (4, N'Nuevo Rol', N'Nueva Observacion', 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (5, N'Nuevo Rol 5', NULL, 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (6, N'Nuevo Rol 6', NULL, 1)
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (7, N'Nuevo Rol 7 Modificado', N'Nueva Descripcion', 1)
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (1, 1, 1, 1)
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (2, 2, 1, 1)
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Eliminado], [IdEstado]) VALUES (1, N'fcochachin', N'123456', N'Frank', N'Cochachin', N'Quito', 0, 1)
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
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Modificar]    Script Date: 15/10/2018 01:24:02 ******/
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
	,@IdCategoriaFaq INT
	,@IdEstado INT
	,@IdUsuarioActualiza INT
)
AS
BEGIN
	UPDATE Gestion.Faq
	SET Titulo = @Titulo
		,IdCategoriaFaq = @IdCategoriaFaq
		,IdEstado = @IdEstado
		,IdUsuarioActualiza = @IdUsuarioActualiza
		,FechaActualizacion = GETDATE()
	WHERE IdFaq = @IdFaq
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Registrar]    Script Date: 15/10/2018 01:24:02 ******/
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
	,@IdCategoriaFaq INT
	,@IdEstado INT
	,@IdUsuarioRegistra INT
)
AS
BEGIN
	INSERT INTO Gestion.Faq (
		Titulo
		,IdCategoriaFaq
		,IdEstado
		,IdUsuarioRegistra
		,FechaRegistro
		)
	VALUES (
		@Titulo
		,@IdCategoriaFaq
		,@IdEstado
		,@IdUsuarioRegistra
		,GETDATE()
		)
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Modificar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Registrar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Modificar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Registrar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Area_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Modificar]    Script Date: 15/10/2018 01:24:02 ******/
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
	,@IdDepartamento INT = NULL
	,@IdProvincia INT = NULL
	,@IdDistrito INT = NULL
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
		,IdDepartamento = @IdDepartamento
		,IdProvincia = @IdProvincia
		,IdDistrito = @IdDistrito
		,IdUsuario = @IdUsuario
		,IdEstado = @IdEstado
	WHERE IdCliente = @IdCliente
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Obtener]    Script Date: 15/10/2018 01:24:02 ******/
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
			Estado,
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
					(CASE WHEN @ColumnaOrden = 'Direccion' AND @DireccionOrden = 'asc' THEN cli.Direccion  END) ASC
			) AS Item 
			,cli.IdCliente
			,cli.NumeroDocumento
			,cli.RazonSocial
			,cli.Direccion
			,cli.IdEstado
			,est.Nombre Estado
			,COUNT(cli.IdCliente) OVER ( )  AS TotalItems 
		FROM Maestro.Cliente cli
		INNER JOIN Maestro.Estado est ON cli.IdEstado = est.IdEstado
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ObtenerPorId]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Registrar]    Script Date: 15/10/2018 01:24:02 ******/
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
	,@IdDepartamento INT = NULL
	,@IdProvincia INT = NULL
	,@IdDistrito INT = NULL
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
		,IdDepartamento
		,IdProvincia
		,IdDistrito
		,FechaRegistro
		,IdUsuario
		,IdEstado
		)
	VALUES (
		@NumeroDocumento
		,@RazonSocial
		,@Direccion
		,@IdPais
		,@IdDepartamento
		,@IdProvincia
		,@IdDistrito
		,GETDATE()
		,@IdUsuario
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Departamento_Combo]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Departamento_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Departamento_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Departamento_Combo]
@IdPais INT
AS
BEGIN
	SELECT IdDepartamento, Nombre FROM Maestro.Departamento
	WHERE IdPais = @IdPais
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Distrito_Combo]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Distrito_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Distrito_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Distrito_Combo]
@IdProvincia INT
AS
BEGIN
	SELECT IdDistrito, Nombre FROM Maestro.Distrito
	WHERE IdProvincia = @IdProvincia
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Motivo_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Pais_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Provincia_Combo]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Provincia_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Provincia_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Provincia_Combo]
@IdDepartamento INT
AS
BEGIN
	SELECT IdProvincia, Nombre FROM Maestro.Provincia
	WHERE IdDepartamento = @IdDepartamento
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Combo]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Modificar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Obtener]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_ObtenerPorId]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Registrar]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Login]    Script Date: 15/10/2018 01:24:02 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Login2]    Script Date: 15/10/2018 01:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Login2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Login2] AS' 
END
GO

ALTER PROCEDURE [Seguridad].[usp_Usuario_Login2] --'fcochachin','123456'
	@UserName VARCHAR(50)
	,@Contrasenia NVARCHAR(MAX)
AS
BEGIN
	SELECT	usu.IdUsuario,
			usu.UserName,
			usu.Nombre,
			usu.ApellidoPaterno,
			usu.ApellidoMaterno	
	FROM Seguridad.Usuario usu
	WHERE usu.UserName = @UserName
		AND usu.Contrasenia = @Contrasenia
		AND usu.IdEstado = 1
		AND usu.Eliminado = 0
	SELECT	rolUsu.IdRolUsuario,
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
