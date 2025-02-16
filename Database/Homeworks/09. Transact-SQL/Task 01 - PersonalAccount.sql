USE [master]
GO
/****** Object:  Database [PersonalAccount]    Script Date: 20.10.2015 г. 18:13:30 ******/
CREATE DATABASE [PersonalAccount]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonalAccount', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL\MSSQL\DATA\PersonalAccount.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PersonalAccount_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL\MSSQL\DATA\PersonalAccount_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PersonalAccount] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonalAccount].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonalAccount] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonalAccount] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonalAccount] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonalAccount] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonalAccount] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonalAccount] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonalAccount] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonalAccount] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalAccount] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonalAccount] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonalAccount] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonalAccount] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonalAccount] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonalAccount] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonalAccount] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonalAccount] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonalAccount] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonalAccount] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonalAccount] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonalAccount] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonalAccount] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonalAccount] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonalAccount] SET RECOVERY FULL 
GO
ALTER DATABASE [PersonalAccount] SET  MULTI_USER 
GO
ALTER DATABASE [PersonalAccount] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonalAccount] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonalAccount] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonalAccount] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PersonalAccount] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PersonalAccount', N'ON'
GO
USE [PersonalAccount]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_CalculateInterest]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ufn_CalculateInterest](@sum money, @interestRate decimal, @numberOfMonth int)
		RETURNS money
AS
BEGIN
	RETURN @sum + (@sum + (@interestRate/12/100) * @numberOfMonth)
END
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Balance] [money] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[OldSum] [money] NOT NULL,
	[NewSum] [money] NOT NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (1, 1, 1973.0000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (2, 2, 101.0000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (4, 3, 1975.0500)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (5, 4, 156.2300)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (6, 5, 7896.9100)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (7, 6, 2568.1000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (8, 7, 1218.0000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (9, 8, 10.0000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (10, 9, 12365.0000)
INSERT [dbo].[Accounts] ([Id], [PersonId], [Balance]) VALUES (11, 10, 100000.0000)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([LogId], [AccountId], [OldSum], [NewSum]) VALUES (1, 1, 1823.0000, 1973.0000)
INSERT [dbo].[Logs] ([LogId], [AccountId], [OldSum], [NewSum]) VALUES (2, 8, 1368.0000, 1218.0000)
INSERT [dbo].[Logs] ([LogId], [AccountId], [OldSum], [NewSum]) VALUES (3, 7, 1568.1000, 2568.1000)
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (1, N'Irina', N'Filipova', N'8801011010')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (2, N'Sasho', N'Bojidarov', N'8902022020')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (3, N'Raya', N'Ignatieva', N'9003033030')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (4, N'Stanislava', N'Mihova', N'9104044040')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (5, N'Stanka', N'Radkova', N'9205055050')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (6, N'Kamen', N'Valeriev', N'9306066060')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (7, N'Nikol', N'Bogdanov', N'8707077070')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (8, N'Toma', N'Atanasov', N'8608088080')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (9, N'Mihail', N'Asenov', N'8509099090')
INSERT [dbo].[Persons] ([Id], [FirstName], [LastName], [SSN]) VALUES (10, N'Marin', N'Aleksiev', N'8410109191')
SET IDENTITY_INSERT [dbo].[Persons] OFF
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Persons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([Id])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Persons]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Accounts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Accounts]
GO
/****** Object:  StoredProcedure [dbo].[usp_DepositMoney]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_DepositMoney](@accountId int, @sumToDeposit money)
AS
DECLARE @currentBalance money = (SELECT Balance FROM Accounts WHERE Id = @accountId)

UPDATE Accounts
SET Balance = @currentBalance + @sumToDeposit
WHERE Id = @accountId


GO
/****** Object:  StoredProcedure [dbo].[usp_FullNameOfPersons]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_FullNameOfPersons]
AS
SELECT FirstName + ' ' + LastName AS [Full name]
FROM Persons


GO
/****** Object:  StoredProcedure [dbo].[usp_GiveInterestToPerson]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_GiveInterestToPerson](@accountId int,@interestRate decimal)
AS

DECLARE @sum MONEY = (SELECT Balance FROM Accounts WHERE Id = @accountID)
UPDATE Accounts
SET Balance = (@sum+@sum*(@interestRate/100)/12)
WHERE Id = @accountID


GO
/****** Object:  StoredProcedure [dbo].[usp_PersonsWithMoreMoneyThanParameter]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_PersonsWithMoreMoneyThanParameter](@amoutToCheck int)
AS
SELECT p.FirstName, p.LastName, a.Balance
FROM Persons p
	JOIN Accounts a
	ON p.Id = a.PersonId
	WHERE Balance > @amoutToCheck


GO
/****** Object:  StoredProcedure [dbo].[usp_WitdrawMoney]    Script Date: 20.10.2015 г. 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_WitdrawMoney](@accountId int, @sumToWitdraw money)
AS
DECLARE @currentBalance money = (SELECT Balance FROM Accounts WHERE Id = @accountId)

IF(@currentBalance > @sumToWitdraw)
BEGIN
UPDATE Accounts
SET Balance = @currentBalance - @sumToWitdraw
WHERE Id = @accountId
END
ELSE
BEGIN
PRINT 'Insufficient balance!'
END

GO
USE [master]
GO
ALTER DATABASE [PersonalAccount] SET  READ_WRITE 
GO
