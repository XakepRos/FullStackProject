USE [master]
GO
/****** Object:  Database [himalDB1]    Script Date: 8/19/2019 3:26:08 PM ******/
CREATE DATABASE [himalDB1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'himalDB1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\himalDB1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'himalDB1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\himalDB1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [himalDB1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [himalDB1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [himalDB1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [himalDB1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [himalDB1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [himalDB1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [himalDB1] SET ARITHABORT OFF 
GO
ALTER DATABASE [himalDB1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [himalDB1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [himalDB1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [himalDB1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [himalDB1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [himalDB1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [himalDB1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [himalDB1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [himalDB1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [himalDB1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [himalDB1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [himalDB1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [himalDB1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [himalDB1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [himalDB1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [himalDB1] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [himalDB1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [himalDB1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [himalDB1] SET  MULTI_USER 
GO
ALTER DATABASE [himalDB1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [himalDB1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [himalDB1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [himalDB1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [himalDB1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [himalDB1] SET QUERY_STORE = OFF
GO
USE [himalDB1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/19/2019 3:26:09 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTable]    Script Date: 8/19/2019 3:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTable](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[CREATED_BY] [nvarchar](max) NULL,
	[CREATED_DATE] [datetime2](7) NOT NULL,
	[MODIFIED_DATE] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterTable]    Script Date: 8/19/2019 3:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [nvarchar](max) NULL,
	[LAST_NAME] [nvarchar](max) NULL,
	[MOBILE_NUMBER] [nvarchar](max) NULL,
	[EMAIL] [nvarchar](max) NULL,
	[PASSWORD] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_RegisterTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190510105748_test2', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190510110043_himalDB1', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190812110316_register table updated', N'2.1.8-servicing-32085')
SET IDENTITY_INSERT [dbo].[ProductTable] ON 

INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (1, N'wefrwefwe', N'\files\Agarbatti\AngularappStructure.PNG', N'thtrhtrhtr', NULL, CAST(N'2019-05-10T11:43:33.3801606' AS DateTime2), CAST(N'2019-05-10T11:43:33.3802407' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (2, N'fvsdfvsd', N'\files\Agarbatti\56994006_2183094411767904_3593522814994350080_n.png', N'efwef', NULL, CAST(N'2019-05-13T12:21:31.4228832' AS DateTime2), CAST(N'2019-05-13T12:21:31.4229617' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (3, N'ghtrhtrh', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N'ryyjy', NULL, CAST(N'2019-05-14T06:22:13.6414639' AS DateTime2), CAST(N'2019-05-14T06:22:13.6415405' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (4, N'5y4yu4', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N'u6u65u', NULL, CAST(N'2019-05-14T06:22:16.4958114' AS DateTime2), CAST(N'2019-05-14T06:22:16.4958114' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (5, N'6u56u56 ', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N' 65u56u  u5u 56', NULL, CAST(N'2019-05-14T06:22:20.8775741' AS DateTime2), CAST(N'2019-05-14T06:22:20.8775741' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (6, N' 56u56u 56', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N' 56u6  65u 56u ', NULL, CAST(N'2019-05-14T06:22:25.3993607' AS DateTime2), CAST(N'2019-05-14T06:22:25.3993614' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (7, N'56u56u56u', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N'65u u7 5u 5656', NULL, CAST(N'2019-05-14T06:22:30.3385815' AS DateTime2), CAST(N'2019-05-14T06:22:30.3385819' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (8, N'u 56u56u56 ', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N' u5u5u', NULL, CAST(N'2019-05-14T06:22:34.5404135' AS DateTime2), CAST(N'2019-05-14T06:22:34.5404135' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (9, N'56u5 uu5u', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N'u6 56u5u5', NULL, CAST(N'2019-05-14T06:22:38.5216398' AS DateTime2), CAST(N'2019-05-14T06:22:38.5216398' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (10, N' 65u56u5', N'\files\Agarbatti\Screenshot_20190424-103018.jpg', N'6 5u56u56 ', NULL, CAST(N'2019-05-14T06:22:41.5236399' AS DateTime2), CAST(N'2019-05-14T06:22:41.5236399' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (12, N'yu 56u56', N'\files\Agarbatti\artem-bali-275154-unsplash.jpg', N'6y 56u56', NULL, CAST(N'2019-05-14T06:23:03.1255691' AS DateTime2), CAST(N'2019-05-14T06:23:03.1255691' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (13, N'u 56u5', N'\files\Agarbatti\artem-bali-275154-unsplash.jpg', N'56u56u  65u56u5 ', NULL, CAST(N'2019-05-14T06:23:07.5243954' AS DateTime2), CAST(N'2019-05-14T06:23:07.5243954' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (14, N'65u56u56', N'\files\Agarbatti\artem-bali-275154-unsplash.jpg', N'65u 56uu 56u  u56u ', NULL, CAST(N'2019-05-14T06:23:12.2929860' AS DateTime2), CAST(N'2019-05-14T06:23:12.2929860' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (15, N'Product Name ', N'\files\Agarbatti\artem-bali-275154-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:23:47.4078547' AS DateTime2), CAST(N'2019-05-14T06:23:47.4078551' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (16, N'Product Name ', N'\files\Agarbatti\francesco-gallarotti-134637-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:24:12.9582423' AS DateTime2), CAST(N'2019-05-14T06:24:12.9582423' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (17, N'Product Name ', N'\files\Agarbatti\francesco-gallarotti-134637-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:24:20.6113038' AS DateTime2), CAST(N'2019-05-14T06:24:20.6113042' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (18, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:24:43.7165855' AS DateTime2), CAST(N'2019-05-14T06:24:43.7165858' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (19, N'Product Name ', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:24:48.9544850' AS DateTime2), CAST(N'2019-05-14T06:24:48.9544858' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (20, N'Product Name ', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:24:55.6488569' AS DateTime2), CAST(N'2019-05-14T06:24:55.6488573' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (21, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:25:01.9934238' AS DateTime2), CAST(N'2019-05-14T06:25:01.9934238' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (22, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:25:06.9262465' AS DateTime2), CAST(N'2019-05-14T06:25:06.9262465' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (23, N'Product Name ', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:26:41.7674206' AS DateTime2), CAST(N'2019-05-14T06:26:41.7674210' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (24, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:26:47.3911197' AS DateTime2), CAST(N'2019-05-14T06:26:47.3911197' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (25, N'Product Name ', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:26:52.7012794' AS DateTime2), CAST(N'2019-05-14T06:26:52.7012798' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (26, N'Product Name ', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:26:58.1041489' AS DateTime2), CAST(N'2019-05-14T06:26:58.1041492' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (27, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:03.4456457' AS DateTime2), CAST(N'2019-05-14T06:27:03.4456457' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (28, N'Product Name', N'\files\Agarbatti\chinh-le-duc-201487-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:13.8400460' AS DateTime2), CAST(N'2019-05-14T06:27:13.8400460' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (29, N'Product Name ', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:23.6691606' AS DateTime2), CAST(N'2019-05-14T06:27:23.6691606' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (30, N'Product Name ', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:29.1949106' AS DateTime2), CAST(N'2019-05-14T06:27:29.1949106' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (31, N'Product Name ', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:34.8191133' AS DateTime2), CAST(N'2019-05-14T06:27:34.8191133' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (32, N'Product Name ', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:40.0235453' AS DateTime2), CAST(N'2019-05-14T06:27:40.0235457' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (33, N'Product Name ', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:45.5521551' AS DateTime2), CAST(N'2019-05-14T06:27:45.5521551' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (34, N'Product Name', N'\files\Agarbatti\photo-1519920268630-b6b88dfc86d4.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:27:51.8267615' AS DateTime2), CAST(N'2019-05-14T06:27:51.8267619' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (35, N'Product Name ', N'\files\Agarbatti\ali-morshedlou-595919-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:28:12.3765719' AS DateTime2), CAST(N'2019-05-14T06:28:12.3765722' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (36, N'Product Name ', N'\files\Agarbatti\ali-morshedlou-595919-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:28:19.0775249' AS DateTime2), CAST(N'2019-05-14T06:28:19.0775249' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (37, N'Product Name ', N'\files\Agarbatti\home-box-perfumery.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:28:38.5808146' AS DateTime2), CAST(N'2019-05-14T06:28:38.5808150' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (38, N'Product Name ', N'\files\Agarbatti\maria-teneva-1384592-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:28:50.4336877' AS DateTime2), CAST(N'2019-05-14T06:28:50.4336877' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (39, N'Product Name ', N'\files\Agarbatti\maria-teneva-1384592-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:28:58.0489587' AS DateTime2), CAST(N'2019-05-14T06:28:58.0489587' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (40, N'Product Name', N'\files\Agarbatti\maria-teneva-1384592-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:29:03.7601828' AS DateTime2), CAST(N'2019-05-14T06:29:03.7601828' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (41, N'Product Name ', N'\files\Agarbatti\trasporto-di-merci-pericolose-gli-imballaggi-e-le-etichette-necessari-per-spedire-profumi.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:29:14.2176878' AS DateTime2), CAST(N'2019-05-14T06:29:14.2176882' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (42, N'Product Name ', N'\files\Agarbatti\trasporto-di-merci-pericolose-gli-imballaggi-e-le-etichette-necessari-per-spedire-profumi.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:30:41.8603259' AS DateTime2), CAST(N'2019-05-14T06:30:41.8603259' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (43, N'Product Name ', N'\files\Agarbatti\anshu-a-1279696-unsplash.jpg', N'Product Name Description', NULL, CAST(N'2019-05-14T06:30:54.0716505' AS DateTime2), CAST(N'2019-05-14T06:30:54.0716505' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (45, N'New Product Name', N'\files\Agarbatti\daniel-hjalmarsson-269424-unsplash.jpg', N'New product description', NULL, CAST(N'2019-05-14T06:48:11.0333586' AS DateTime2), CAST(N'2019-05-14T06:48:11.0333586' AS DateTime2))
INSERT [dbo].[ProductTable] ([ProductID], [ProductName], [ImageURL], [ProductDescription], [CREATED_BY], [CREATED_DATE], [MODIFIED_DATE]) VALUES (1012, N'trhtrh', N'\files\Agarbatti\MyPic.jpg', N'trhtrhtrh', NULL, CAST(N'2019-08-13T06:22:38.3265046' AS DateTime2), CAST(N'2019-08-13T06:22:38.3265617' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductTable] OFF
SET IDENTITY_INSERT [dbo].[RegisterTable] ON 

INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (1, N'ramro', N'sanga', N'', N'', N'', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (2, N'ramro', N'sanga', N'555555', N'asfs@gmail.com', N'1234', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (3, N'tttt', N'yyyyy', N'5727', N'87872@gmail.com', N'12345', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (4, N'ashutosh', N'kushawaha', N'9494949449', N'apk@gmail.com', N'ashu123', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (5, N'roshan', N'ranjan', N'666666', N'roshan@gmail.com', N'12345', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (6, N'pankaj', N'karn', N'9999999999', N'5689@gmail.com', N'12345', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (7, N'pankaj', N'karn', N'9999999999', N'5689@gmail.com', N'123', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (8, N'Roshan', N'Karn', N'9841752835', N'1234raushan@gmail.com', N'xakepmmm', NULL)
INSERT [dbo].[RegisterTable] ([ID], [FIRST_NAME], [LAST_NAME], [MOBILE_NUMBER], [EMAIL], [PASSWORD], [UserName]) VALUES (9, N'pankaj', N'karn', N'9814883836', N'1234raushan@gmail.com', N'!#CS545', NULL)
SET IDENTITY_INSERT [dbo].[RegisterTable] OFF
USE [master]
GO
ALTER DATABASE [himalDB1] SET  READ_WRITE 
GO
