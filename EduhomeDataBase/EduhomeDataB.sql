USE [master]
GO
/****** Object:  Database [EduhomeDB]    Script Date: 16-Aug-21 07:47:26 ******/
CREATE DATABASE [EduhomeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EduhomeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EduhomeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EduhomeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EduhomeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EduhomeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EduhomeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EduhomeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EduhomeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EduhomeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EduhomeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EduhomeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EduhomeDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EduhomeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EduhomeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EduhomeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EduhomeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EduhomeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EduhomeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EduhomeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EduhomeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EduhomeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EduhomeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EduhomeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EduhomeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EduhomeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EduhomeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EduhomeDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EduhomeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EduhomeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EduhomeDB] SET  MULTI_USER 
GO
ALTER DATABASE [EduhomeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EduhomeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EduhomeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EduhomeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EduhomeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EduhomeDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EduhomeDB] SET QUERY_STORE = OFF
GO
USE [EduhomeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Image] [nvarchar](100) NULL,
	[IsAdmin] [bit] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Desc] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactMessages]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Subject] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ContactMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseJoins]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseJoins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[CourseId] [int] NOT NULL,
	[JoinAt] [datetime2](7) NULL,
	[IsAccepting] [bit] NULL,
 CONSTRAINT [PK_CourseJoins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseMessages]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL,
	[Date] [datetime2](7) NULL,
 CONSTRAINT [PK_CourseMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[About] [nvarchar](1500) NULL,
	[Apply] [nvarchar](1500) NULL,
	[Certification] [nvarchar](1500) NULL,
	[Starts] [datetime2](7) NULL,
	[Duration] [int] NULL,
	[ClassDuration] [tinyint] NULL,
	[Language] [nvarchar](50) NULL,
	[StudentsLimit] [int] NULL,
	[Fee] [float] NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTags]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_CourseTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventCategories]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_EventCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventMessages]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Subject] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_EventMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[StartDate] [datetime2](7) NULL,
	[StartHour] [time](7) NULL,
	[EndHour] [time](7) NULL,
	[Address] [nvarchar](150) NULL,
	[Desc] [nvarchar](1500) NULL,
	[EventCategoryId] [int] NOT NULL,
	[Name] [nvarchar](70) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Desc] [nvarchar](400) NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notices]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatAt] [datetime2](7) NOT NULL,
	[Text] [nvarchar](400) NULL,
 CONSTRAINT [PK_Notices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleLogo] [nvarchar](200) NULL,
	[HeaderLogo] [nvarchar](100) NULL,
	[FooterLogo] [nvarchar](100) NULL,
	[ChooseText] [nvarchar](1500) NULL,
	[Phone1] [nvarchar](30) NULL,
	[Phone2] [nvarchar](30) NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Site] [nvarchar](100) NULL,
	[AboutDesc] [nvarchar](1000) NULL,
	[AboutPic] [nvarchar](100) NULL,
	[AboutTitle] [nvarchar](100) NULL,
	[AboutVideo] [nvarchar](100) NULL,
	[ChooseTitle] [nvarchar](50) NULL,
	[ColorLogo] [nvarchar](100) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Pinteres] [nvarchar](100) NULL,
	[Twitter] [nvarchar](100) NULL,
	[Vimeo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Subtitle] [nvarchar](200) NULL,
	[Image] [nvarchar](200) NULL,
	[Order] [int] NOT NULL,
	[Desc] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribes]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](200) NULL,
	[Date] [datetime2](7) NULL,
 CONSTRAINT [PK_Subscribes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherEvents]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherEvents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
 CONSTRAINT [PK_TeacherEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[About] [nvarchar](600) NULL,
	[Degree] [nvarchar](25) NULL,
	[Experience] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](25) NULL,
	[Skype] [nvarchar](100) NULL,
	[Fb] [nvarchar](100) NULL,
	[Twit] [nvarchar](100) NULL,
	[Pint] [nvarchar](100) NULL,
	[Vimeo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherSkills]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherSkills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_TeacherSkills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 16-Aug-21 07:47:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[FullName] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
	[Desc] [nvarchar](1000) NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210810035821_AppUsersTableCreated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210810051355_AppUsersTableFullNameColumnCreated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210811024846_AllTablesCreated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210811102124_TestimonialTableCreated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210811123930_SettingTableUpdated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210812115802_SettingsTbleChooseImageColumnAndSlidersTbleBtnTextColumnDeleted', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210812120110_SlidersTbleRedirectURLColumnDeleted', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210812134813_SlidersTbleDescColumnAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210813031233_TestimonialsTbleOrderColumnAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210813041543_TeacherSkillsTableCreated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210813045608_TeacherSkillsValueColumnUpdate', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210813054129_TeachersTableUpdate', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210814031541_CoursesTbleNameColumnAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210814115216_CourseMessagesAppUserIdUpdated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210814125436_CourseJoinAppUserIdUpdated', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210814125940_CourseJoinIsAcceptingCollumnAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210815021810_EventsTableEventCategoryIdAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210815022153_EventsTableNameColumnAdded', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210815081412_EventMessagesTableAppUserIdColumnDataTypeChanged', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210815082627_EventMessagesTableColumnsRequiredChanged', N'3.1.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210815092921_ContactMessagesTableColumnsUpdated', N'3.1.16')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1e692c70-b3f6-4e32-b6e8-23b9483df4c7', N'Admin', N'ADMIN', N'0b51ce59-7399-4cb8-b98d-22e01889ad09')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'766dc72f-bd12-46fb-9dbf-4a194eb62681', N'SuperAdmin', N'SUPERADMIN', N'9627211a-62b7-4c29-9a4b-b0d1ce5c793c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cbf09436-779e-4465-8b99-3f9088f3331c', N'Member', N'MEMBER', N'cc08292e-1b7e-4859-b5a3-113e52a47f6b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f99a5d1b-bc25-4690-88b1-c46deb9597f0', N'EditorAdmin', N'EDITORADMIN', N'd14edc3c-e4ed-42fb-9e71-11cebb71d88c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'06493633-8355-4438-bdb8-1e38c35644de', N'1e692c70-b3f6-4e32-b6e8-23b9483df4c7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37f59e29-e5ee-47b8-b553-2877aa75d552', N'1e692c70-b3f6-4e32-b6e8-23b9483df4c7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'76e05da2-b449-40c5-9765-3819706b6e8f', N'766dc72f-bd12-46fb-9dbf-4a194eb62681')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', N'cbf09436-779e-4465-8b99-3f9088f3331c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'75c51099-3dc0-4dd0-9465-827769ab0b01', N'cbf09436-779e-4465-8b99-3f9088f3331c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'96d5eb3c-098c-4188-b495-ea146306e63d', N'cbf09436-779e-4465-8b99-3f9088f3331c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9fd2a2e8-86a2-4364-baf3-752875f3e126', N'cbf09436-779e-4465-8b99-3f9088f3331c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f695cff-77d4-4b24-a52c-b082c9b18def', N'f99a5d1b-bc25-4690-88b1-c46deb9597f0')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'06493633-8355-4438-bdb8-1e38c35644de', N'admin1234', N'ADMIN1234', N'admin1234@mail.ru', N'ADMIN1234@MAIL.RU', 0, N'AQAAAAEAACcQAAAAELKdBKegCnEpLlJgcuFubgbOGnf5coM2NmjprFhXldwvQWXVi4TlHQ1LUjabPzXg8w==', N'JRF3KM342C6D5SDEJIDH5PU2BE56FNVY', N'8bba0ff3-888c-43ae-9171-c6613979392a', NULL, 0, 0, NULL, 1, 0, N'Admin Adminli', NULL, 1, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'37f59e29-e5ee-47b8-b553-2877aa75d552', N'admin123', N'ADMIN123', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEulGRiRsKqkRL2k8Nn212aydvhjZtRSXpkeERXwf1na6N8P8ycvIrcaYLE6jMzZZQ==', N'XCEV2BSGK4XEJL6XRQSNUUML76SMQCGR', N'35097905-672d-4efc-ba9f-27ed8c8c713c', NULL, 0, 0, NULL, 1, 0, N'Simple Admin', NULL, 1, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', N'qabil123', N'QABIL123', N'ggg.07.07@yandex.com', N'GGG.07.07.1991@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMjLfxDZ7TprCTl8Gg01DeBmz5JQ2YTbpEVygjsHJL/bQBacCCvBAMk2GCvmgc9G2Q==', N'YKK2TQHCFRHRDCD57AMMOLK6YN2ZYEGU', N'fa750a9a-716c-4e5f-924a-bcd7177101fa', NULL, 0, 0, NULL, 1, 0, N'Qabil Qurbanov', N'686f54ba-a20e-40a0-a569-ebfe8c926c7e_2019-02-12-14-32-47.jpg', 0, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'75c51099-3dc0-4dd0-9465-827769ab0b01', N'leyla123', N'LEYLA123', N'leyla.a@gmail.com', N'LEYLA.A@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAUewxjqpREG0hPCu2n/Dq/7ZvlzOADk1o8JaZZVxsIMwuUif5EbwJEeCruCOhtNRw==', N'NW3L4LQPCYLBJ5C3SXEM34FMMFXPZCNI', N'e363d5ed-0c12-4650-8696-641a987adbae', NULL, 0, 0, NULL, 1, 0, N'Leyla Abbasova', N'3284e1b1-a35e-4357-8ce1-24bbe2725bcc_profil-3.jpg', 0, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'76e05da2-b449-40c5-9765-3819706b6e8f', N'sadmin123', N'SADMIN123', N'super_admin123@gmail.com', N'SUPER_ADMIN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEByPHDYV8gsUhIXHj2atZAXIMZSY8yLHTEm/VQA5kDEqvelGckpUO0N9jHf/2bzuGw==', N'QOKM4IFOFQERLCJQK6SINGFU76RTFENA', N'5582326a-9d54-411a-a250-9f951651a4a3', NULL, 0, 0, NULL, 1, 0, N'Super Admin', NULL, 1, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'7f695cff-77d4-4b24-a52c-b082c9b18def', N'eadmin123', N'EADMIN123', N'eadmin123@gmail.com', N'EADMIN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJwUeD0VtBpdLzf5ubZZyX2ORzmSP+IIAqgG9p1o8/IF6BUCz40iiGir+g+BakJgVA==', N'FBYP5VHIR2KMZ7ZNYKUXJKYJL5HVWMSI', N'1087e624-a364-44e6-b06f-dafe18e5a1b3', NULL, 0, 0, NULL, 1, 0, N'Editor Admin', NULL, 1, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'96d5eb3c-098c-4188-b495-ea146306e63d', N'selim123', N'SELIM123', N'selimm@gmail.com', N'SELIMM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAa92EeslktTedyWlaKY4RI5z5AfbVQPCkgiZAZ7Asm+YSKw2nXnQFkwJDXG7mWSlA==', N'CI5NQAFSHX6HTVF5NTLCIK2YRERMZV2W', N'f606d7e4-455e-4926-9b1a-154e08f03710', NULL, 0, 0, NULL, 1, 0, N'Selim Mert', N'773414f8-abfd-4086-a81a-c2e87f5013f0_profil-4.jpg', 0, N'AppUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Image], [IsAdmin], [Discriminator]) VALUES (N'9fd2a2e8-86a2-4364-baf3-752875f3e126', N'test1234', N'TEST1234', N'test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFjtrawRu5hH3XCvIEd3ZCo6mvbauNVvH7Ct+uM9N7hIqFFKoAxFdf/UTMcc1Tmxfw==', N'N5O4QNVGJWIMVGYQG6TNXPBHA5IFLJ2P', N'8e20140c-8ae8-43d0-9098-7950fc642ec5', NULL, 0, 0, NULL, 1, 0, N'Test Testli', N'43c0ad8e-a467-4ec0-ada1-d91916d20241_profil-7.jpg', 0, N'AppUser')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Desc]) VALUES (1, N'Language', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui')
INSERT [dbo].[Categories] ([Id], [Name], [Desc]) VALUES (2, N'Programming', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui')
INSERT [dbo].[Categories] ([Id], [Name], [Desc]) VALUES (3, N'Design', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui')
INSERT [dbo].[Categories] ([Id], [Name], [Desc]) VALUES (4, N'IT System', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui')
INSERT [dbo].[Categories] ([Id], [Name], [Desc]) VALUES (5, N'CSE ENGINEERING', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactMessages] ON 

INSERT [dbo].[ContactMessages] ([Id], [AppUserId], [Subject], [Message], [Email], [CreateAt], [FullName]) VALUES (4, NULL, N'ContactSub', N'bI must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatemI must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatemI must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatemI mustvnbvbvbnbv', N'test@gmail.cpm', CAST(N'2021-08-15T14:02:27.0059521' AS DateTime2), N'Qabil Test')
INSERT [dbo].[ContactMessages] ([Id], [AppUserId], [Subject], [Message], [Email], [CreateAt], [FullName]) VALUES (5, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', N'nese', N'bcvbcchgchgc', N'ggg.07.07@yandex.com', CAST(N'2021-08-15T14:02:45.2163019' AS DateTime2), N'Qabil Qurbanov')
SET IDENTITY_INSERT [dbo].[ContactMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseJoins] ON 

INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (1, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 1, CAST(N'2021-08-14T17:38:51.1063195' AS DateTime2), 1)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (2, N'96d5eb3c-098c-4188-b495-ea146306e63d', 1, CAST(N'2021-08-14T17:42:52.0464196' AS DateTime2), NULL)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (3, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 9, CAST(N'2021-08-14T21:39:53.7090349' AS DateTime2), 1)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (4, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 11, CAST(N'2021-08-14T21:40:13.1489054' AS DateTime2), 1)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (5, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 5, CAST(N'2021-08-14T21:40:21.9414465' AS DateTime2), 1)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (6, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 2, CAST(N'2021-08-14T21:40:37.7240173' AS DateTime2), NULL)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (7, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 3, CAST(N'2021-08-14T21:40:41.2415802' AS DateTime2), 0)
INSERT [dbo].[CourseJoins] ([Id], [AppUserId], [CourseId], [JoinAt], [IsAccepting]) VALUES (8, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', 4, CAST(N'2021-08-14T21:40:48.6415697' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[CourseJoins] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseMessages] ON 

INSERT [dbo].[CourseMessages] ([Id], [CourseId], [AppUserId], [Subject], [Message], [Date]) VALUES (1, 1, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', N'Qabil', N'Yazdi', CAST(N'2021-08-14T15:54:15.1060902' AS DateTime2))
INSERT [dbo].[CourseMessages] ([Id], [CourseId], [AppUserId], [Subject], [Message], [Date]) VALUES (2, 9, N'96d5eb3c-098c-4188-b495-ea146306e63d', N'Selimin messagesi', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut
the is lder of human happinescias unde omnis iste natus error sit volptatem
I must explain to you how all this a mistaken idea of ncing great explorer of the rut
the is lder of human happinescias unde omnis iste natus error sit volptatem
I must explain to you how all this a mistaken idea of ncing great explorer of the rut
the is lder of human happinescias unde omnis iste natus error sit volptatem', CAST(N'2021-08-14T16:31:53.3311487' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CourseMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (1, N'1255339e-f62f-4c88-8242-c61c75949c03_course1.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2017-06-25T21:34:00.0000000' AS DateTime2), 6, 3, N'English', 420, 789, 5, N'Engineering Morning Sessian')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (2, N'f3ff9e96-cc1d-42da-9687-38b2e0461ebf_course2.jpg', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-10T07:29:00.0000000' AS DateTime2), 7, 4, N'English', 300, 645, 5, N'POLITICAL SCIENCE')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (3, N'6910ed44-68c7-44d5-b31b-67cacb31f63a_course3.jpg', N'Hem Frontend hem de Backend kecirilir', N'Appli nedi bilmirem)))', N'Butun dunyara kecerli olan sertifikatla temin edir', CAST(N'2021-03-09T07:35:00.0000000' AS DateTime2), 6, 4, N'Azerbaycanca', 200, 4000, 2, N'Programming afternoon shift')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (4, N'58a87785-260e-4747-a059-38e7f1c65763_course4.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:38:00.0000000' AS DateTime2), 5, 5, N'Rus', 340, 800, 1, N'ENGLISH HISTORY')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (5, N'315d6bb9-c472-4c0f-9706-df0510166939_course5.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:40:00.0000000' AS DateTime2), 7, 3, N'English', 240, 890, 5, N'DIGITAL MARKETING')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (7, N'f47f8cdb-b786-413d-b7c5-6bb152f6f56e_course7.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:50:00.0000000' AS DateTime2), 5, 5, N'English', 400, 800, 2, N'LEARN PHP5')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (8, N'ce167366-ae81-4a7f-82e6-dc36edd287d7_course8.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:51:00.0000000' AS DateTime2), 3, 5, N'English', 230, 650, 4, N'SOCIAL SCIENCE')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (9, N'8d3f1b24-eea7-4867-88cf-2354bd0863cf_course9.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:53:00.0000000' AS DateTime2), 4, 2, N'English', 220, 799, 4, N'APPLIED MATHEMATICS')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (10, N'8126a1cb-fed4-49d8-aaff-64f37d21b996_course2.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'<p class="margin">I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss</p>
                                <p>I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human</p>', CAST(N'2021-08-14T07:54:00.0000000' AS DateTime2), 4, 4, N'Azerbaycanca', 300, 450, 3, N'Web Design')
INSERT [dbo].[Courses] ([Id], [Image], [About], [Apply], [Certification], [Starts], [Duration], [ClassDuration], [Language], [StudentsLimit], [Fee], [CategoryId], [Name]) VALUES (11, N'dde026a1-4cd3-4825-8f8b-c7fd99141210_course6.jpg', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', N'I must explain to you how all this a mistaken idea of ncing great explorer of the rut the is lder of human happinescias unde omnis iste natus error sit volptatem accuntium mque laudantium perspiciatis unde omnis iste natuss', CAST(N'2021-08-14T10:30:00.0000000' AS DateTime2), 5, 3, N'English', 50, 400, 5, N'Engineering EvningSessian')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseTags] ON 

INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (27, 2, 2)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (28, 2, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (29, 2, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (37, 4, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (38, 4, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (39, 4, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (40, 4, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (41, 4, 8)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (42, 4, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (43, 5, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (44, 5, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (45, 5, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (46, 5, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (47, 5, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (48, 5, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (55, 3, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (56, 3, 2)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (57, 3, 3)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (58, 3, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (59, 3, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (60, 3, 8)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (61, 3, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (62, 7, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (63, 7, 2)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (64, 7, 3)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (65, 7, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (66, 7, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (67, 7, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (68, 7, 12)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (69, 8, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (70, 8, 4)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (71, 8, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (72, 8, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (73, 8, 9)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (74, 8, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (75, 9, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (76, 9, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (77, 9, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (78, 9, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (79, 9, 9)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (80, 9, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (81, 9, 12)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (82, 10, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (83, 10, 2)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (84, 10, 4)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (85, 10, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (86, 10, 9)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (87, 10, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (88, 10, 12)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (95, 1, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (96, 1, 8)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (97, 1, 9)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (98, 1, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (99, 1, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (100, 1, 12)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (101, 11, 1)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (102, 11, 5)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (103, 11, 6)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (104, 11, 7)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (105, 11, 8)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (106, 11, 9)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (107, 11, 10)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (108, 11, 11)
INSERT [dbo].[CourseTags] ([Id], [CourseId], [TagId]) VALUES (109, 11, 12)
SET IDENTITY_INSERT [dbo].[CourseTags] OFF
GO
SET IDENTITY_INSERT [dbo].[EventCategories] ON 

INSERT [dbo].[EventCategories] ([Id], [Name]) VALUES (1, N'Teqdimat')
INSERT [dbo].[EventCategories] ([Id], [Name]) VALUES (2, N'Tanitim')
INSERT [dbo].[EventCategories] ([Id], [Name]) VALUES (3, N'Meeting')
INSERT [dbo].[EventCategories] ([Id], [Name]) VALUES (4, N'Workshop')
INSERT [dbo].[EventCategories] ([Id], [Name]) VALUES (5, N'Examples')
SET IDENTITY_INSERT [dbo].[EventCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[EventMessages] ON 

INSERT [dbo].[EventMessages] ([Id], [EventId], [AppUserId], [Date], [Subject], [Message], [Name], [Email]) VALUES (2, 1, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', CAST(N'2021-08-15T12:15:20.7518301' AS DateTime2), N'Qabilden', N'Messaj', N'Qabil Qurbanov', N'ggg.07.07@yandex.com')
INSERT [dbo].[EventMessages] ([Id], [EventId], [AppUserId], [Date], [Subject], [Message], [Name], [Email]) VALUES (7, 2, N'73f1cf78-d1ac-4382-9b08-748d3bf9791b', CAST(N'2021-08-15T12:59:58.8317903' AS DateTime2), N'yoxla2', N'yoxlma2', N'Qabil Qurbanov', N'ggg.07.07@yandex.com')
SET IDENTITY_INSERT [dbo].[EventMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (1, N'e6c7b4de-24a6-4cfb-858f-99fa1356d88b_event1.jpg', CAST(N'2021-08-14T08:03:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 4, N'ADVANCE WED DEVELOPMENT WORKSHOP')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (2, N'2079ab1e-ac2c-4a26-8475-99f7b1ddeae4_event2.jpg', CAST(N'2021-08-14T08:20:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 4, N'ADVANCE PHP WORKSHOP')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (3, N'08a8e501-3f2a-4596-b09a-f007a7dae3ec_event3.jpg', CAST(N'2021-08-15T08:22:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 5, N'LEARNING ENGLISH HISTORY')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (4, N'c380a10a-5d5d-4251-be4f-5be5ede16f7f_event1.jpg', CAST(N'2021-08-15T08:23:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 3, N'UI & UX DESIGNER MEETUP')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (5, N'332fd35e-c8de-433c-b4b6-3ecb129fdb6a_event6.jpg', CAST(N'2021-08-15T08:24:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'16:40:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 2, N'ADVANCE WEB DEVELOPMENT')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (7, N'793cb16c-53cb-4798-a4eb-e7dc8cd603f1_event7.jpg', CAST(N'2021-08-15T08:41:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 3, N'UI & UX DESIGNER MEETUP')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (8, N'7aa219ab-0fce-40b6-835a-116c88497bea_event8.jpg', CAST(N'2021-08-15T08:42:00.0000000' AS DateTime2), CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 1, N'ADVANCE WEB DEVELOPMENT')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (9, N'13290257-31e5-40f4-8785-44cec414a529_event9.jpg', CAST(N'2021-08-15T08:43:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Cristal  New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 2, N'DIGITAL MARKETING ANALYSIS')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (10, N'c55ddc41-65ba-4df9-a3f2-82be9026632f_event10.jpg', CAST(N'2021-08-04T08:44:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 3, N'DEVELOPER''S MEETUP')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (11, N'51db95ca-beed-49be-8664-9fd053900158_event11.jpg', CAST(N'2021-07-27T08:45:00.0000000' AS DateTime2), CAST(N'09:30:00' AS Time), CAST(N'16:45:00' AS Time), N'Example Street 98', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 4, N'WORKSHOP ON MICRO BIOLOGY')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (12, N'32d04389-f3b2-41ca-bc54-d2c5a0e19e28_event12.jpg', CAST(N'2021-08-02T08:45:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'16:45:00' AS Time), N'Cristal Centre, 254 New Yourk', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 5, N'ADVANCED PHOTOSHOP 2017')
INSERT [dbo].[Events] ([Id], [Image], [StartDate], [StartHour], [EndHour], [Address], [Desc], [EventCategoryId], [Name]) VALUES (13, N'1ef36de0-6b50-4332-8f09-8ae0a30b181e_event13.jpg', CAST(N'2021-08-12T08:46:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'16:40:00' AS Time), N'Example Street 98', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem </p>
                        <p>I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 2, N'NEW TREND IN WEBDESIGN')
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Title], [Desc]) VALUES (1, N'PROFESSIONAL TEACHER', N'I must explain to you how all this mistaken idea of denouncing pleure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings')
INSERT [dbo].[Features] ([Id], [Title], [Desc]) VALUES (2, N'ONLINE COURSES', N'I must explain to you how all this mistaken idea of denouncing pleure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings')
INSERT [dbo].[Features] ([Id], [Title], [Desc]) VALUES (3, N'EASY TO ADDMISSION', N'I must explain to you how all this mistaken idea of denouncing pleure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[Notices] ON 

INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (1, CAST(N'2017-06-05T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (2, CAST(N'2017-06-04T15:24:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (3, CAST(N'2017-06-03T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (4, CAST(N'2017-06-05T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (5, CAST(N'2017-06-04T09:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (6, CAST(N'2017-06-03T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (7, CAST(N'2017-06-05T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (8, CAST(N'2017-06-04T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
INSERT [dbo].[Notices] ([Id], [CreatAt], [Text]) VALUES (9, CAST(N'2017-06-03T00:00:00.0000000' AS DateTime2), N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete')
SET IDENTITY_INSERT [dbo].[Notices] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [TitleLogo], [HeaderLogo], [FooterLogo], [ChooseText], [Phone1], [Phone2], [Address], [Email], [Site], [AboutDesc], [AboutPic], [AboutTitle], [AboutVideo], [ChooseTitle], [ColorLogo], [Facebook], [Pinteres], [Twitter], [Vimeo]) VALUES (1, N'bbbf390f-215e-4c92-86fb-aabdd14a5925_title-logo.PNG', N'e25b1ed6-973e-456b-be6b-2252b16842c7_logo.png', N'6c7004dd-73ed-410e-8117-b4d4a6f5b5fd_footer-logo.png', N'<p>I must explain to you how all this mistaken idea of denouncing pleure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings  the master-builder of humanit happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because. </p>
                    <p class="choose-option">I must explain to you how all this mistaken idea of denouncing pleure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings  the master-builder. </p>', N'+880 548 986 898 87', N'+880 659 785 658 98', N'Your address goes here, Street <br> City, Roadno 785 New York', N'info@eduhome.com', N'www.eduhome.com', N'<p>I must explain to you how all this mistaken idea of denouncing pleure and prsing pain was born and I will give you a complete account of the system, and expound the actual teachings  the master-builder of humanit happiness</p>
                    <p class="hidden-sm">I must explain to you how all this mistaken idea of denouncing pleure and prsing pain was born and I will give you a complete account of the system</p>', N'aea748d2-f93e-4b98-a66a-b6fdadd5cb96_about.png', N'WELCOME TO <span>EDUHOME</span>', N'https://www.youtube.com/watch?v=to6Ghf8UL7o', N'WHY YOU CHOOSE EDUHOME ?', N'84f6d319-fbed-4608-9d66-05b8a1319ff7_logo2.png', N'#', N'#', N'#', N'#')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Title], [Subtitle], [Image], [Order], [Desc]) VALUES (3, N'EDUCATION MAKES ', N'PROPER HUMANITY ', N'e5f17a20-fcff-4355-90d8-ec21c36dbca1_slider1.jpg', 1, N'I must explain to you how all this mistaken idea of denouncing pleasure and prsing pain was born and I will give you a complete account of the system  ')
INSERT [dbo].[Sliders] ([Id], [Title], [Subtitle], [Image], [Order], [Desc]) VALUES (4, N'EDUCATION MAKES ', N'PROPER HUMANITY ', N'd9da2fa7-989f-445a-b92f-5c01d5eb421c_slider2.jpg', 2, N'I must explain to you how all this mistaken idea of denouncing pleasure and prsing pain was born and I will give you a complete account of the system  ')
INSERT [dbo].[Sliders] ([Id], [Title], [Subtitle], [Image], [Order], [Desc]) VALUES (5, N'EDUCATION MAKES ', N'PROPER HUMANITY ', N'9a5ec89a-4eff-48fc-a340-09a67f0c24f6_slider3.jpg', 3, N'I must explain to you how all this mistaken idea of denouncing pleasure and prsing pain was born and I will give you a complete account of the system  ')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscribes] ON 

INSERT [dbo].[Subscribes] ([Id], [Email], [Date]) VALUES (2, N'gabilgg@code.edu.az', NULL)
INSERT [dbo].[Subscribes] ([Id], [Email], [Date]) VALUES (3, N'ggg.07.07.1991@gmail.com', NULL)
INSERT [dbo].[Subscribes] ([Id], [Email], [Date]) VALUES (5, N'qabil_07@mail.ru', NULL)
INSERT [dbo].[Subscribes] ([Id], [Email], [Date]) VALUES (13, N'test@gm.com', NULL)
SET IDENTITY_INSERT [dbo].[Subscribes] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'new')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'frontend')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'backend')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'qrafig-design')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'english')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'first-level')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (7, N'Course')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (8, N'Education')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (9, N'Teachers')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (10, N'Learning')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (11, N'University')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (12, N'Events')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherEvents] ON 

INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (7, 5, 1)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (8, 6, 1)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (9, 1, 2)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (10, 2, 2)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (11, 2, 3)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (12, 3, 3)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (16, 4, 5)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (17, 5, 5)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (18, 5, 7)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (19, 6, 7)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (20, 6, 8)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (21, 7, 8)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (22, 6, 9)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (23, 7, 9)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (24, 8, 9)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (25, 7, 10)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (26, 8, 10)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (27, 8, 11)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (28, 9, 11)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (29, 9, 12)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (30, 10, 12)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (31, 8, 13)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (32, 10, 13)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (36, 2, 4)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (37, 3, 4)
INSERT [dbo].[TeacherEvents] ([Id], [TeacherId], [EventId]) VALUES (38, 4, 4)
SET IDENTITY_INSERT [dbo].[TeacherEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (1, N'd41d7533-c771-4370-9ffa-94128748999a_teacher1.jpg', N'STUART KELVIN', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N'PHD in Micro Biology', 7, N'stuart@eduhome.com', N'(+125) 5896 548 9874', N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (2, N'71ed44ba-186f-4f9a-9f41-89bce2bdfb59_teacher2.jpg', N'Eamily Cristian', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N'PHD in Micro Biology', 6, N'test@gmail.com', N'(+125) 5896 548 9874', N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (3, N'eaf127ac-5696-4da4-a776-ec74c234e0e6_teacher3.jpg', N'KEVIN WILLIAMS', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N'Phisic', 10, N'test1@gmail.com', N'(+125) 5896 548 9874', N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (4, N'cc0f2eee-7b6b-490a-9257-923a1b52c318_teacher4.jpg', N'SALINA GOMAZE', N'Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N'Botanic', 5, N'test1234@gmail.com', N'(+125) 5896 548 9874', N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (5, N'f59b3d86-ea0b-4659-a7f7-821b693656f7_speaker1.jpg', N'Anthony Smith', N'CEO, Hastech', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem', N'Phisiolog', 12, N'smith@gmail.com', N'(+125) 5896 548 9876', N'snith.tyu', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (6, N'8d1e4fe6-8104-418e-b21b-26abd753ab0c_speaker2.jpg', N'Lucy Rose', N'Developer, STD', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui', N'Web Design', 7, N'lr@gmail.com', N'(+125) 5896 543 9874', N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (7, N'642beee0-d342-4224-a59c-5edae776187d_teacher5.jpg', N'JASMIN SMITH', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (8, N'603422fd-f403-4891-bd2f-23cba051e7a1_teacher6.jpg', N'STEPHEN FLEMING', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, N'stuart.k', N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (9, N'bf5ea0eb-3abe-4011-9de1-6e5725d79210_teacher7.jpg', N'JULIA WILLIAMS', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (10, N'8ff90e0b-b132-450f-8346-7a69b87389d8_teacher8.jpg', N'NAIL ANDERSON', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (11, N'29914a16-7d98-4160-b0d9-d5c30c47530a_teacher9.jpg', N'STUART KELVIN', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (12, N'2be53325-98bf-4046-8da9-33454c57020c_teacher10.jpg', N'Jesica Alba', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (13, N'129299de-db28-4e68-8121-8514b84122f9_teacher11.jpg', N'KEVIN WILLIAMS', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
INSERT [dbo].[Teachers] ([Id], [Image], [FullName], [Position], [About], [Degree], [Experience], [Email], [Phone], [Skype], [Fb], [Twit], [Pint], [Vimeo]) VALUES (14, N'5ded9595-d558-4da4-8a7f-512d647ad4e4_teacher12.jpg', N'SALINA GOMAZE', N'Associate Professor', NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/devitems/?ref=bookmarks', N'https://twitter.com/devitemsllc', N'https://www.pinterest.com/devitemsllc/', N'#')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherSkills] ON 

INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (41, 1, N'Design', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (42, 1, N'Development', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (43, 1, N'Team Leader', 90)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (44, 1, N'Innovation', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (45, 1, N'Language', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (46, 1, N'Communication', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (47, 2, N'Language', 88)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (48, 2, N'Team Leader', 84)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (49, 2, N'Development', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (50, 2, N'Design', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (51, 2, N'Innovation', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (52, 3, N'Language', 88)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (53, 3, N'Team Leader', 90)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (54, 3, N'Development', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (55, 3, N'Design', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (56, 3, N'Communication', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (57, 4, N'Language', 97)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (58, 4, N'Team Leader', 77)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (59, 4, N'Development', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (60, 5, N'Language', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (61, 5, N'Team Leader', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (62, 5, N'Development', 89)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (63, 5, N'Design', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (64, 5, N'Innovation', 87)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (65, 5, N'Communication', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (66, 6, N'Language', 84)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (67, 6, N'Team Leader', 84)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (68, 6, N'Development', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (69, 6, N'Design', 95)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (70, 6, N'Innovation', 87)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (71, 7, N'Language', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (73, 8, N'Language', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (74, 9, N'Language', 88)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (75, 10, N'Language', 85)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (76, 11, N'Language', 87)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (77, 12, N'Language', 99)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (78, 13, N'Language', 84)
INSERT [dbo].[TeacherSkills] ([Id], [TeacherId], [Name], [Value]) VALUES (79, 14, N'Language', 97)
SET IDENTITY_INSERT [dbo].[TeacherSkills] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([Id], [Image], [FullName], [Position], [Desc], [Order]) VALUES (1, N'cac5162b-1e90-415a-ada9-5d312b10b0b4_testimonial.jpg', N'David Morgan', N'Student, CSE', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', 1)
INSERT [dbo].[Testimonials] ([Id], [Image], [FullName], [Position], [Desc], [Order]) VALUES (2, N'834a2ce3-912a-49a7-9cc0-5f7e252e9fd7_teacher11.jpg', N'Simon Morgan', N'Student, CSE', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', 2)
INSERT [dbo].[Testimonials] ([Id], [Image], [FullName], [Position], [Desc], [Order]) VALUES (3, N'd30ce029-6423-44ea-98e0-c4d2b40d65a5_teacher6.jpg', N'Jack Albert', N'Student, CSE', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', 3)
INSERT [dbo].[Testimonials] ([Id], [Image], [FullName], [Position], [Desc], [Order]) VALUES (4, N'3436a89c-5750-4644-aa99-a12778d7f34d_teacher5.jpg', N'Jesica Alba', N'Student, CSE', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', 4)
INSERT [dbo].[Testimonials] ([Id], [Image], [FullName], [Position], [Desc], [Order]) VALUES (5, N'bdb0f863-a6d7-4411-a655-63dda1ae7a1c_teacher11.jpg', N'Test Testli', N'Student, CSE', NULL, 0)
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ContactMessages_AppUserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_ContactMessages_AppUserId] ON [dbo].[ContactMessages]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CourseJoins_AppUserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseJoins_AppUserId] ON [dbo].[CourseJoins]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseJoins_CourseId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseJoins_CourseId] ON [dbo].[CourseJoins]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CourseMessages_AppUserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseMessages_AppUserId] ON [dbo].[CourseMessages]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseMessages_CourseId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseMessages_CourseId] ON [dbo].[CourseMessages]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Courses_CategoryId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_Courses_CategoryId] ON [dbo].[Courses]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseTags_CourseId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseTags_CourseId] ON [dbo].[CourseTags]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseTags_TagId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_CourseTags_TagId] ON [dbo].[CourseTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EventMessages_AppUserId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_EventMessages_AppUserId] ON [dbo].[EventMessages]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventMessages_EventId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_EventMessages_EventId] ON [dbo].[EventMessages]
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Events_EventCategoryId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_Events_EventCategoryId] ON [dbo].[Events]
(
	[EventCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeacherEvents_EventId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_TeacherEvents_EventId] ON [dbo].[TeacherEvents]
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeacherEvents_TeacherId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_TeacherEvents_TeacherId] ON [dbo].[TeacherEvents]
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeacherSkills_TeacherId]    Script Date: 16-Aug-21 07:47:27 ******/
CREATE NONCLUSTERED INDEX [IX_TeacherSkills_TeacherId] ON [dbo].[TeacherSkills]
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[ContactMessages] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreateAt]
GO
ALTER TABLE [dbo].[ContactMessages] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Testimonials] ADD  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ContactMessages]  WITH CHECK ADD  CONSTRAINT [FK_ContactMessages_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ContactMessages] CHECK CONSTRAINT [FK_ContactMessages_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[CourseJoins]  WITH CHECK ADD  CONSTRAINT [FK_CourseJoins_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CourseJoins] CHECK CONSTRAINT [FK_CourseJoins_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[CourseJoins]  WITH CHECK ADD  CONSTRAINT [FK_CourseJoins_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseJoins] CHECK CONSTRAINT [FK_CourseJoins_Courses_CourseId]
GO
ALTER TABLE [dbo].[CourseMessages]  WITH CHECK ADD  CONSTRAINT [FK_CourseMessages_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CourseMessages] CHECK CONSTRAINT [FK_CourseMessages_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[CourseMessages]  WITH CHECK ADD  CONSTRAINT [FK_CourseMessages_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseMessages] CHECK CONSTRAINT [FK_CourseMessages_Courses_CourseId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CourseTags]  WITH CHECK ADD  CONSTRAINT [FK_CourseTags_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTags] CHECK CONSTRAINT [FK_CourseTags_Courses_CourseId]
GO
ALTER TABLE [dbo].[CourseTags]  WITH CHECK ADD  CONSTRAINT [FK_CourseTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CourseTags] CHECK CONSTRAINT [FK_CourseTags_Tags_TagId]
GO
ALTER TABLE [dbo].[EventMessages]  WITH CHECK ADD  CONSTRAINT [FK_EventMessages_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EventMessages] CHECK CONSTRAINT [FK_EventMessages_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[EventMessages]  WITH CHECK ADD  CONSTRAINT [FK_EventMessages_Events_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventMessages] CHECK CONSTRAINT [FK_EventMessages_Events_EventId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_EventCategories_EventCategoryId] FOREIGN KEY([EventCategoryId])
REFERENCES [dbo].[EventCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_EventCategories_EventCategoryId]
GO
ALTER TABLE [dbo].[TeacherEvents]  WITH CHECK ADD  CONSTRAINT [FK_TeacherEvents_Events_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherEvents] CHECK CONSTRAINT [FK_TeacherEvents_Events_EventId]
GO
ALTER TABLE [dbo].[TeacherEvents]  WITH CHECK ADD  CONSTRAINT [FK_TeacherEvents_Teachers_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherEvents] CHECK CONSTRAINT [FK_TeacherEvents_Teachers_TeacherId]
GO
ALTER TABLE [dbo].[TeacherSkills]  WITH CHECK ADD  CONSTRAINT [FK_TeacherSkills_Teachers_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherSkills] CHECK CONSTRAINT [FK_TeacherSkills_Teachers_TeacherId]
GO
USE [master]
GO
ALTER DATABASE [EduhomeDB] SET  READ_WRITE 
GO
