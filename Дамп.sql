USE [master]
GO
/****** Object:  Database [kyrsovay]    Script Date: 12.05.2022 19:59:50 ******/
CREATE DATABASE [kyrsovay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kyrsovay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\kyrsovay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kyrsovay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\kyrsovay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [kyrsovay] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kyrsovay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kyrsovay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kyrsovay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kyrsovay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kyrsovay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kyrsovay] SET ARITHABORT OFF 
GO
ALTER DATABASE [kyrsovay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kyrsovay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kyrsovay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kyrsovay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kyrsovay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kyrsovay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kyrsovay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kyrsovay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kyrsovay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kyrsovay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kyrsovay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kyrsovay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kyrsovay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kyrsovay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kyrsovay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kyrsovay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kyrsovay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kyrsovay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kyrsovay] SET  MULTI_USER 
GO
ALTER DATABASE [kyrsovay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kyrsovay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kyrsovay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kyrsovay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kyrsovay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kyrsovay] SET QUERY_STORE = OFF
GO
USE [kyrsovay]
GO
/****** Object:  Table [dbo].[Medicaments]    Script Date: 12.05.2022 19:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicaments](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[price] [decimal](4, 2) NOT NULL,
	[recept] [bit] NOT NULL,
	[forma_vyp] [varchar](50) NOT NULL,
	[godnost] [date] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_Medicaments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_lek]    Script Date: 12.05.2022 19:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_lek](
	[id] [int] NOT NULL,
	[id_Med] [int] NOT NULL,
	[id_Postavka] [int] NOT NULL,
 CONSTRAINT [PK_Post_lek] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Sotrud]    Script Date: 12.05.2022 19:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Sotrud](
	[id] [int] NOT NULL,
	[id_sotrudnik] [int] NOT NULL,
	[id_postavka] [int] NOT NULL,
 CONSTRAINT [PK_Post_Sotrud] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postavka]    Script Date: 12.05.2022 19:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavka](
	[id] [int] NOT NULL,
	[data] [date] NOT NULL,
	[id_med] [int] NOT NULL,
	[count] [int] NOT NULL,
	[price] [decimal](4, 2) NOT NULL,
	[id_sotrud] [int] NOT NULL,
 CONSTRAINT [PK_Postavka] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sotrudnik]    Script Date: 12.05.2022 19:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sotrudnik](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[patronymic] [varchar](50) NULL,
	[post] [varchar](100) NOT NULL,
 CONSTRAINT [PK_sotrudnik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Post_lek]  WITH CHECK ADD  CONSTRAINT [FK_Post_lek_Medicaments] FOREIGN KEY([id_Med])
REFERENCES [dbo].[Medicaments] ([id])
GO
ALTER TABLE [dbo].[Post_lek] CHECK CONSTRAINT [FK_Post_lek_Medicaments]
GO
ALTER TABLE [dbo].[Post_lek]  WITH CHECK ADD  CONSTRAINT [FK_Post_lek_Postavka] FOREIGN KEY([id_Postavka])
REFERENCES [dbo].[Postavka] ([id])
GO
ALTER TABLE [dbo].[Post_lek] CHECK CONSTRAINT [FK_Post_lek_Postavka]
GO
ALTER TABLE [dbo].[Post_Sotrud]  WITH CHECK ADD  CONSTRAINT [FK_Post_Sotrud_Postavka] FOREIGN KEY([id_postavka])
REFERENCES [dbo].[Postavka] ([id])
GO
ALTER TABLE [dbo].[Post_Sotrud] CHECK CONSTRAINT [FK_Post_Sotrud_Postavka]
GO
ALTER TABLE [dbo].[Post_Sotrud]  WITH CHECK ADD  CONSTRAINT [FK_Post_Sotrud_sotrudnik] FOREIGN KEY([id_sotrudnik])
REFERENCES [dbo].[sotrudnik] ([id])
GO
ALTER TABLE [dbo].[Post_Sotrud] CHECK CONSTRAINT [FK_Post_Sotrud_sotrudnik]
GO
ALTER TABLE [dbo].[Postavka]  WITH CHECK ADD  CONSTRAINT [FK_Postavka_Medicaments] FOREIGN KEY([id_med])
REFERENCES [dbo].[Medicaments] ([id])
GO
ALTER TABLE [dbo].[Postavka] CHECK CONSTRAINT [FK_Postavka_Medicaments]
GO
ALTER TABLE [dbo].[Postavka]  WITH CHECK ADD  CONSTRAINT [FK_Postavka_sotrudnik] FOREIGN KEY([id])
REFERENCES [dbo].[sotrudnik] ([id])
GO
ALTER TABLE [dbo].[Postavka] CHECK CONSTRAINT [FK_Postavka_sotrudnik]
GO
USE [master]
GO
ALTER DATABASE [kyrsovay] SET  READ_WRITE 
GO
