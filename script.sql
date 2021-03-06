USE [master]
GO
/****** Object:  Database [Appoitment]    Script Date: 15-07-2022 13:09:12 ******/
CREATE DATABASE [Appoitment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Appoitment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Appoitment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Appoitment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Appoitment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Appoitment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Appoitment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Appoitment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Appoitment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Appoitment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Appoitment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Appoitment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Appoitment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Appoitment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Appoitment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Appoitment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Appoitment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Appoitment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Appoitment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Appoitment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Appoitment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Appoitment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Appoitment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Appoitment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Appoitment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Appoitment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Appoitment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Appoitment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Appoitment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Appoitment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Appoitment] SET  MULTI_USER 
GO
ALTER DATABASE [Appoitment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Appoitment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Appoitment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Appoitment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Appoitment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Appoitment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Appoitment] SET QUERY_STORE = OFF
GO
USE [Appoitment]
GO
/****** Object:  Table [dbo].[tblpatientsDetalis]    Script Date: 15-07-2022 13:09:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpatientsDetalis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[DOB] [nvarchar](20) NULL,
	[Bloodgroup] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](max) NULL,
	[DateOfAppointment] [nvarchar](20) NULL,
	[PatientReport] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Doctor]    Script Date: 15-07-2022 13:09:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Doctor]
(
 @Id int = null,
 @Name nvarchar(50)=null,
 @Age nvarchar(50)=null,
 @DOB date =null,
 @Bloodgroup nvarchar(50)=null,
 @Address nvarchar(50)=null,
 @MobileNumber nvarchar(10)=null,
 @Email nvarchar(max)= null,
 @DateOfAppointment date =null,
 @flag nvarchar(50)=null
)
as
begin
if(@flag='AddCenter')
insert into tblpatientsDetails values(@Name,@Age,@DOB,@Bloodgroup,@Address,@MobileNumber,@Email,@DateOfAppointment)
end
begin
if(@flag='Showlist')
select * from tblpatientsDetalis
end
GO
USE [master]
GO
ALTER DATABASE [Appoitment] SET  READ_WRITE 
GO
