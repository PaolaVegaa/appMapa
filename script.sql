USE [master]
GO
/****** Object:  Database [dbMapa]    Script Date: 31/03/2022 21:28:18 ******/
CREATE DATABASE [dbMapa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbMapa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbMapa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbMapa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbMapa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbMapa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbMapa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbMapa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbMapa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbMapa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbMapa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbMapa] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbMapa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbMapa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbMapa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbMapa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbMapa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbMapa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbMapa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbMapa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbMapa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbMapa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbMapa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbMapa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbMapa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbMapa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbMapa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbMapa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbMapa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbMapa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbMapa] SET  MULTI_USER 
GO
ALTER DATABASE [dbMapa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbMapa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbMapa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbMapa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbMapa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbMapa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbMapa] SET QUERY_STORE = OFF
GO
USE [dbMapa]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 31/03/2022 21:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[idEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpresa] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[descripcion] [text] NULL,
	[url] [varchar](100) NULL,
	[latitud] [varchar](100) NULL,
	[longitud] [varchar](100) NULL,
	[idTipoEmpresa] [int] NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoEmpresa]    Script Date: 31/03/2022 21:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEmpresa](
	[idTipoEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipo] [varchar](50) NULL,
 CONSTRAINT [PK_tipoEmpresa] PRIMARY KEY CLUSTERED 
(
	[idTipoEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empresa] ON 

INSERT [dbo].[empresa] ([idEmpresa], [nombreEmpresa], [direccion], [descripcion], [url], [latitud], [longitud], [idTipoEmpresa]) VALUES (22, N'La Pradera', N'Sogamoso Boyaca Colombia', N'Hotel 5 estrellas con mas de 50 años de experiencia', N'No tiene', N'5.736975201870503', N'-72.91438730037807', 4)
INSERT [dbo].[empresa] ([idEmpresa], [nombreEmpresa], [direccion], [descripcion], [url], [latitud], [longitud], [idTipoEmpresa]) VALUES (23, N'La Maestranza Campestre', N'Sogamoso Boyaca Colombia', N'Restaurante con la mejor comida China de la Ciudad', N'No tiene', N'5.735791599130167', N'-72.91069255746005', 1)
INSERT [dbo].[empresa] ([idEmpresa], [nombreEmpresa], [direccion], [descripcion], [url], [latitud], [longitud], [idTipoEmpresa]) VALUES (24, N'Parqueadero Rio Chiquito', N'Sogamoso Boyaca Colombia', N'Parqueadero 24/7 con cubierta incluida', N'No tiene', N'5.726909829891781', N'-72.93884502328036', 2)
INSERT [dbo].[empresa] ([idEmpresa], [nombreEmpresa], [direccion], [descripcion], [url], [latitud], [longitud], [idTipoEmpresa]) VALUES (25, N'Farmacia Bella Vista', N'Sogamoso Boyaca Colombia', N'Farmacia con todos los medicamentos que necesite', N'No tiene', N'5.713629619339171', N'-72.92585240281223', 3)
INSERT [dbo].[empresa] ([idEmpresa], [nombreEmpresa], [direccion], [descripcion], [url], [latitud], [longitud], [idTipoEmpresa]) VALUES (26, N'Hotel el Cerrito', N'Sogamoso Boyaca Colombia', N'Hotel catalogado con la mayor comodidad de la ciudad', N'No tiene', N'5.730977099542146', N'-72.93775068200229', 4)
SET IDENTITY_INSERT [dbo].[empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[tipoEmpresa] ON 

INSERT [dbo].[tipoEmpresa] ([idTipoEmpresa], [nombreTipo]) VALUES (1, N'Restaurantes')
INSERT [dbo].[tipoEmpresa] ([idTipoEmpresa], [nombreTipo]) VALUES (2, N'Parqueaderos')
INSERT [dbo].[tipoEmpresa] ([idTipoEmpresa], [nombreTipo]) VALUES (3, N'Farmacias')
INSERT [dbo].[tipoEmpresa] ([idTipoEmpresa], [nombreTipo]) VALUES (4, N'Hoteles')
SET IDENTITY_INSERT [dbo].[tipoEmpresa] OFF
GO
ALTER TABLE [dbo].[empresa]  WITH CHECK ADD  CONSTRAINT [FK_empresa_tipoEmpresa] FOREIGN KEY([idTipoEmpresa])
REFERENCES [dbo].[tipoEmpresa] ([idTipoEmpresa])
GO
ALTER TABLE [dbo].[empresa] CHECK CONSTRAINT [FK_empresa_tipoEmpresa]
GO
USE [master]
GO
ALTER DATABASE [dbMapa] SET  READ_WRITE 
GO
