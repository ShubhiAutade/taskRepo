USE [master]
GO
/****** Object:  Database [EMPLogin]    Script Date: 29-07-2022 09:16:33 ******/
CREATE DATABASE [EMPLogin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EMPLogin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EMPLogin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EMPLogin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EMPLogin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EMPLogin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EMPLogin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EMPLogin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EMPLogin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EMPLogin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EMPLogin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EMPLogin] SET ARITHABORT OFF 
GO
ALTER DATABASE [EMPLogin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EMPLogin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EMPLogin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EMPLogin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EMPLogin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EMPLogin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EMPLogin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EMPLogin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EMPLogin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EMPLogin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EMPLogin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EMPLogin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EMPLogin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EMPLogin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EMPLogin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EMPLogin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EMPLogin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EMPLogin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EMPLogin] SET  MULTI_USER 
GO
ALTER DATABASE [EMPLogin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EMPLogin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EMPLogin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EMPLogin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EMPLogin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EMPLogin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EMPLogin] SET QUERY_STORE = OFF
GO
USE [EMPLogin]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 29-07-2022 09:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateofBirth] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Register]    Script Date: 29-07-2022 09:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Register]
(
@Id int=null,
@FirstName nvarchar(50)=null,
@LastName nvarchar(50)=null,
@DateOfBirth nvarchar(50)=null,
@EmailAddress nvarchar(50)=null,
@Password nvarchar(50)=null,
@ConfirmPassword nvarchar(50)=null,
@Type nvarchar(50)=null,
@Flag nvarchar(50)=null
)
as 
if(@Flag='Save')
begin
insert into tblLogin values (@FirstName,@LastName,@DateOfBirth,@EmailAddress,@Password,@ConfirmPassword,@Type)
end
If(@flag='Login')
begin
select *  from tblLogin where EmailAddress=@EmailAddress and Password=@Password
end
if(@Flag='ShowEmployeeList')
begin
select * from tblLogin Where Type='Employee'
end
if(@Flag='ShowEmployeeDetails')
begin
select * from tblLogin Where Type='Employee' and Id=@Id
end
if(@Flag='Update')
begin
Update  tblLogin set FirstName=@FirstName,LastName=@LastName,DateofBirth=@DateOfBirth,EmailAddress=@EmailAddress where Id=@Id
end
if(@Flag='DeleteUser')
begin
Delete from tblLogin where Id=@Id
end

GO
USE [master]
GO
ALTER DATABASE [EMPLogin] SET  READ_WRITE 
GO
