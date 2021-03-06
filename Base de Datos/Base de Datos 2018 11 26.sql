/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2016 (13.0.4001)
    SourceDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2012
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/

USE [master]
GO
/****** Object:  Database [DB_A25F3D_HelpDesk]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'DB_A25F3D_HelpDesk')
BEGIN
CREATE DATABASE [DB_A25F3D_HelpDesk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_A25F3D_HelpDesk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A25F3D_HelpDesk.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_A25F3D_HelpDesk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A25F3D_HelpDesk_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_A25F3D_HelpDesk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET  MULTI_USER 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [DB_A25F3D_HelpDesk]
GO
/****** Object:  Schema [Asignacion]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Asignacion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Asignacion]'
GO
/****** Object:  Schema [Auditoria]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Auditoria')
EXEC sys.sp_executesql N'CREATE SCHEMA [Auditoria]'
GO
/****** Object:  Schema [Configuracion]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Configuracion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Configuracion]'
GO
/****** Object:  Schema [Gestion]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Gestion')
EXEC sys.sp_executesql N'CREATE SCHEMA [Gestion]'
GO
/****** Object:  Schema [Maestro]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Maestro')
EXEC sys.sp_executesql N'CREATE SCHEMA [Maestro]'
GO
/****** Object:  Schema [Seguimiento]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguimiento')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguimiento]'
GO
/****** Object:  Schema [Seguridad]    Script Date: 26/11/2018 01:29:17 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Seguridad')
EXEC sys.sp_executesql N'CREATE SCHEMA [Seguridad]'
GO
/****** Object:  Table [Asignacion].[AreaUsuario]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[AreaUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [Asignacion].[AreaUsuario](
	[IdAreaUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdArea] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Asignacion].[RolUsuario]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[RolUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [Asignacion].[RolUsuario](
	[IdRolUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Asignacion].[UsuarioCliente]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[UsuarioCliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [Asignacion].[UsuarioCliente](
	[IdUsuarioCliente] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdCliente] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Configuracion].[Parametro]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Gestion].[Faq]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Gestion].[FaqAdjunto]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Gestion].[Incidencia]    Script Date: 26/11/2018 01:29:17 ******/
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
	[IdPrioridad] [int] NULL,
	[IdEstado] [int] NULL,
	[IdUsuarioRegistra] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioFinaliza] [int] NULL,
	[FechaFinalizacion] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[IncidenciaDetalle]    Script Date: 26/11/2018 01:29:17 ******/
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
	[IdArea] [int] NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Gestion].[IncidenciaDetalleAdjunto]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[Area]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[CategoriaFaq]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[Cliente]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[Contacto]    Script Date: 26/11/2018 01:29:17 ******/
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
	[IdCliente] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Estado]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[Pais]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[Prioridad]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[TipoCorreo]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[TipoEstado]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Maestro].[TipoIncidencia]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[TipoIncidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [Maestro].[TipoIncidencia](
	[IdTipoIncidencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Observacion] [varchar](500) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Maestro].[Ubigeo]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Seguimiento].[Correo]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Seguridad].[Acceso]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[Acceso]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[Acceso](
	[IdAcceso] [bigint] IDENTITY(1,1) NOT NULL,
	[IdAccesoPadre] [bigint] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Url] [varchar](200) NULL,
	[Icono] [varchar](50) NULL,
	[Orden] [int] NULL,
	[Tipo] [varchar](20) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[AccesoRol]    Script Date: 26/11/2018 01:29:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[AccesoRol]') AND type in (N'U'))
BEGIN
CREATE TABLE [Seguridad].[AccesoRol](
	[IdAccesoRol] [bigint] IDENTITY(1,1) NOT NULL,
	[IdAcceso] [bigint] NULL,
	[IdRol] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Seguridad].[Rol]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Seguridad].[RolUsuario]    Script Date: 26/11/2018 01:29:17 ******/
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
/****** Object:  Table [Seguridad].[Usuario]    Script Date: 26/11/2018 01:29:17 ******/
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
	[IdEstado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [Asignacion].[AreaUsuario] ON 
GO
INSERT [Asignacion].[AreaUsuario] ([IdAreaUsuario], [IdArea], [IdUsuario], [IdEstado]) VALUES (1, 2, 1, 1)
GO
INSERT [Asignacion].[AreaUsuario] ([IdAreaUsuario], [IdArea], [IdUsuario], [IdEstado]) VALUES (2, 2, 3, 1)
GO
INSERT [Asignacion].[AreaUsuario] ([IdAreaUsuario], [IdArea], [IdUsuario], [IdEstado]) VALUES (3, 2, 4, 1)
GO
INSERT [Asignacion].[AreaUsuario] ([IdAreaUsuario], [IdArea], [IdUsuario], [IdEstado]) VALUES (4, 2, 2, 1)
GO
SET IDENTITY_INSERT [Asignacion].[AreaUsuario] OFF
GO
SET IDENTITY_INSERT [Asignacion].[RolUsuario] ON 
GO
INSERT [Asignacion].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (1, 1, 1, 1)
GO
SET IDENTITY_INSERT [Asignacion].[RolUsuario] OFF
GO
SET IDENTITY_INSERT [Asignacion].[UsuarioCliente] ON 
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (1, 1, 3013, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (4, 1, 5012, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (8, 2, 3014, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (9, 2, 4012, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (5, 1, 5013, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (6, 1, 1011, 1)
GO
INSERT [Asignacion].[UsuarioCliente] ([IdUsuarioCliente], [IdUsuario], [IdCliente], [IdEstado]) VALUES (7, 1, 3012, 1)
GO
SET IDENTITY_INSERT [Asignacion].[UsuarioCliente] OFF
GO
SET IDENTITY_INSERT [Gestion].[Faq] ON 
GO
INSERT [Gestion].[Faq] ([IdFaq], [Titulo], [Descripcion], [IdCategoriaFaq], [IdUsuarioRegistra], [IdUsuarioActualiza], [FechaRegistro], [FechaActualizacion]) VALUES (5, N'Pruebas 1', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 1, 1, 0, CAST(N'2018-11-07T15:15:30.193' AS DateTime), CAST(N'2018-11-15T00:37:19.353' AS DateTime))
GO
INSERT [Gestion].[Faq] ([IdFaq], [Titulo], [Descripcion], [IdCategoriaFaq], [IdUsuarioRegistra], [IdUsuarioActualiza], [FechaRegistro], [FechaActualizacion]) VALUES (6, N'Pruebas 3', N'descripcion 2', 2, 1, 0, CAST(N'2018-11-07T16:16:50.963' AS DateTime), CAST(N'2018-11-11T13:22:14.593' AS DateTime))
GO
INSERT [Gestion].[Faq] ([IdFaq], [Titulo], [Descripcion], [IdCategoriaFaq], [IdUsuarioRegistra], [IdUsuarioActualiza], [FechaRegistro], [FechaActualizacion]) VALUES (9, N'Nuevo', N'<h2 style="margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; background-color: rgb(255, 255, 255);">What is Lorem Ipsum?</h2><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px;">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, 0, CAST(N'2018-11-16T00:51:48.793' AS DateTime), CAST(N'2018-11-16T00:53:48.730' AS DateTime))
GO
INSERT [Gestion].[Faq] ([IdFaq], [Titulo], [Descripcion], [IdCategoriaFaq], [IdUsuarioRegistra], [IdUsuarioActualiza], [FechaRegistro], [FechaActualizacion]) VALUES (8, N'Pruebas 2', N'c5t6yy6v7yvu7v', 1, 1, 0, CAST(N'2018-11-07T18:42:30.670' AS DateTime), CAST(N'2018-11-11T13:21:42.193' AS DateTime))
GO
SET IDENTITY_INSERT [Gestion].[Faq] OFF
GO
SET IDENTITY_INSERT [Gestion].[Incidencia] ON 
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (1, 5012, N'ASUNTO 1', 1, 1, 3, 1, CAST(N'2018-11-13T14:21:05.267' AS DateTime), 1, CAST(N'2018-11-14T17:58:54.313' AS DateTime))
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (2, 5013, N'Asunto 2', 1, 1, 5, 1, CAST(N'2018-11-13T14:33:09.397' AS DateTime), 1, CAST(N'2018-11-14T18:23:12.153' AS DateTime))
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (3, 5012, N'Nuevo dato', 1, 1, 6, 1, CAST(N'2018-11-14T18:26:09.193' AS DateTime), 1, CAST(N'2018-11-14T18:27:08.573' AS DateTime))
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (4, 5012, N'Otra Incidencia', 2, 1, 6, 1, CAST(N'2018-11-14T18:35:31.997' AS DateTime), 1, CAST(N'2018-11-14T21:01:37.470' AS DateTime))
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (1002, 5012, N'Nueva Incidencia', 2, 1, 3, 1, CAST(N'2018-11-16T01:19:52.013' AS DateTime), NULL, NULL)
GO
INSERT [Gestion].[Incidencia] ([IdIncidencia], [IdCliente], [Asunto], [IdTipoIncidencia], [IdPrioridad], [IdEstado], [IdUsuarioRegistra], [FechaRegistro], [IdUsuarioFinaliza], [FechaFinalizacion]) VALUES (1003, 5012, N'asunto de hoy', 1, 1, 3, 1, CAST(N'2018-11-21T22:49:38.440' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [Gestion].[Incidencia] OFF
GO
SET IDENTITY_INSERT [Gestion].[IncidenciaDetalle] ON 
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (1, 2, 1, 1, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2018-11-13T14:33:45.397' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (2, 2, 1, 2, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2018-11-14T01:40:00.000' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (3, 2, 1, 3, N'Se generaron los cambios propuestos', CAST(N'2018-11-14T14:56:52.163' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (4, 2, 1, 4, N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', CAST(N'2018-11-14T15:00:18.410' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (5, 2, 1, 6, N'Finalizado', CAST(N'2018-11-14T17:51:25.313' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (8, 2, 1, 6, N'Se cancelo', CAST(N'2018-11-14T18:23:12.127' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (9, 3, 1, 1, N'Se encontro datos erroneos en la respuesta', CAST(N'2018-11-14T18:26:09.240' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (10, 3, 1, 6, N'Se finalizooooo', CAST(N'2018-11-14T18:27:08.540' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (12, 4, 1, 6, N'Se acabo de ver el proceso', CAST(N'2018-11-14T21:01:37.443' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (1003, 1, 1, 1, N'Esta es una nueva linea de Asunto 1', CAST(N'2018-11-17T00:58:30.957' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (2003, 1003, 1, 1, N'gewbewbewbewbbg wgwgwccsfwegweg wrherh rh&nbsp; we h weh e h weh', CAST(N'2018-11-21T22:49:38.493' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (6, 1, 1, 4, N'Se modifico procedimiento almacenado', CAST(N'2018-11-14T17:56:58.483' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (7, 1, 1, 6, N'Se finalizo', CAST(N'2018-11-14T17:58:35.923' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (11, 4, 1, 1, N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', CAST(N'2018-11-14T18:35:32.023' AS DateTime))
GO
INSERT [Gestion].[IncidenciaDetalle] ([IdIncidenciaDetalle], [IdIncidencia], [IdUsuario], [IdArea], [Descripcion], [FechaRegistro]) VALUES (1002, 1002, 1, 1, N'<h2 style="margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; background-color: rgb(255, 255, 255);">What is Lorem Ipsum?</h2><p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px;">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', CAST(N'2018-11-16T01:19:52.160' AS DateTime))
GO
SET IDENTITY_INSERT [Gestion].[IncidenciaDetalle] OFF
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Sin Area', N'Cuando recien se recibe una incidencia', 1)
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Desarrollo 1', N'', 1)
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Desarrollo 2', N'', 1)
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (4, N'QA', N'', 1)
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (5, N'Soporte General', N'soporte', 1)
GO
INSERT [Maestro].[Area] ([IdArea], [Nombre], [Observacion], [IdEstado]) VALUES (6, N'Cliente', N'Cliente', 1)
GO
SET IDENTITY_INSERT [Maestro].[CategoriaFaq] ON 
GO
INSERT [Maestro].[CategoriaFaq] ([IdCategoriaFaq], [Nombre], [Observacion], [IdEstado], [IdUsuario], [FechaRegistro]) VALUES (1, N'Facturacion', N'', 1, 0, CAST(N'2018-11-01T00:00:00.000' AS DateTime))
GO
INSERT [Maestro].[CategoriaFaq] ([IdCategoriaFaq], [Nombre], [Observacion], [IdEstado], [IdUsuario], [FechaRegistro]) VALUES (2, N'Cobranza', NULL, 1, 1, CAST(N'2018-11-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [Maestro].[CategoriaFaq] OFF
GO
SET IDENTITY_INSERT [Maestro].[Cliente] ON 
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3013, N'12345678901', N'Razon Social 3', N'Direccion 3', 1, 9, CAST(N'2018-10-25T20:31:41.347' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3014, N'12345678901', N'Razon Social 4', N'Direccion 4', 1, 24, CAST(N'2018-10-25T20:37:27.960' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (4012, N'65498732165', N'Razon Social 5', N'Direccion 5', 1, 11, CAST(N'2018-10-27T10:45:31.510' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (5012, N'66666666666', N'Razon 6', N'Direccion 6', 1, 42, CAST(N'2018-10-31T20:38:42.747' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (5013, N'77777777777', N'Razon 7', N'Direccion 7', 1, 164, CAST(N'2018-10-31T20:41:27.770' AS DateTime), 1, 1)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (1011, N'12345678901', N'Razon Social 1', N'Direccion 1', 1, 42, CAST(N'2018-10-13T22:54:14.990' AS DateTime), 1, 2)
GO
INSERT [Maestro].[Cliente] ([IdCliente], [NumeroDocumento], [RazonSocial], [Direccion], [IdPais], [IdUbigeo], [FechaRegistro], [IdUsuario], [IdEstado]) VALUES (3012, N'12345678901', N'Razon Social 2', N'Direccion 2', 1, 35, CAST(N'2018-10-24T20:02:44.507' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [Maestro].[Cliente] OFF
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (1, N'Activo', NULL, 1)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (2, N'Inactivo', N'Maestros en general', 1)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (3, N'Pendiente', NULL, 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (4, N'Abierto', N'', 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (5, N'Cancelado', N'', 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (6, N'Finalizado', N'', 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (7, N'Corregido', N'', 2)
GO
INSERT [Maestro].[Estado] ([IdEstado], [Nombre], [Observacion], [IdTipoEstado]) VALUES (8, N'Rechazado', N'', 2)
GO
SET IDENTITY_INSERT [Maestro].[Pais] ON 
GO
INSERT [Maestro].[Pais] ([IdPais], [Nombre], [Codigo]) VALUES (1, N'Perú', N'51')
GO
SET IDENTITY_INSERT [Maestro].[Pais] OFF
GO
INSERT [Maestro].[Prioridad] ([IdPrioridad], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Sin Prioridad', N'Observacion 1', 1)
GO
INSERT [Maestro].[Prioridad] ([IdPrioridad], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Baja', N'', 1)
GO
INSERT [Maestro].[Prioridad] ([IdPrioridad], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Media', N'', 1)
GO
INSERT [Maestro].[Prioridad] ([IdPrioridad], [Nombre], [Observacion], [IdEstado]) VALUES (4, N'Alta', N'', 1)
GO
INSERT [Maestro].[Prioridad] ([IdPrioridad], [Nombre], [Observacion], [IdEstado]) VALUES (5, N'Critico', N'', 1)
GO
INSERT [Maestro].[TipoCorreo] ([IdTipoCorreo], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Tipo Correo 10', N'Observacion 10', 1)
GO
INSERT [Maestro].[TipoCorreo] ([IdTipoCorreo], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Tipo Correo 2', N'', 1)
GO
INSERT [Maestro].[TipoCorreo] ([IdTipoCorreo], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Nuevo dato', N'nueva observacion', 1)
GO
INSERT [Maestro].[TipoEstado] ([IdTipoEstado], [Nombre], [Observacion]) VALUES (1, N'Maestros', N'Usado para los mantenimientos en general')
GO
INSERT [Maestro].[TipoEstado] ([IdTipoEstado], [Nombre], [Observacion]) VALUES (2, N'Incidencias', N'Indica los estados que puede adquirir una incidencia')
GO
SET IDENTITY_INSERT [Maestro].[TipoIncidencia] ON 
GO
INSERT [Maestro].[TipoIncidencia] ([IdTipoIncidencia], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Consulta', N'Observacion 10', 1)
GO
INSERT [Maestro].[TipoIncidencia] ([IdTipoIncidencia], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Problema', N'', 1)
GO
INSERT [Maestro].[TipoIncidencia] ([IdTipoIncidencia], [Nombre], [Observacion], [IdEstado]) VALUES (3, N'Requerimiento', N'', 1)
GO
SET IDENTITY_INSERT [Maestro].[TipoIncidencia] OFF
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
SET IDENTITY_INSERT [Seguridad].[Acceso] ON 
GO
INSERT [Seguridad].[Acceso] ([IdAcceso], [IdAccesoPadre], [Nombre], [Descripcion], [Url], [Icono], [Orden], [Tipo], [IdEstado]) VALUES (1, 0, N'Gestion', N'Lista de opciones del CORE del negocio', N'', N'fas fa-table', 0, N'menu', 1)
GO
INSERT [Seguridad].[Acceso] ([IdAcceso], [IdAccesoPadre], [Nombre], [Descripcion], [Url], [Icono], [Orden], [Tipo], [IdEstado]) VALUES (2, 1, N'FAQ', N'Frecuency Answer and Questions', N'vista/gestion/faq.jsp', N'', 0, N'accion', 1)
GO
INSERT [Seguridad].[Acceso] ([IdAcceso], [IdAccesoPadre], [Nombre], [Descripcion], [Url], [Icono], [Orden], [Tipo], [IdEstado]) VALUES (3, 1, N'Incidencia', N'Incidencias concurridas por los usuarios', N'vista/gestion/incidencia.jsp', N'', 1, N'accion', 1)
GO
INSERT [Seguridad].[Acceso] ([IdAcceso], [IdAccesoPadre], [Nombre], [Descripcion], [Url], [Icono], [Orden], [Tipo], [IdEstado]) VALUES (4, 0, N'Maestros', N'Mantenimientos en general', N'', N'fas fa-table', 1, N'menu', 1)
GO
INSERT [Seguridad].[Acceso] ([IdAcceso], [IdAccesoPadre], [Nombre], [Descripcion], [Url], [Icono], [Orden], [Tipo], [IdEstado]) VALUES (5, 4, N'Cliente', N'Gestionar Clientes', N'vista/maestro/cliente.jsp', N'', 0, N'accion', 1)
GO
SET IDENTITY_INSERT [Seguridad].[Acceso] OFF
GO
SET IDENTITY_INSERT [Seguridad].[AccesoRol] ON 
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (1, 1, 1)
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (2, 1, 2)
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (3, 2, 1)
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (4, 3, 1)
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (5, 4, 1)
GO
INSERT [Seguridad].[AccesoRol] ([IdAccesoRol], [IdAcceso], [IdRol]) VALUES (6, 5, 1)
GO
SET IDENTITY_INSERT [Seguridad].[AccesoRol] OFF
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (1, N'Administrador Sistema', NULL, 1)
GO
INSERT [Seguridad].[Rol] ([IdRol], [Nombre], [Observacion], [IdEstado]) VALUES (2, N'Ventas', N'Obs Ventas', 1)
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
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (3, 2, 2, 1)
GO
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (4, 1, 3, 1)
GO
INSERT [Seguridad].[RolUsuario] ([IdRolUsuario], [IdRol], [IdUsuario], [IdEstado]) VALUES (5, 1, 4, 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (1, N'test', N'test', N'Frank1', N'Cochachin1', N'Quito1', 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (2, N'test4', N'test4', N'user2', N'paterno2', N'materno2', 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (3, N'test2', N'test2', N'test2', N'ape2', N'ape2', 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (4, N'test3', N'test3', N'test3', N'ape3', N'ape3', 1)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (5, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (6, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (7, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (12, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (13, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (15, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (17, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (18, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (19, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (20, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (21, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (22, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (23, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (26, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (8, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (9, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (10, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (11, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (14, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (16, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (24, NULL, NULL, NULL, NULL, NULL, 0)
GO
INSERT [Seguridad].[Usuario] ([IdUsuario], [UserName], [Contrasenia], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [IdEstado]) VALUES (25, NULL, NULL, NULL, NULL, NULL, 0)
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[DF__Correo__Enviado__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [Seguimiento].[Correo] ADD  DEFAULT ((0)) FOR [Enviado]
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_AreaUsuario_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_AreaUsuario_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_AreaUsuario_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_AreaUsuario_Eliminar] 
(
	@IdAreaUsuario INT
)
AS
BEGIN
	
	DELETE FROM Asignacion.AreaUsuario
	WHERE IdAreaUsuario = @IdAreaUsuario

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_AreaUsuario_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_AreaUsuario_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_AreaUsuario_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_AreaUsuario_ObtenerPorId]
	@IdAreaUsuario INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Asignacion.AreaUsuario
	WHERE IdAreaUsuario = @IdAreaUsuario
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_AreaUsuario_ObtenerPorIdArea]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_AreaUsuario_ObtenerPorIdArea]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_AreaUsuario_ObtenerPorIdArea] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_AreaUsuario_ObtenerPorIdArea] --'',0,1,1,10,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdArea INT
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
			IdAreaUsuario,
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
			,rolUsu.IdAreaUsuario
			,usu.IdUsuario
			,usu.UserName
			,usu.Nombre
			,usu.ApellidoPaterno
			,usu.ApellidoMaterno
			,usu.IdEstado
			,COUNT(usu.IdUsuario) OVER ( )  AS TotalItems 
		FROM Seguridad.Usuario usu
		INNER JOIN Asignacion.AreaUsuario rolUsu ON usu.IdUsuario = rolUsu.IdUsuario
		WHERE (usu.UserName LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoPaterno LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR usu.ApellidoMaterno LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND usu.IdEstado = CASE @IdEstado
								WHEN 0 THEN usu.IdEstado
								ELSE @IdEstado
							  END
			AND rolUsu.IdArea = @IdArea
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_AreaUsuario_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_AreaUsuario_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_AreaUsuario_Registrar] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_AreaUsuario_Registrar] 
(
	@IdArea INT
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @CantidadRegistros INT
	SET @CantidadRegistros = (SELECT COUNT(IdAreaUsuario) FROM Asignacion.AreaUsuario
	WHERE IdArea = @IdArea 
	AND IdUsuario = @IdUsuario)

	SET NOCOUNT OFF;

	IF(@CantidadRegistros = 0)
	BEGIN

		INSERT INTO Asignacion.AreaUsuario(
			IdArea
			,IdUsuario
			,IdEstado
			)
		VALUES (
			@IdArea
			,@IdUsuario
			,@IdEstado
			)
	END	

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
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
	
	DELETE FROM Asignacion.RolUsuario
	WHERE IdRolUsuario = @IdRolUsuario

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
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
	
	SELECT * FROM Asignacion.RolUsuario
	WHERE IdRolUsuario = @IdRolUsuario
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_ObtenerPorIdRol]    Script Date: 26/11/2018 01:29:18 ******/
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
		INNER JOIN Asignacion.RolUsuario rolUsu ON usu.IdUsuario = rolUsu.IdUsuario
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
/****** Object:  StoredProcedure [Asignacion].[usp_RolUsuario_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
	SET @CantidadRegistros = (SELECT COUNT(IdRolUsuario) FROM Asignacion.RolUsuario
	WHERE IdRol = @IdRol 
	AND IdUsuario = @IdUsuario)

	SET NOCOUNT OFF;

	IF(@CantidadRegistros = 0)
	BEGIN

		INSERT INTO Asignacion.RolUsuario(
			IdRol
			,IdUsuario
			,IdEstado
			)
		VALUES (
			@IdRol
			,@IdUsuario
			,@IdEstado
			)
	END	

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_UsuarioCliente_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_UsuarioCliente_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_UsuarioCliente_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_UsuarioCliente_Eliminar] 
(
	@IdUsuarioCliente INT
)
AS
BEGIN
	
	DELETE FROM Asignacion.UsuarioCliente
	WHERE IdUsuarioCliente = @IdUsuarioCliente	

END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_UsuarioCliente_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_UsuarioCliente_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_UsuarioCliente_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_UsuarioCliente_ObtenerPorId]
	@IdUsuarioCliente INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Asignacion.UsuarioCliente
	WHERE IdUsuarioCliente = @IdUsuarioCliente
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_UsuarioCliente_ObtenerPorIdUsuario]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_UsuarioCliente_ObtenerPorIdUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_UsuarioCliente_ObtenerPorIdUsuario] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_UsuarioCliente_ObtenerPorIdUsuario] --'66666666666',0,1,10,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdUsuario INT
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
			IdUsuarioCliente,
			IdCliente,
			NumeroDocumento,
			RazonSocial,
			IdEstado,
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
			,usuCli.IdUsuarioCliente
			,cli.IdCliente
			,cli.NumeroDocumento
			,cli.RazonSocial
			,cli.IdEstado
			,COUNT(cli.IdCliente) OVER ( )  AS TotalItems 
		FROM Maestro.Cliente cli
		INNER JOIN Asignacion.UsuarioCliente usuCli ON cli.IdCliente = usuCli.IdCliente
		WHERE (cli.NumeroDocumento LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cli.RazonSocial LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cli.Direccion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND cli.IdEstado = CASE @IdEstado
								WHEN 0 THEN cli.IdEstado
								ELSE @IdEstado
							  END
			AND usuCli.IdUsuario = @IdUsuario
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Asignacion].[usp_UsuarioCliente_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Asignacion].[usp_UsuarioCliente_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Asignacion].[usp_UsuarioCliente_Registrar] AS' 
END
GO
ALTER PROCEDURE [Asignacion].[usp_UsuarioCliente_Registrar] 
(
	@IdUsuario INT
	,@IdCliente INT
	,@IdEstado INT
)
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @CantidadRegistros INT
	SET @CantidadRegistros = (SELECT COUNT(IdUsuarioCliente) FROM Asignacion.UsuarioCliente
	WHERE IdUsuario = @IdUsuario 
	AND IdCliente = @IdCliente)

	SET NOCOUNT OFF;

	IF(@CantidadRegistros = 0)
	BEGIN
		INSERT INTO Asignacion.UsuarioCliente(
			IdUsuario
			,IdCliente
			,IdEstado
			)
		VALUES (
			@IdUsuario
			,@IdCliente
			,@IdEstado
			)
	END	

END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Faq_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Faq_Combo] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Faq_Combo]
AS
BEGIN
	SELECT	IdFaq, 
			Titulo
	FROM Gestion.Faq
	ORDER BY Titulo
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
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
	@Buscar NVARCHAR(MAX)=''
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
		WHERE (fq.Titulo LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR fq.Descripcion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND fq.IdCategoriaFaq = CASE @IdCategoriaFaq
								WHEN 0 THEN fq.IdCategoriaFaq
								ELSE @IdCategoriaFaq
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Faq_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Faq_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_FaqDetalle_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_Combo] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_Combo]
AS
BEGIN
	SELECT	inc.IdIncidencia, 
			inc.IdCliente,
			inc.Asunto,
			inc.IdTipoIncidencia,
			est.Nombre Estado,
			inc.IdUsuarioRegistra
	FROM Gestion.Incidencia inc
	INNER JOIN Maestro.Estado est ON est.IdEstado = inc.IdEstado 
	ORDER BY IdCliente
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
	,@IdPrioridad INT
	,@IdEstado INT
	,@IdUsuarioRegistra INT
)
AS
BEGIN
	UPDATE Gestion.Incidencia
	SET IdCliente = @IdCliente
		,Asunto = @Asunto
		,IdTipoIncidencia = @IdTipoIncidencia
		,IdPrioridad = @IdPrioridad
		,IdEstado = @IdEstado
		,IdUsuarioRegistra = @IdUsuarioRegistra
	WHERE IdIncidencia = @IdIncidencia
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_ModificarEstado]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_ModificarEstado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_ModificarEstado] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_ModificarEstado] 
(
	@IdIncidencia INT
	,@IdEstado INT
	,@IdUsuario INT
	,@Finalizado BIT = 0
)
AS
BEGIN
	IF @Finalizado = 0
	BEGIN
		UPDATE Gestion.Incidencia
		SET IdEstado = @IdEstado
		WHERE IdIncidencia = @IdIncidencia
	END
	ELSE
	BEGIN
		UPDATE Gestion.Incidencia
		SET IdEstado = @IdEstado,
			IdUsuarioFinaliza = @IdUsuario,
			FechaFinalizacion = GETDATE()
		WHERE IdIncidencia = @IdIncidencia
	END
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_Obtener] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_Obtener] 
	@IdCliente INT
	,@Asunto VARCHAR(500)=''
	,@IdTipoIncidencia INT
	,@IdPrioridad INT
	,@IdEstado INT
	,@FechaInicio DATETIME
	,@FechaFin DATETIME
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdIncidencia'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdIncidencia,
			Asunto,
			TipoIncidencia,
			Prioridad,
			Estado,
			IdEstado,
			FechaRegistro,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdIncidencia' AND @DireccionOrden = 'desc' THEN  inc.IdIncidencia END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdIncidencia' AND @DireccionOrden = 'asc' THEN inc.IdIncidencia END) ASC,
					(CASE WHEN @ColumnaOrden = 'Asunto' AND @DireccionOrden = 'desc' THEN inc.Asunto END) DESC,
					(CASE WHEN @ColumnaOrden = 'Asunto' AND @DireccionOrden = 'asc' THEN inc.Asunto  END) ASC,
					(CASE WHEN @ColumnaOrden = 'TipoIncidencia' AND @DireccionOrden = 'desc' THEN tipInc.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'TipoIncidencia' AND @DireccionOrden = 'asc' THEN tipInc.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Prioridad' AND @DireccionOrden = 'desc' THEN pri.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Prioridad' AND @DireccionOrden = 'asc' THEN pri.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Estado' AND @DireccionOrden = 'desc' THEN est.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Estado' AND @DireccionOrden = 'asc' THEN est.Nombre  END) ASC
			) AS Item 
			,inc.IdIncidencia
			,inc.Asunto
			,tipInc.Nombre TipoIncidencia
			,pri.Nombre Prioridad
			,est.Nombre Estado
			,inc.IdEstado
			,CONVERT(VARCHAR,inc.FechaRegistro,120) FechaRegistro
			,COUNT(inc.IdIncidencia) OVER ( )  AS TotalItems 
		FROM Gestion.Incidencia inc
		INNER JOIN Maestro.TipoIncidencia tipInc ON inc.IdTipoIncidencia = tipInc.IdTipoIncidencia
		INNER JOIN Maestro.Prioridad pri ON inc.IdPrioridad = pri.IdPrioridad
		INNER JOIN Maestro.Estado est ON inc.IdEstado = est.IdEstado
		WHERE inc.Asunto LIKE '%' + ISNULL(@Asunto,'') + '%'
		AND inc.IdCliente =	CASE @IdCliente WHEN 0 THEN inc.IdCliente ELSE @IdCliente END
		AND inc.IdTipoIncidencia =	CASE @IdTipoIncidencia WHEN 0 THEN inc.IdTipoIncidencia ELSE @IdTipoIncidencia END
		AND inc.IdPrioridad =	CASE @IdPrioridad WHEN 0 THEN inc.IdPrioridad ELSE @IdPrioridad END
		AND inc.IdEstado =	CASE @IdEstado WHEN 0 THEN inc.IdEstado ELSE @IdEstado END
		AND CONVERT(DATE, inc.FechaRegistro) BETWEEN CONVERT(DATE, @FechaInicio) AND CONVERT(DATE, @FechaFin)

	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_ObtenerHistorial]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_ObtenerHistorial]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_ObtenerHistorial] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_ObtenerHistorial]
	@IdIncidencia INT,
	@IdIncidenciaDetalle INT = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	det.IdIncidenciaDetalle,
			cli.NumeroDocumento,
			cli.RazonSocial,
			inc.Asunto Titulo,
			usu.UserName UsuarioDetalle,
			CONVERT(VARCHAR,inc.FechaRegistro,120) FechaRegistroInicial,
			CONVERT(VARCHAR,det.FechaRegistro,120) FechaRegistroDetalle,
			det.Descripcion,
			usuCab.UserName UsuarioInicial,
			are.Nombre NombreArea,
			DATEDIFF(HOUR,inc.FechaRegistro,GETDATE()) DiferenciaHorasCabecera,
			DATEDIFF(HOUR,det.FechaRegistro,GETDATE()) DiferenciaHorasDetalle,
			est.Nombre NombreEstado,
			det.IdArea
	FROM Gestion.IncidenciaDetalle det
	INNER JOIN Gestion.Incidencia inc ON det.IdIncidencia = inc.IdIncidencia
	INNER JOIN Maestro.Cliente cli ON inc.IdCliente = cli.IdCliente
	INNER JOIN Seguridad.Usuario usu ON det.IdUsuario = usu.IdUsuario
	INNER JOIN Seguridad.Usuario usuCab ON inc.IdUsuarioRegistra = usuCab.IdUsuario
	INNER JOIN Maestro.Area are ON det.IdArea = are.IdArea
	INNER JOIN Maestro.Estado est ON inc.IdEstado = est.IdEstado
	WHERE inc.IdIncidencia = @IdIncidencia
	AND det.IdIncidenciaDetalle = CASE @IdIncidenciaDetalle
									WHEN 0 THEN det.IdIncidenciaDetalle
									ELSE @IdIncidenciaDetalle
								END
	ORDER BY det.IdIncidenciaDetalle
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_ObtenerPorId]
	@IdIncidencia INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT  *
	FROM Gestion.Incidencia inc
	WHERE IdIncidencia = @IdIncidencia
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_ObtenerPorId_Detallado]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_Incidencia_ObtenerPorId_Detallado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_Incidencia_ObtenerPorId_Detallado] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_Incidencia_ObtenerPorId_Detallado]
	@IdIncidencia INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT	inc.IdIncidencia,
			inc.Asunto,
			cli.NumeroDocumento,
			cli.RazonSocial,
			tipInc.Nombre NombreTipoIncidencia,
			pri.Nombre NombrePrioridad,
			est.IdEstado,
			est.Nombre NombreEstado
	FROM Gestion.Incidencia inc
	INNER JOIN Maestro.Cliente cli ON inc.IdCliente = cli.IdCliente
	INNER JOIN Maestro.TipoIncidencia tipInc ON inc.IdTipoIncidencia = tipInc.IdTipoIncidencia
	INNER JOIN Maestro.Prioridad pri ON inc.IdPrioridad = pri.IdPrioridad
	INNER JOIN Maestro.Estado est ON inc.IdEstado = est.IdEstado
	WHERE IdIncidencia = @IdIncidencia
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_Incidencia_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
	@IdIncidencia INT OUTPUT
	,@IdCliente INT
	,@Asunto VARCHAR(500)
	,@IdTipoIncidencia INT
	,@IdPrioridad INT
	,@IdEstado INT
	,@IdUsuarioRegistra INT
)
AS
BEGIN
	INSERT INTO Gestion.Incidencia (
		IdCliente
		,Asunto
		,IdTipoIncidencia
		,IdPrioridad
		,IdEstado
		,IdUsuarioRegistra
		,FechaRegistro
		)
	VALUES (
		@IdCliente
		,@Asunto
		,@IdTipoIncidencia
		,@IdPrioridad
		,@IdEstado
		,@IdUsuarioRegistra
		,GETDATE()
		)

	SET @IdIncidencia = (SELECT SCOPE_IDENTITY())
	RETURN @IdIncidencia

END
GO
/****** Object:  StoredProcedure [Gestion].[usp_IncidenciaDetalle_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_IncidenciaDetalle_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_IncidenciaDetalle_Combo] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_IncidenciaDetalle_Combo]
@IdIncidenciaDetalle INT = 1
AS
BEGIN
	SELECT	IdIncidencia 
			,Descripcion
			,IdUsuario
	FROM Gestion.IncidenciaDetalle 
	WHERE IdIncidenciaDetalle = @IdIncidenciaDetalle
	ORDER BY IdUsuario
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_IncidenciaDetalle_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_IncidenciaDetalle_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_IncidenciaDetalle_Modificar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_IncidenciaDetalle_Modificar] 
(
	@IdIncidenciaDetalle INT
	,@IdIncidencia INT
	,@IdArea INT
	,@Descripcion nVARCHAR(max)
	,@IdUsuario INT
)
AS
BEGIN
	UPDATE Gestion.IncidenciaDetalle
		SET IdIncidencia = @IdIncidencia
		,Descripcion = @Descripcion
		,IdArea = @IdArea
		,IdUsuario = @IdUsuario
	WHERE IdIncidenciaDetalle = @IdIncidenciaDetalle
		
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_IncidenciaDetalle_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_IncidenciaDetalle_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_IncidenciaDetalle_Obtener] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_IncidenciaDetalle_Obtener] 
	@IdIncidencia INT
	,@Descripcion VARCHAR(500)=''
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdIncidenciaDetalle'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdIncidenciaDetalle,
			IdIncidencia,
			UserName,
			NombreArea,
			Descripcion,
			FechaRegistro,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdIncidenciaDetalle' AND @DireccionOrden = 'desc' THEN det.IdIncidenciaDetalle END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdIncidenciaDetalle' AND @DireccionOrden = 'asc' THEN det.IdIncidenciaDetalle END) ASC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'desc' THEN usu.UserName END) DESC,
					(CASE WHEN @ColumnaOrden = 'UserName' AND @DireccionOrden = 'asc' THEN usu.UserName  END) ASC,
					(CASE WHEN @ColumnaOrden = 'NombreArea' AND @DireccionOrden = 'desc' THEN are.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'NombreArea' AND @DireccionOrden = 'asc' THEN are.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'FechaRegistro' AND @DireccionOrden = 'desc' THEN det.FechaRegistro END) DESC,
					(CASE WHEN @ColumnaOrden = 'FechaRegistro' AND @DireccionOrden = 'asc' THEN det.FechaRegistro  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Descripcion' AND @DireccionOrden = 'desc' THEN Descripcion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Descripcion' AND @DireccionOrden = 'asc' THEN Descripcion  END) ASC
			) AS Item 
			,det.IdIncidenciaDetalle
			,det.IdIncidencia
			,usu.UserName
			,are.Nombre NombreArea
			,det.Descripcion
			,CONVERT(VARCHAR,det.FechaRegistro,120) FechaRegistro
			,COUNT(IdIncidencia) OVER ( )  AS TotalItems 
		FROM Gestion.IncidenciaDetalle det 
		INNER JOIN Maestro.Area are ON det.IdArea = are.IdArea
		INNER JOIN Seguridad.Usuario usu ON det.IdUsuario = usu.IdUsuario
		WHERE det.Descripcion LIKE '%' + ISNULL(@Descripcion,'') + '%'
		AND det.IdIncidencia = @IdIncidencia
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_IncidenciaDetalle_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_IncidenciaDetalle_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_IncidenciaDetalle_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_IncidenciaDetalle_ObtenerPorId]
	@IdIncidenciaDetalle INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Gestion.IncidenciaDetalle 
	WHERE IdIncidenciaDetalle = @IdIncidenciaDetalle
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Gestion].[usp_IncidenciaDetalle_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Gestion].[usp_IncidenciaDetalle_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Gestion].[usp_IncidenciaDetalle_Registrar] AS' 
END
GO
ALTER PROCEDURE [Gestion].[usp_IncidenciaDetalle_Registrar] 
(
    @IdIncidencia INT
	,@IdArea INT
	,@Descripcion nVARCHAR(max)
	,@IdUsuario INT
)
AS
BEGIN
	INSERT INTO Gestion.IncidenciaDetalle(
		IdIncidencia 
		,IdUsuario
		,Descripcion
		,IdArea
		,FechaRegistro
		)
	VALUES (
		@IdIncidencia
		,@IdUsuario
		,@Descripcion
		,@IdArea
		,GETDATE()
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
@IdEstado INT = 1
AS
BEGIN
	SELECT IdArea, Nombre FROM Maestro.Area
	WHERE IdEstado = @IdEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Area_Eliminar] 
(
	@IdArea INT
)
AS
BEGIN
	DELETE FROM Maestro.Area
	WHERE IdArea = @IdArea
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_Area_Modificar] 
(
	@IdArea INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.Area
		SET Nombre = @Nombre
		,Observacion = @Observacion
		,IdEstado = @IdEstado
	WHERE IdArea = @IdArea
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Area_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdArea'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdArea,
			Nombre,
			Observacion,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdCliente' AND @DireccionOrden = 'desc' THEN  area.IdArea END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdCliente' AND @DireccionOrden = 'asc' THEN area.IdArea END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN area.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN area.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN area.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN area.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN area.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN area.IdEstado  END) ASC
			) AS Item 
			,area.IdArea
			,area.Nombre
			,area.Observacion
			,area.IdEstado
			,COUNT(area.IdArea) OVER ( )  AS TotalItems 
		FROM Maestro.Area area
		WHERE (area.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR area.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND area.IdEstado = CASE @IdEstado
								WHEN 0
									THEN area.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Area_ObtenerPorId]
	@IdArea INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.Area
	WHERE IdArea = @IdArea
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Area_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Area_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Area_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Area_Registrar] 
(
	@Nombre VARCHAR(100)
    ,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN

	DECLARE @IdArea INT
	SET @IdArea = (SELECT (ISNULL(MAX(IdArea), 0) + 1) FROM Maestro.Area)

	INSERT INTO Maestro.Area (
		IdArea
		,Nombre
		,Observacion
		,IdEstado
		)
	VALUES (
		@IdArea
		,@Nombre
		,@Observacion
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
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
	@Buscar VARCHAR(250)=''
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
		WHERE (catFaq.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR catFaq.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND catFaq.IdEstado = CASE @IdEstado
								WHEN 0 THEN catFaq.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_CategoriaFaq_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ComboPorIdUsuario]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_ComboPorIdUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_ComboPorIdUsuario] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_ComboPorIdUsuario]
@IdEstado INT = 1,
@IdUsuario INT
AS
BEGIN
	SELECT	cli.IdCliente, 
			cli.NumeroDocumento,
			cli.RazonSocial
	FROM Maestro.Cliente cli
	INNER JOIN Asignacion.UsuarioCliente usuCli ON cli.IdCliente = usuCli.IdCliente
	WHERE cli.IdEstado = @IdEstado
	AND usuCli.IdUsuario = @IdUsuario
	AND usuCli.IdEstado = @IdEstado
	ORDER BY cli.RazonSocial
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_Obtener] --'66666666666',0,1,10,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
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
			,COUNT(cli.IdCliente) OVER ( )  AS TotalItems 
		FROM Maestro.Cliente cli
		WHERE (cli.NumeroDocumento LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cli.RazonSocial LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cli.Direccion LIKE '%' + ISNULL(@Buscar,'') + '%')
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ObtenerPendientesPorUsuario]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Cliente_ObtenerPendientesPorUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Cliente_ObtenerPendientesPorUsuario] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Cliente_ObtenerPendientesPorUsuario] --'',1,1,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdUsuario INT
	--,@NumeroPagina INT
	--,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdCliente'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	--DECLARE @Desde INT
	--DECLARE @Hasta INT
	--SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	--SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdCliente,
			NumeroDocumento,
			RazonSocial,
			IdEstado,
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
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN cli.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN cli.IdEstado  END) ASC
			) AS Item 
			,cli.IdCliente
			,cli.NumeroDocumento
			,cli.RazonSocial
			,cli.IdEstado
			,COUNT(cli.IdCliente) OVER ( )  AS TotalItems 
		FROM Maestro.Cliente cli
		WHERE (cli.NumeroDocumento LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cli.RazonSocial LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND cli.IdEstado = CASE @IdEstado
								WHEN 0 THEN cli.IdEstado
								ELSE @IdEstado
							  END
			AND cli.IdCliente NOT IN (SELECT asig.IdCliente FROM Asignacion.UsuarioCliente asig
										WHERE asig.IdUsuario = @IdUsuario)
	) AS Resultado
	--WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Cliente_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_Combo]
@IdCliente INT = 1
AS
BEGIN
	SELECT	IdContacto, 
			Nombre,
			Apellido,
			Correo
	FROM Maestro.Contacto
	WHERE IdCliente = @IdCliente
	ORDER BY Apellido
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_Eliminar] 
(
	@IdContacto INT
)
AS
BEGIN
	DELETE FROM Maestro.Contacto
	WHERE IdContacto = @IdContacto
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_Modificar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_Modificar] 
(
	@IdContacto INT
	,@Nombre VARCHAR(20)
	,@Apellido VARCHAR(250)
	,@Correo VARCHAR(250)
	,@Telefono VARCHAR(50)
	,@IdCliente INT
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.Contacto
		SET Nombre = @Nombre
		,Apellido = @Apellido
		,Correo= @Correo
		,Telefono = @Telefono
		,IdCliente = @IdCliente
		,IdEstado = @IdEstado
	WHERE IdContacto = @IdContacto
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdCliente INT
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdContacto'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdContacto,
			Nombre,
			Apellido,
			Correo,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdContacto' AND @DireccionOrden = 'desc' THEN  cont.IdContacto END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdContacto' AND @DireccionOrden = 'asc' THEN cont.IdContacto END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN cont.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN cont.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Apellido' AND @DireccionOrden = 'desc' THEN cont.Apellido END) DESC,
					(CASE WHEN @ColumnaOrden = 'Apellido' AND @DireccionOrden = 'asc' THEN cont.Apellido  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Correo' AND @DireccionOrden = 'desc' THEN cont.Correo END) DESC,
					(CASE WHEN @ColumnaOrden = 'Correo' AND @DireccionOrden = 'asc' THEN cont.Correo  END) ASC
			) AS Item 
			,cont.IdContacto
			,cont.Nombre
			,cont.Apellido
			,cont.Correo
			,COUNT(cont.IdContacto) OVER ( )  AS TotalItems 
		FROM Maestro.Contacto cont
		WHERE (cont.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cont.Apellido LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR cont.Correo LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND cont.IdCliente = @IdCliente
			AND cont.IdEstado = CASE @IdEstado
								WHEN 0
									THEN cont.IdEstado
								ELSE @IdEstado
							  END
			
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_ObtenerPorId]
	@IdContacto INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.Contacto
	WHERE IdContacto = @IdContacto
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Contacto_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Contacto_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Contacto_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Contacto_Registrar] 
(
	@Nombre VARCHAR(250)
    ,@Apellido VARCHAR(250)
	,@Correo VARCHAR(250)
	,@Telefono VARCHAR(50)
	,@IdCliente INT
	,@IdEstado INT
)
AS
BEGIN
	INSERT INTO Maestro.Contacto (
		Nombre
		,Apellido
		,Correo
		,Telefono
		,IdCliente
		,IdEstado
		)
	VALUES (
		@Nombre
		,@Apellido
		,@Correo
		,@Telefono
		,@IdCliente
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Estado_Eliminar] 
(
	@IdEstado INT
)
AS
BEGIN
	DELETE FROM Maestro.Estado
	WHERE IdEstado = @IdEstado
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_Estado_Modificar] 
(
	@IdEstado INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
	,@IdTipoEstado INT
)
AS
BEGIN
	UPDATE Maestro.Estado
		SET Nombre = @Nombre
		,Observacion = @Observacion
		,IdTipoEstado = @IdTipoEstado
	WHERE IdEstado = @IdEstado
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Estado_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdTipoEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdEstado'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdEstado,
			Nombre,
			Observacion,
			NombreTipoEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN  est.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN est.IdEstado END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN est.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN est.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN est.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN est.Observacion  END) ASC
			) AS Item 
			,est.IdEstado
			,est.Nombre
			,est.Observacion
			,tipEst.Nombre NombreTipoEstado
			,COUNT(est.IdEstado) OVER ( )  AS TotalItems 
		FROM Maestro.Estado est
		INNER JOIN Maestro.TipoEstado tipEst ON est.IdTipoEstado = tipEst.IdTipoEstado
		WHERE (est.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR est.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND est.IdTipoEstado = CASE @IdTipoEstado
								WHEN 0
									THEN est.IdTipoEstado
								ELSE @IdTipoEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Estado_ObtenerPorId] --1
	@IdEstado INT
AS
BEGIN
	SELECT *
	FROM Maestro.Estado est
	WHERE est.IdEstado = @IdEstado
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Estado_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Estado_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Estado_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Estado_Registrar] 
(
    @Nombre VARCHAR(100)
	,@Observacion VARCHAR(500)
	,@IdTipoEstado INT
)
AS
BEGIN

	DECLARE @IdEstado INT
	SET @IdEstado = (SELECT (ISNULL(MAX(IdEstado), 0) + 1) FROM Maestro.Estado)

	INSERT INTO Maestro.Estado(
		IdEstado
		,Nombre
		,Observacion
		,IdTipoEstado
		)
	VALUES (
		@IdEstado
		,@Nombre
		,@Observacion
		,@IdTipoEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Pais_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
@IdEstado INT = 1
AS
BEGIN
	SELECT IdPrioridad, Nombre FROM Maestro.Prioridad
	WHERE IdEstado = @IdEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Prioridad_Eliminar] 
(
	@IdPrioridad INT
)
AS
BEGIN
	DELETE FROM Maestro.Prioridad
	WHERE IdPrioridad = @IdPrioridad
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_Prioridad_Modificar] 
(
	@IdPrioridad INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.Prioridad
		SET Nombre = @Nombre
		,Observacion= @Observacion
		,IdEstado = @IdEstado
	WHERE IdPrioridad = @IdPrioridad
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Prioridad_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdPrioridad'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdPrioridad,
			Nombre,
			Observacion,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdPrioridad' AND @DireccionOrden = 'desc' THEN  prio.IdPrioridad END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdPrioridad' AND @DireccionOrden = 'asc' THEN prio.IdPrioridad END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN prio.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN prio.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN prio.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN prio.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN prio.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN prio.IdEstado  END) ASC
			) AS Item 
			,prio.IdPrioridad
			,prio.Nombre
			,prio.Observacion
			,prio.IdEstado
			,COUNT(prio.IdPrioridad) OVER ( )  AS TotalItems 
		FROM Maestro.Prioridad prio
		WHERE (prio.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR prio.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND prio.IdEstado = CASE @IdEstado
								WHEN 0
									THEN prio.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Prioridad_ObtenerPorId]
	@IdPrioridad INT
AS
BEGIN
	SELECT *
	FROM Maestro.Prioridad prio
	WHERE IdPrioridad = @IdPrioridad
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Prioridad_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_Prioridad_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_Prioridad_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_Prioridad_Registrar] 
(
	@Nombre VARCHAR(100)
    ,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN

	DECLARE @IdPrioridad INT
	SET @IdPrioridad = (SELECT (ISNULL(MAX(IdPrioridad), 0) + 1) FROM Maestro.Prioridad)

	INSERT INTO Maestro.Prioridad(
		IdPrioridad
		,Nombre
		,Observacion
		,IdEstado
		)
	VALUES (
		@IdPrioridad
		,@Nombre
		,@Observacion
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoCorreo_Eliminar] 
(
	@IdTipoCorreo INT
)
AS
BEGIN
	DELETE FROM Maestro.TipoCorreo
	WHERE IdTipoCorreo = @IdTipoCorreo
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_TipoCorreo_Modificar] 
(
	@IdTipoCorreo INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.TipoCorreo
		SET Nombre = @Nombre
		,Observacion= @Observacion
		,IdEstado = @IdEstado
	WHERE IdTipoCorreo = @IdTipoCorreo
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoCorreo_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdTipoCorreo'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdTipoCorreo,
			Nombre,
			Observacion,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdTipoCorreo' AND @DireccionOrden = 'desc' THEN  tipc.IdTipoCorreo END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdTipoCorreo' AND @DireccionOrden = 'asc' THEN tipc.IdTipoCorreo END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN tipc.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN tipc.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN tipc.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN tipc.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN tipc.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN tipc.IdEstado  END) ASC
			) AS Item 
			,tipc.IdTipoCorreo
			,tipc.Nombre
			,tipc.Observacion
			,tipc.IdEstado
			,COUNT(tipc.IdTipoCorreo) OVER ( )  AS TotalItems 
		FROM Maestro.TipoCorreo tipc
		WHERE (tipc.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR tipc.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND tipc.IdEstado = CASE @IdEstado
								WHEN 0
									THEN tipc.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoCorreo_ObtenerPorId]
	@IdTipoCorreo INT
AS
BEGIN
	SELECT * 
	FROM Maestro.TipoCorreo tipco
	WHERE tipco.IdTipoCorreo = @IdTipoCorreo
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoCorreo_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoCorreo_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoCorreo_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoCorreo_Registrar] 
(
	@Nombre VARCHAR(100)
    ,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN

	DECLARE @IdTipoCorreo INT
	SET @IdTipoCorreo = (SELECT (ISNULL(MAX(IdTipoCorreo), 0) + 1) FROM Maestro.TipoCorreo)

	INSERT INTO Maestro.TipoCorreo(
		IdTipoCorreo
		,Nombre
		,Observacion
		,IdEstado
		)
	VALUES (
		@IdTipoCorreo
		,@Nombre
		,@Observacion
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoEstado_Eliminar] 
(
	@IdTipoEstado INT
)
AS
BEGIN
	DELETE FROM Maestro.TipoEstado
	WHERE IdTipoEstado = @IdTipoEstado
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_Modificar] AS' 
END
GO

ALTER PROCEDURE [Maestro].[usp_TipoEstado_Modificar] 
(
	@IdTipoEstado INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
)
AS
BEGIN
	UPDATE Maestro.TipoEstado
		SET Nombre = @Nombre
		,Observacion= @Observacion
	WHERE IdTipoEstado = @IdTipoEstado
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoEstado_Obtener] 
	@Buscar VARCHAR(250)=''
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdTipoEstado'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdTipoEstado,
			Nombre,
			Observacion,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdTipoEstado' AND @DireccionOrden = 'desc' THEN  tipes.IdTipoEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdTipoEstado' AND @DireccionOrden = 'asc' THEN tipes.IdTipoEstado END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN tipes.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN tipes.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN tipes.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN tipes.Observacion  END) ASC
			) AS Item 
			,tipes.IdTipoEstado
			,tipes.Nombre
			,tipes.Observacion
			,COUNT(tipes.IdTipoEstado) OVER ( )  AS TotalItems 
		FROM Maestro.TipoEstado tipes
		WHERE (tipes.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR tipes.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoEstado_ObtenerPorId]
	@IdTipoEstado INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.TipoEstado
	WHERE IdTipoEstado = @IdTipoEstado
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoEstado_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoEstado_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoEstado_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoEstado_Registrar] 
(
	@Nombre VARCHAR(100)
    ,@Observacion VARCHAR(250)
)
AS
BEGIN
	
	DECLARE @IdTipoEstado INT
	SET @IdTipoEstado = (SELECT (ISNULL(MAX(IdTipoEstado), 0) + 1) FROM Maestro.TipoEstado)

	INSERT INTO Maestro.TipoEstado(
		IdTipoEstado
		,Nombre
		,Observacion
		)
	VALUES (
		@IdTipoEstado
		,@Nombre
		,@Observacion
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_Combo] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_Combo]
@IdEstado INT = 1
AS
BEGIN
	SELECT	IdTipoIncidencia,
			Nombre
	FROM Maestro.TipoIncidencia
	WHERE IdEstado = @IdEstado
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_Eliminar] 
(
	@IdTipoIncidencia INT
)
AS
BEGIN
	DELETE FROM Maestro.TipoIncidencia
	WHERE IdTipoIncidencia = @IdTipoIncidencia
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_Modificar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_Modificar] 
(
	@IdTipoIncidencia INT
	,@Nombre VARCHAR(100)
	,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Maestro.TipoIncidencia
		SET Nombre = @Nombre
		,Observacion= @Observacion
		,IdEstado = @IdEstado
	WHERE IdTipoIncidencia = @IdTipoIncidencia
		
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_Obtener] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdTipoIncidencia'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdTipoIncidencia,
			Nombre,
			Observacion,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdTipoIncidencia' AND @DireccionOrden = 'desc' THEN  tipin.IdTipoIncidencia END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdTipoIncidencia' AND @DireccionOrden = 'asc' THEN tipin.IdTipoIncidencia END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN tipin.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN tipin.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN tipin.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN tipin.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN tipin.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN tipin.IdEstado  END) ASC
			) AS Item 
			,tipin.IdTipoIncidencia
			,tipin.Nombre
			,tipin.Observacion
			,tipin.IdEstado
			,COUNT(tipin.IdTipoIncidencia) OVER ( )  AS TotalItems 
		FROM Maestro.TipoIncidencia tipin
		WHERE (tipin.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR tipin.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND tipin.IdEstado = CASE @IdEstado
								WHEN 0
									THEN tipin.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_ObtenerPorId]
	@IdTipoIncidencia INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT * FROM Maestro.TipoIncidencia
	WHERE IdTipoIncidencia = @IdTipoIncidencia
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_TipoIncidencia_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Maestro].[usp_TipoIncidencia_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Maestro].[usp_TipoIncidencia_Registrar] AS' 
END
GO
ALTER PROCEDURE [Maestro].[usp_TipoIncidencia_Registrar] 
(
	@Nombre VARCHAR(100)
    ,@Observacion VARCHAR(250)
	,@IdEstado INT
)
AS
BEGIN

	INSERT INTO Maestro.TipoIncidencia(
		Nombre
		,Observacion
		,IdEstado
		)
	VALUES (
		@Nombre
		,@Observacion
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Maestro].[usp_Ubigeo_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_Combo] AS' 
END
GO
ALTER PROCEDURE [Seguimiento].[usp_Correo_Combo]
@IdTipoCorreo INT = 1
AS
BEGIN
	SELECT	IdCorreo,
			Destinatario,
			Asunto
	FROM Seguimiento.Correo
	WHERE IdTipoCorreo= @IdTipoCorreo
	ORDER BY Destinatario
END
GO
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Seguimiento].[usp_Correo_Eliminar] 
(
	@IdCorreo INT
)
AS
BEGIN
	DELETE FROM Seguimiento.Correo
	WHERE IdCorreo = @IdCorreo
		
END
GO
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_Modificar] AS' 
END
GO

ALTER PROCEDURE [Seguimiento].[usp_Correo_Modificar] 
(
	@IdCorreo INT
	,@IdTipoCorreo INT
	,@Destinatario VARCHAR(100)
	,@Copia VARCHAR(500)
	,@Asunto VARCHAR(250)
	,@Cuerpo nVARCHAR(max)
	,@Enviado bit
)
AS
BEGIN
	UPDATE Seguimiento.Correo
		SET IdTipoCorreo = @IdTipoCorreo
		,Destinatario = @Destinatario
		,Copia = @Copia
		,Asunto = @Asunto
		,Cuerpo = @Cuerpo
		,Enviado = @Enviado
	WHERE IdCorreo = @IdCorreo
		
END
GO
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_Obtener] AS' 
END
GO

ALTER PROCEDURE [Seguimiento].[usp_Correo_Obtener] 
	@Destinatario VARCHAR(500)=''
	,@Asunto VARCHAR(250)=''
	,@IdTipoCorreo INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdCorreo'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdCorreo,
			Destinatario,
			Asunto,
			IdTipoCorreo,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdCorreo' AND @DireccionOrden = 'desc' THEN  seg.IdCorreo END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdCorreo' AND @DireccionOrden = 'asc' THEN seg.IdCorreo END) ASC,
					(CASE WHEN @ColumnaOrden = 'Destinatario' AND @DireccionOrden = 'desc' THEN seg.Destinatario END) DESC,
					(CASE WHEN @ColumnaOrden = 'Destinatario' AND @DireccionOrden = 'asc' THEN seg.Destinatario  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Asunto' AND @DireccionOrden = 'desc' THEN seg.Asunto END) DESC,
					(CASE WHEN @ColumnaOrden = 'Asunto' AND @DireccionOrden = 'asc' THEN seg.Asunto  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdTipoCorreo' AND @DireccionOrden = 'desc' THEN seg.IdTipoCorreo END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdTipoCorreo' AND @DireccionOrden = 'asc' THEN seg.IdTipoCorreo  END) ASC
			) AS Item 
			,seg.IdCorreo
			,seg.Destinatario
			,seg.Asunto
			,seg.IdTipoCorreo
			,COUNT(seg.IdCorreo) OVER ( )  AS TotalItems 
		FROM Seguimiento.Correo seg
		WHERE seg.Destinatario LIKE '%' + ISNULL(@Destinatario,'') + '%'
			AND seg.Asunto LIKE '%' + ISNULL(@Asunto,'') + '%'
			AND seg.IdTipoCorreo = CASE @IdTipoCorreo
								WHEN 0
									THEN seg.IdTipoCorreo
								ELSE @IdTipoCorreo
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Seguimiento].[usp_Correo_ObtenerPorId]
	@IdCorreo INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT segcor.IdCorreo
	,tipco.Nombre TipoCorreo
	,segcor.Destinatario
	,segcor.Asunto
	FROM Seguimiento.Correo segcor
	INNER JOIN Maestro.TipoCorreo tipco ON segcor.IdTipoCorreo = tipco.IdTipoCorreo
	WHERE segcor.IdCorreo = @IdCorreo
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguimiento].[usp_Correo_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguimiento].[usp_Correo_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguimiento].[usp_Correo_Registrar] AS' 
END
GO

ALTER PROCEDURE [Seguimiento].[usp_Correo_Registrar] 
(
	 @IdTipoCorreo INT
    ,@Destinatario VARCHAR(500)
	,@Copia VARCHAR(500)
	,@Asunto VARCHAR(250)
	,@Cuerpo nVARCHAR(max)
	,@Enviado bit
)
AS
BEGIN
	INSERT INTO Seguimiento.Correo(
		IdTipoCorreo
		,Destinatario
		,Copia
		,Asunto
		,Cuerpo
		,Enviado
		)
	VALUES (
		@IdTipoCorreo
		,@Destinatario
		,@Copia
		,@Asunto
		,@Cuerpo
		,@Enviado
		)
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_Combo] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_Combo]
@IdAccesoPadre INT = 1
AS
BEGIN
	SELECT	IdAcceso,
		    Nombre,
			Descripcion,
			Tipo
	FROM Seguridad.Acceso
	WHERE IdAccesoPadre = @IdAccesoPadre
	ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_Eliminar] 
(
	@Id INT
)
AS
BEGIN
	DELETE FROM Seguridad.Acceso
	WHERE IdAcceso = @Id
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_Modificar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_Modificar] 
(
	@IdAcceso INT
    ,@IdAccesoPadre INT 
    ,@Nombre VARCHAR(100)
	,@Descripcion VARCHAR(200)
	,@Url VARCHAR(200)
	,@Icono VARCHAR(50)
	,@Orden INT
	,@Tipo VARCHAR(20)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Seguridad.Acceso
		SET IdAccesoPadre = @IdAccesoPadre
		,Nombre = @Nombre
		,Descripcion = @Descripcion
		,Url = @Url
		,Icono = @Icono
		,Orden = @Orden
		,Tipo = @Tipo
		,IdEstado = @IdEstado
	WHERE IdAcceso = @IdAcceso
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_Obtener] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdAcceso'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @Desde INT
	DECLARE @Hasta INT
	SET @Desde = ( @NumeroPagina - 1 ) * @CantidadRegistros 
	SET @Hasta = ( @NumeroPagina * @CantidadRegistros ) + 1
	
	SELECT	Item,
			IdAcceso,
			Nombre,
			Url,
			Tipo,
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdAcceso' AND @DireccionOrden = 'desc' THEN  acce.IdAcceso END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdAcceso' AND @DireccionOrden = 'asc' THEN acce.IdAcceso END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN acce.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN acce.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Url' AND @DireccionOrden = 'desc' THEN  acce.Url END) DESC,
					(CASE WHEN @ColumnaOrden = 'Url' AND @DireccionOrden = 'asc' THEN acce.Url END) ASC,
					(CASE WHEN @ColumnaOrden = 'Tipo' AND @DireccionOrden = 'desc' THEN acce.Tipo END) DESC,
					(CASE WHEN @ColumnaOrden = 'Tipo' AND @DireccionOrden = 'asc' THEN acce.Tipo  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN acce.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN acce.IdEstado  END) ASC
			) AS Item 
			,acce.IdAcceso
			,acce.Nombre
			,acce.Url
			,acce.Tipo
			,acce.IdEstado
			,COUNT(acce.IdAcceso) OVER ( )  AS TotalItems 
		FROM Seguridad.Acceso acce
		WHERE (acce.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR acce.Descripcion LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR acce.Url LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR acce.Icono LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR acce.Tipo LIKE '%' + ISNULL(@Buscar,'') + '%')
			AND acce.IdEstado = CASE @IdEstado
								WHEN 0
									THEN acce.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_ObtenerPorId]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT IdAccesoPadre
	,Nombre
	,Descripcion
	,Url
	,Tipo
	FROM Seguridad.Acceso 
	WHERE IdAcceso = @Id
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_ObtenerPorIdUsuario]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_ObtenerPorIdUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_ObtenerPorIdUsuario] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_ObtenerPorIdUsuario] --1
@IdUsuario INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DISTINCT accePad.IdAcceso IdAccesoLLave
		,accePad.Nombre NombreAccesoPadre
		,accePad.Descripcion DescripcionPadre
		,accePad.Icono IconoPadre
		,accePad.Orden OrdenPadre
		,accePad.Tipo TipoPadre

		,acceHij.IdAccesoPadre IdAccesoLLave
		,acceHij.Nombre NombreAccesoHijo
		,acceHij.Descripcion DescripcionHijo
		,acceHij.Url UrlHijo
		,acceHij.Icono IconoHijo
		,acceHij.Orden OrdenHijo
		,acceHij.Tipo TipoHijo
	FROM Asignacion.RolUsuario rolUsu
	INNER JOIN Seguridad.AccesoRol acceRol ON rolUsu.IdRol = acceRol.IdRol
	INNER JOIN Seguridad.Acceso accePad ON acceRol.IdAcceso = accePad.IdAcceso
	INNER JOIN Seguridad.Acceso acceHij ON accePad.IdAcceso = acceHij.IdAccesoPadre
	INNER JOIN Seguridad.Rol ro ON rolUsu.IdRol = ro.IdRol
	WHERE rolUsu.IdUsuario = @IdUsuario
		AND accePad.IdEstado = 1
		AND ro.IdEstado = 1
	ORDER BY accePad.Orden

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Acceso_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Acceso_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Acceso_Registrar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Acceso_Registrar] 
(
    @IdAccesoPadre INT 
    ,@Nombre VARCHAR(100)
	,@Descripcion VARCHAR(200)
	,@Url VARCHAR(200)
	,@Icono VARCHAR(50)
	,@Orden INT
	,@Tipo VARCHAR(20)
	,@IdEstado INT
)
AS
BEGIN
	INSERT INTO Seguridad.Acceso(
		IdAccesoPadre
		,Nombre
		,Descripcion
		,Url
		,Icono
		,Orden
		,Tipo
		,IdEstado
		)
	VALUES (
		@IdAccesoPadre
		,@Nombre
		,@Descripcion
		,@Url
		,@Icono
		,@Orden
		,@Tipo
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Combo]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
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
	@Buscar VARCHAR(250)=''
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
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdRol' AND @DireccionOrden = 'desc' THEN  ro.IdRol END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdRol' AND @DireccionOrden = 'asc' THEN ro.IdRol END) ASC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'desc' THEN ro.Nombre END) DESC,
					(CASE WHEN @ColumnaOrden = 'Nombre' AND @DireccionOrden = 'asc' THEN ro.Nombre  END) ASC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'desc' THEN ro.Observacion END) DESC,
					(CASE WHEN @ColumnaOrden = 'Observacion' AND @DireccionOrden = 'asc' THEN ro.Observacion  END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN ro.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN ro.IdEstado  END) ASC
			) AS Item 
			,ro.IdRol
			,ro.Nombre
			,ro.Observacion
			,ro.IdEstado
			,COUNT(ro.IdRol) OVER ( )  AS TotalItems 
		FROM Seguridad.Rol ro
		WHERE (ro.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
			OR ro.Observacion LIKE '%' + ISNULL(@Buscar,'') + '%')
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
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
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
	SELECT *
	FROM Seguridad.Rol ro
	WHERE ro.IdRol = @IdRol
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Rol_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
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
	@Nombre VARCHAR(100)
	,@Observacion VARCHAR(500) = NULL
	,@IdEstado INT
AS
BEGIN

	DECLARE @IdRol INT
	SET @IdRol = (SELECT (ISNULL(MAX(IdRol), 0) + 1) FROM Seguridad.Rol)

	INSERT INTO Seguridad.Rol (
		IdRol
		,Nombre
		,Observacion
		,IdEstado
		)
	VALUES (
		@IdRol
		,@Nombre
		,@Observacion
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Combo] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Combo]
@IdEstado INT = 1
AS
BEGIN
	SELECT	IdUsuario,
		    UserName,
			Nombre,
			ApellidoPaterno,
			ApellidoMaterno
	FROM Seguridad.Usuario
	WHERE IdEstado = @IdEstado
	ORDER BY UserName
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Eliminar] 
(
	@IdUsuario INT
)
AS
BEGIN
	DELETE FROM Seguridad.Usuario
	WHERE IdUsuario = @IdUsuario
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Login]    Script Date: 26/11/2018 01:29:18 ******/
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
	INNER JOIN Asignacion.RolUsuario rolUsu ON usu.IdUsuario = rolUsu.IdUsuario
	INNER JOIN Seguridad.Rol ro ON rolUsu.IdRol = ro.IdRol
	WHERE usu.UserName = @UserName
		AND usu.Contrasenia = @Contrasenia
		AND usu.IdEstado = 1
		AND rolUsu.IdEstado = 1
		AND ro.IdEstado = 1
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Modificar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Modificar] 
(
	@IdUsuario INT
    ,@UserName VARCHAR(50)
	,@Contrasenia nVARCHAR(max)
	,@Nombre VARCHAR(50)
	,@ApellidoPaterno VARCHAR(50)
	,@ApellidoMaterno VARCHAR(50)
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Seguridad.Usuario
		SET UserName = @UserName
		,Contrasenia = @Contrasenia
		,Nombre = @Nombre
		,ApellidoPaterno = @ApellidoPaterno
		,ApellidoMaterno = @ApellidoMaterno
		,IdEstado = @IdEstado
	WHERE IdUsuario = @IdUsuario
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Obtener] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Obtener] 
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
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
			IdUsuario,
			UserName,
			Nombre,
			LTRIM(RTRIM(ISNULL(ApellidoPaterno,'') + ' ' + ISNULL(ApellidoMaterno,''))) Apellidos,
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
			,usu.IdUsuario
			,usu.UserName
			,usu.Nombre
			,usu.ApellidoPaterno
			,usu.ApellidoMaterno
			,usu.IdEstado
			,COUNT(usu.IdUsuario) OVER ( )  AS TotalItems 
		FROM Seguridad.Usuario usu
		WHERE (usu.ApellidoPaterno LIKE '%' + ISNULL(@Buscar,'') + '%'
		OR usu.ApellidoMaterno LIKE '%' + ISNULL(@Buscar,'') + '%'
		OR usu.Nombre LIKE '%' + ISNULL(@Buscar,'') + '%'
		OR usu.UserName LIKE '%' + ISNULL(@Buscar,'') + '%')
		AND usu.IdEstado = CASE @IdEstado
								WHEN 0 THEN usu.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_ObtenerPendientesPorArea]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_ObtenerPendientesPorArea]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_ObtenerPendientesPorArea] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_ObtenerPendientesPorArea] --'',1,1,'RazonSocial','asc'
	@Buscar VARCHAR(250)=''
	,@IdEstado INT
	,@IdArea INT
	,@ColumnaOrden VARCHAR(100) = 'IdUsuario'
	,@DireccionOrden VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;
	
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
			AND usu.IdUsuario NOT IN (SELECT areUsu.IdUsuario FROM Asignacion.AreaUsuario areUsu
										WHERE areUsu.IdArea = @IdArea)
	) AS Resultado
	--WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_ObtenerPendientesPorRol]    Script Date: 26/11/2018 01:29:18 ******/
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
			AND usu.IdUsuario NOT IN (SELECT rolUsu.IdUsuario FROM Asignacion.RolUsuario rolUsu
										WHERE rolUsu.IdRol = @IdRol)
	) AS Resultado
	--WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_ObtenerPorId]
	@IdUsuario INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT *
	FROM Seguridad.Usuario 
	WHERE IdUsuario = @IdUsuario

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[usp_Usuario_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[usp_Usuario_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[usp_Usuario_Registrar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[usp_Usuario_Registrar] 
(
    @UserName VARCHAR(50)
	,@Contrasenia nVARCHAR(max)
	,@Nombre VARCHAR(50)
	,@ApellidoPaterno VARCHAR(50)
	,@ApellidoMaterno VARCHAR(50)
	,@IdEstado INT
)
AS
BEGIN
	
	DECLARE @IdUsuario INT
	SET @IdUsuario = (SELECT (ISNULL(MAX(IdUsuario), 0) + 1) FROM Seguridad.Usuario)

	INSERT INTO Seguridad.Usuario(
		IdUsuario
		,UserName
		,Contrasenia
		,Nombre
		,ApellidoPaterno
		,ApellidoMaterno
		,IdEstado
		)
	VALUES (
		@IdUsuario
		,@UserName
		,@Contrasenia
		,@Nombre
		,@ApellidoPaterno
		,@ApellidoMaterno
		,@IdEstado
		)
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_Combo]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_Combo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_Combo] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_Combo]
@IdRol INT = 1
AS
BEGIN
	SELECT	IdRolUsuario,
		    IdUsuario,
			IdEstado
	FROM Seguridad.RolUsuario
	WHERE IdRol = @IdRol
	ORDER BY IdRolUsuario
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_Eliminar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_Eliminar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_Eliminar] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_Eliminar] 
(
	@IdRolUsuario INT
)
AS
BEGIN
	DELETE FROM Seguridad.RolUsuario
	WHERE IdRolUsuario = @IdRolUsuario
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_Modificar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_Modificar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_Modificar] AS' 
END
GO

ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_Modificar] 
(
	@IdRolUsuario INT
    ,@IdRol INT
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
	UPDATE Seguridad.RolUsuario
		SET IdRolUsuario = @IdRolUsuario
		,IdRol = @IdRol
		,IdUsuario = @IdUsuario
		,IdEstado = @IdEstado
	WHERE IdRolUsuario = @IdRolUsuario
		
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_Obtener]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_Obtener]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_Obtener] AS' 
END
GO

ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_Obtener] 
	@IdRol INT
	,@IdEstado INT
	,@NumeroPagina INT
	,@CantidadRegistros INT
	,@ColumnaOrden VARCHAR(100) = 'IdRolUsuario'
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
			IdEstado,
			TotalItems
	FROM 
	(
		SELECT
			ROW_NUMBER()OVER(ORDER BY
					(CASE WHEN @ColumnaOrden = 'IdRolUsuario' AND @DireccionOrden = 'desc' THEN  rolu.IdRolUsuario END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdRolUsuario' AND @DireccionOrden = 'asc' THEN rolu.IdRolUsuario END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'desc' THEN  rolu.IdUsuario END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdUsuario' AND @DireccionOrden = 'asc' THEN rolu.IdUsuario END) ASC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'desc' THEN rolu.IdEstado END) DESC,
					(CASE WHEN @ColumnaOrden = 'IdEstado' AND @DireccionOrden = 'asc' THEN rolu.IdEstado  END) ASC
			) AS Item 
			,rolu.IdRolUsuario
			,rolu.IdUsuario
			,rolu.IdEstado
			,COUNT(rolu.IdRolUsuario) OVER ( )  AS TotalItems 
		FROM Seguridad.RolUsuario rolu
		WHERE rolu.IdEstado = CASE @IdEstado
								WHEN 0
									THEN rolu.IdEstado
								ELSE @IdEstado
							  END
	) AS Resultado
	WHERE Item > @Desde AND Item < @Hasta
	
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_ObtenerPorId]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_ObtenerPorId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_ObtenerPorId] AS' 
END
GO
ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_ObtenerPorId]
	@IdRolUsuario INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT rolu.IdRol
	,rolu.IdUsuario
	,est.Nombre Estado
	FROM Seguridad.RolUsuario rolu
	INNER JOIN Maestro.Estado est ON est.IdEstado = rolu.IdEstado
	WHERE rolu.IdRolUsuario = @IdRolUsuario
    GROUP BY rolu.IdRol,rolu.IdUsuario,est.Nombre
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Seguridad].[z_usp_RolUsuario_Registrar]    Script Date: 26/11/2018 01:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Seguridad].[z_usp_RolUsuario_Registrar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [Seguridad].[z_usp_RolUsuario_Registrar] AS' 
END
GO

ALTER PROCEDURE [Seguridad].[z_usp_RolUsuario_Registrar] 
(
	 @IdRolUsuario INT
    ,@IdRol INT
	,@IdUsuario INT
	,@IdEstado INT
)
AS
BEGIN
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
GO
USE [master]
GO
ALTER DATABASE [DB_A25F3D_HelpDesk] SET  READ_WRITE 
GO
