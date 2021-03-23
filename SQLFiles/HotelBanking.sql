USE [master]
GO
/****** Object:  Database [HotelBanking]    Script Date: 22/03/2021 1:26:52 AM ******/
CREATE DATABASE [HotelBanking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelBanking_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HotelBanking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotelBanking_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HotelBanking.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HotelBanking] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelBanking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelBanking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelBanking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelBanking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelBanking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelBanking] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelBanking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelBanking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelBanking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelBanking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelBanking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelBanking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelBanking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelBanking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelBanking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelBanking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelBanking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelBanking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelBanking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelBanking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelBanking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelBanking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelBanking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelBanking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelBanking] SET  MULTI_USER 
GO
ALTER DATABASE [HotelBanking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelBanking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelBanking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelBanking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelBanking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelBanking] SET QUERY_STORE = OFF
GO
USE [HotelBanking]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22/03/2021 1:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[RoomNo] [varchar](50) NULL,
	[CurrtDate] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 22/03/2021 1:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 22/03/2021 1:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[PaymentDate] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 22/03/2021 1:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [varchar](50) NULL,
	[Fair] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [Name], [Contact], [Address], [RoomNo], [CurrtDate]) VALUES (1, N'Westa', N'64648454', N'Papatoe', N'230', N'20/02/2021')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [UserName], [UserPassword]) VALUES (1, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ID], [CustomerID], [Amount], [PaymentDate]) VALUES (1, N'01', N'20', N'18/02/2021')
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([id], [RoomType], [Fair], [Status]) VALUES (1, N'Deluxe', N'20', N'Available')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
USE [master]
GO
ALTER DATABASE [HotelBanking] SET  READ_WRITE 
GO
