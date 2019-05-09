USE [master]
GO
/****** Object:  Database [KB]    Script Date: 28-Mar-19 13:04:07 ******/
CREATE DATABASE [KB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\KB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\KB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KB] SET ARITHABORT OFF 
GO
ALTER DATABASE [KB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KB] SET  MULTI_USER 
GO
ALTER DATABASE [KB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KB] SET QUERY_STORE = OFF
GO
USE [KB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [KB]
GO
/****** Object:  Table [dbo].[Adresar]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](40) NULL,
	[Ulica] [nvarchar](40) NULL,
	[Broj] [varchar](10) NULL,
	[Mesto_id] [int] NULL,
	[Tel1] [varchar](15) NULL,
	[Email] [varchar](30) NULL,
	[MATBR] [varchar](13) NULL,
	[PIB] [varchar](9) NULL,
	[Ime] [nvarchar](30) NULL,
	[Prezime] [nvarchar](30) NULL,
	[TR] [varchar](20) NULL,
 CONSTRAINT [PK_Adr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dan]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[korisnik]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korisnik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[pass] [varchar](225) NULL,
	[ime] [varchar](225) NULL,
	[prezime] [varchar](225) NULL,
	[datum_rodj] [date] NULL,
	[login_date] [date] NULL,
	[login_time] [time](7) NULL,
	[tip_korisnika] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Koverat]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Koverat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](40) NULL,
 CONSTRAINT [PK_Kov] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lok]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lok](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NalogH]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NalogH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime] NULL,
	[Ulaz] [money] NULL,
	[Izlaz] [money] NULL,
	[Opis] [nvarchar](40) NULL,
 CONSTRAINT [PK_NalH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NalogL]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NalogL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nalog_Br] [int] NULL,
	[Datum] [datetime] NULL,
	[Ulaz] [money] NULL,
	[Izlaz] [money] NULL,
	[Vlasnik_ID] [int] NULL,
	[Koverat_ID] [int] NULL,
	[Adr_ID] [int] NULL,
	[Svrha_ID] [int] NULL,
	[ORG_ID] [int] NULL,
	[Br_rac] [nvarchar](20) NULL,
 CONSTRAINT [PK_NalL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Org]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Org](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](40) NULL,
 CONSTRAINT [PK_Org] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Osoba]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Osoba](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Racun]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racun](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [datetime] NULL,
	[Iznos] [money] NULL,
	[Placeno] [money] NULL,
	[Adr_ID] [int] NULL,
	[Svrha_ID] [int] NULL,
	[ORG_ID] [int] NULL,
	[Br_rac] [nvarchar](30) NULL,
	[Poziv] [nvarchar](30) NULL,
	[Dospeva] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stavke]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stavke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Namena] [varchar](40) NULL,
	[Trosak] [varchar](40) NULL,
 CONSTRAINT [Pkey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Svrha]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Svrha](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](40) NULL,
 CONSTRAINT [PK_Svr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Termin]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Termin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sat] [int] NULL,
	[Minut] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usluga]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usluga](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vlasnik]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vlasnik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](40) NULL,
 CONSTRAINT [PK_Vla] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZAK]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZAK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [int] NOT NULL,
	[Termin] [int] NOT NULL,
	[Lolacija] [int] NOT NULL,
	[Osoba] [int] NULL,
	[Korisnik] [int] NULL,
	[Rad] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NalogH] ADD  DEFAULT (getutcdate()) FOR [Datum]
GO
ALTER TABLE [dbo].[NalogL] ADD  DEFAULT (getutcdate()) FOR [Datum]
GO
ALTER TABLE [dbo].[Racun] ADD  DEFAULT (getutcdate()) FOR [Datum]
GO
ALTER TABLE [dbo].[Racun] ADD  DEFAULT (getutcdate()) FOR [Dospeva]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_AdrL] FOREIGN KEY([Adr_ID])
REFERENCES [dbo].[Adresar] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_AdrL]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_KoverL] FOREIGN KEY([Koverat_ID])
REFERENCES [dbo].[Koverat] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_KoverL]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_NalH] FOREIGN KEY([Nalog_Br])
REFERENCES [dbo].[NalogH] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_NalH]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_OrgL] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[Org] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_OrgL]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_SvrL] FOREIGN KEY([Svrha_ID])
REFERENCES [dbo].[Svrha] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_SvrL]
GO
ALTER TABLE [dbo].[NalogL]  WITH CHECK ADD  CONSTRAINT [FK_VlasnL] FOREIGN KEY([Vlasnik_ID])
REFERENCES [dbo].[Vlasnik] ([ID])
GO
ALTER TABLE [dbo].[NalogL] CHECK CONSTRAINT [FK_VlasnL]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Adr] FOREIGN KEY([Adr_ID])
REFERENCES [dbo].[Adresar] ([ID])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Adr]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Org] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[Org] ([ID])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Org]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Svr] FOREIGN KEY([Svrha_ID])
REFERENCES [dbo].[Svrha] ([ID])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Svr]
GO
/****** Object:  StoredProcedure [dbo].[Termini]    Script Date: 28-Mar-19 13:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Termini] 
@Sat_od integer,
@Sat_do integer, 
@Min_od integer, 
@Min_do integer,
@Min_Interval integer
AS
BEGIN
DECLARE @sat INT = @Sat_od;
DECLARE @min INT = @Min_od;
WHILE @sat < @Sat_do
BEGIN
WHILE @min < @Min_do
BEGIN
INSERT INTO Termin (Sat, Minut) VALUES (@sat, @min)
SET @min = @min + @Min_Interval;
END;
SET @sat = @sat + 1
SET @min = 0
END;
END;
GO
USE [master]
GO
ALTER DATABASE [KB] SET  READ_WRITE 
GO
