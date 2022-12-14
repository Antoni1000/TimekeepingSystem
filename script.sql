USE [master]
GO
/****** Object:  Database [TimekeepingSystemDB]    Script Date: 8/22/2022 4:43:26 AM ******/
CREATE DATABASE [TimekeepingSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimekeepingAndPayrollSystemDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\TimekeepingAndPayrollSystemDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TimekeepingAndPayrollSystemDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\TimekeepingAndPayrollSystemDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TimekeepingSystemDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimekeepingSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimekeepingSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimekeepingSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimekeepingSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TimekeepingSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimekeepingSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TimekeepingSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [TimekeepingSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimekeepingSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimekeepingSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimekeepingSystemDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TimekeepingSystemDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TimekeepingSystemDB', N'ON'
GO
ALTER DATABASE [TimekeepingSystemDB] SET QUERY_STORE = OFF
GO
USE [TimekeepingSystemDB]
GO
/****** Object:  Table [dbo].[Emp_Leave]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Leave](
	[lid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[from] [datetime] NOT NULL,
	[to] [datetime] NULL,
 CONSTRAINT [PK_Emp_Leave] PRIMARY KEY CLUSTERED 
(
	[lid] ASC,
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] NOT NULL,
	[ename] [varchar](150) NOT NULL,
	[rid] [int] NOT NULL,
	[insurance] [float] NULL,
	[fringe_benefits] [float] NULL,
	[bonus] [float] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[hid] [int] NOT NULL,
	[hname] [varchar](150) NOT NULL,
	[from] [date] NOT NULL,
	[to] [date] NULL,
	[salaryOT] [float] NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[rname] [varchar](150) NOT NULL,
	[basic_salary] [float] NOT NULL,
	[glone] [float] NOT NULL,
	[pay_rate] [float] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[checkin] [time](7) NOT NULL,
	[checkout] [time](7) NOT NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeForLeave]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeForLeave](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[lname] [varchar](150) NOT NULL,
	[symbols] [varchar](50) NOT NULL,
	[salary] [float] NULL,
 CONSTRAINT [PK_TypeForLeave] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkDate]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkDate](
	[wid] [int] IDENTITY(1,1) NOT NULL,
	[from] [date] NOT NULL,
	[to] [date] NULL,
 CONSTRAINT [PK_WorkDate] PRIMARY KEY CLUSTERED 
(
	[wid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkingTime]    Script Date: 8/22/2022 4:43:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingTime](
	[tid] [int] NOT NULL,
	[wid] [int] NOT NULL,
	[eid] [int] NOT NULL,
 CONSTRAINT [PK_WorkingTime] PRIMARY KEY CLUSTERED 
(
	[tid] ASC,
	[wid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emp_Leave]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Leave_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Emp_Leave] CHECK CONSTRAINT [FK_Emp_Leave_Employee]
GO
ALTER TABLE [dbo].[Emp_Leave]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Leave_TypeForLeave] FOREIGN KEY([lid])
REFERENCES [dbo].[TypeForLeave] ([lid])
GO
ALTER TABLE [dbo].[Emp_Leave] CHECK CONSTRAINT [FK_Emp_Leave_TypeForLeave]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[WorkingTime]  WITH CHECK ADD  CONSTRAINT [FK_WorkingTime_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[WorkingTime] CHECK CONSTRAINT [FK_WorkingTime_Employee]
GO
ALTER TABLE [dbo].[WorkingTime]  WITH CHECK ADD  CONSTRAINT [FK_WorkingTime_Timesheet] FOREIGN KEY([tid])
REFERENCES [dbo].[Timesheet] ([tid])
GO
ALTER TABLE [dbo].[WorkingTime] CHECK CONSTRAINT [FK_WorkingTime_Timesheet]
GO
ALTER TABLE [dbo].[WorkingTime]  WITH CHECK ADD  CONSTRAINT [FK_WorkingTime_WorkDate] FOREIGN KEY([wid])
REFERENCES [dbo].[WorkDate] ([wid])
GO
ALTER TABLE [dbo].[WorkingTime] CHECK CONSTRAINT [FK_WorkingTime_WorkDate]
GO
USE [master]
GO
ALTER DATABASE [TimekeepingSystemDB] SET  READ_WRITE 
GO
