USE [master]
GO
/****** Object:  Database [HospitalManage]    Script Date: 2019/12/24 15:22:47 ******/
CREATE DATABASE [HospitalManage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HospitalManage', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HospitalManage.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HospitalManage_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HospitalManage_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HospitalManage] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HospitalManage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HospitalManage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HospitalManage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HospitalManage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HospitalManage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HospitalManage] SET ARITHABORT OFF 
GO
ALTER DATABASE [HospitalManage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HospitalManage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HospitalManage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HospitalManage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HospitalManage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HospitalManage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HospitalManage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HospitalManage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HospitalManage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HospitalManage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HospitalManage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HospitalManage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HospitalManage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HospitalManage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HospitalManage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HospitalManage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HospitalManage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HospitalManage] SET RECOVERY FULL 
GO
ALTER DATABASE [HospitalManage] SET  MULTI_USER 
GO
ALTER DATABASE [HospitalManage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HospitalManage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HospitalManage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HospitalManage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HospitalManage] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HospitalManage', N'ON'
GO
ALTER DATABASE [HospitalManage] SET QUERY_STORE = OFF
GO
USE [HospitalManage]
GO
/****** Object:  Table [dbo].[HospitalDT]    Script Date: 2019/12/24 15:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalDT](
	[hosId] [int] IDENTITY(1,1) NOT NULL,
	[hosName] [nvarchar](50) NOT NULL,
	[hosRoom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HospitalDB] PRIMARY KEY CLUSTERED 
(
	[hosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineDT]    Script Date: 2019/12/24 15:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineDT](
	[medId] [int] IDENTITY(1001,1) NOT NULL,
	[medName] [nvarchar](200) NOT NULL,
	[medPrice] [decimal](18, 0) NOT NULL,
	[medCount] [int] NOT NULL,
 CONSTRAINT [PK_MedicineDT] PRIMARY KEY CLUSTERED 
(
	[medId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientDT]    Script Date: 2019/12/24 15:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDT](
	[patId] [nvarchar](80) NOT NULL,
	[patName] [nvarchar](50) NOT NULL,
	[patAge] [int] NOT NULL,
	[patSex] [char](2) NULL,
	[patPlace] [nvarchar](200) NULL,
	[notPaid] [decimal](18, 0) NOT NULL,
	[patDocId] [int] NULL,
 CONSTRAINT [PK_PatientDT] PRIMARY KEY CLUSTERED 
(
	[patId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'医院工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HospitalDT', @level2type=N'COLUMN',@level2name=N'hosId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HospitalDT', @level2type=N'COLUMN',@level2name=N'hosName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在科室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HospitalDT', @level2type=N'COLUMN',@level2name=N'hosRoom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'药品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MedicineDT', @level2type=N'COLUMN',@level2name=N'medId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'药品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MedicineDT', @level2type=N'COLUMN',@level2name=N'medName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'药品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MedicineDT', @level2type=N'COLUMN',@level2name=N'medPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'药品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MedicineDT', @level2type=N'COLUMN',@level2name=N'medCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patAge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'待缴药费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'notPaid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约医生' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PatientDT', @level2type=N'COLUMN',@level2name=N'patDocId'
GO
USE [master]
GO
ALTER DATABASE [HospitalManage] SET  READ_WRITE 
GO
