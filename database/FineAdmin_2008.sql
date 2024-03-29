USE [master]
GO
/****** Object:  Database [FineAdmin]    Script Date: 2019/12/25 11:06:11 ******/
CREATE DATABASE [FineAdmin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FineAdmin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FineAdmin.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FineAdmin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\FineAdmin_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FineAdmin] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FineAdmin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FineAdmin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FineAdmin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FineAdmin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FineAdmin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FineAdmin] SET ARITHABORT OFF 
GO
ALTER DATABASE [FineAdmin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FineAdmin] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FineAdmin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FineAdmin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FineAdmin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FineAdmin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FineAdmin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FineAdmin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FineAdmin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FineAdmin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FineAdmin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FineAdmin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FineAdmin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FineAdmin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FineAdmin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FineAdmin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FineAdmin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FineAdmin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FineAdmin] SET RECOVERY FULL 
GO
ALTER DATABASE [FineAdmin] SET  MULTI_USER 
GO
ALTER DATABASE [FineAdmin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FineAdmin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FineAdmin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FineAdmin] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FineAdmin', N'ON'
GO
USE [FineAdmin]
GO
/****** Object:  Table [dbo].[Button]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Button](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Location] [int] NULL,
	[ClassName] [varchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_Button] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemsDetail]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemsDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [nvarchar](50) NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_ItemsDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogOnLog]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogOnLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogType] [varchar](50) NULL,
	[Account] [varchar](50) NULL,
	[RealName] [varchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[IPAddress] [varchar](50) NULL,
	[IPAddressName] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_LogOnLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[FullName] [nvarchar](50) NULL,
	[FontFamily] [varchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[UrlAddress] [varchar](100) NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organize]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_Organize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[TypeClass] [int] NULL,
	[SortCode] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleAuthorize]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAuthorize](
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[ButtonId] [int] NOT NULL,
 CONSTRAINT [PK_RoleAuthorize] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[ModuleId] ASC,
	[ButtonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/12/25 11:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[RealName] [nvarchar](50) NULL,
	[HeadIcon] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[Birthday] [datetime] NULL,
	[MobilePhone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[WeChat] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[RoleId] [int] NULL,
	[EnabledMark] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Button] ON 

INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, N'add', N'添加', 1, N'', N'&#xe6d9;', 1, CAST(0x0000AAF5010EA71C AS DateTime), 1, CAST(0x0000AAF5010EABCC AS DateTime), 1)
INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, N'del', N'删除', 0, N'layui-btn-danger', N'&#xe659;', 3, CAST(0x0000AAF5010FB6FC AS DateTime), 1, CAST(0x0000AAF5010FBA80 AS DateTime), 1)
INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, N'edit', N'修改', 0, N'', N'&#xe761;', 2, CAST(0x0000AAF501100EE0 AS DateTime), 1, CAST(0x0000AAF501101390 AS DateTime), 1)
INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, N'batchDel', N'批量删除', 1, N'layui-btn-danger', N'&#xe6b4;', 4, CAST(0x0000AAF501115BB0 AS DateTime), 1, CAST(0x0000AAF501115F34 AS DateTime), 1)
INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (5, N'pwdReset', N'重置密码', 0, N'layui-btn-warm', N'&#xe6a4;', 5, CAST(0x0000AB05009B81C4 AS DateTime), 1, CAST(0x0000AB05009B8C50 AS DateTime), 1)
INSERT [dbo].[Button] ([Id], [EnCode], [FullName], [Location], [ClassName], [Icon], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (6, N'assign', N'分配权限', 0, N'layui-btn-normal', N'&#xe73a;', 6, CAST(0x0000AB0700C32D3C AS DateTime), 1, CAST(0x0000AB0700C331EC AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Button] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, 0, N'Sys_Items', N'通用字典', 0, CAST(0x0000AAE400C249E4 AS DateTime), 1, CAST(0x0000AB110125442C AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, 1, N'OrganizeCategory', N'机构分类', 1, CAST(0x0000AAE401035510 AS DateTime), 1, CAST(0x0000AAE401035AEC AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, 1, N'RoleType', N'角色类型', 2, CAST(0x0000AAE40103ABC8 AS DateTime), 1, CAST(0x0000AAE40103B078 AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, 1, N'Certificate', N'证件名称', 3, CAST(0x0000AAE40104AB40 AS DateTime), 1, CAST(0x0000AAE40104AFF0 AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (5, 1, N'Education', N'学历', 4, CAST(0x0000AAE40104E95C AS DateTime), 1, CAST(0x0000AAE40104ECE0 AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (6, 1, N'Marry', N'婚姻', 5, CAST(0x0000AAE40105390C AS DateTime), 1, CAST(0x0000AAE401053DBC AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (7, 1, N'Birth', N'生育', 6, CAST(0x0000AAE401070B74 AS DateTime), 1, CAST(0x0000AAE401071150 AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (8, 1, N'Nation', N'民族', 7, CAST(0x0000AAE4010751C4 AS DateTime), 1, CAST(0x0000AAE401074E40 AS DateTime), 1)
INSERT [dbo].[Items] ([Id], [ParentId], [EnCode], [FullName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (9, 1, N'Gender', N'性别', 8, CAST(0x0000AAE401076CB8 AS DateTime), 1, CAST(0x0000AAE40107703C AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[ItemsDetail] ON 

INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, 2, N'Company', N'公司', 1, CAST(0x0000AAE40109E90C AS DateTime), 1, CAST(0x0000AAE40109F014 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, 2, N'Department', N'部门', 2, CAST(0x0000AAE4010A4CA8 AS DateTime), 1, CAST(0x0000AAE4010A502C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, 2, N'WorkGroup', N'小组', 3, CAST(0x0000AAE4010A70FC AS DateTime), 1, CAST(0x0000AAE4010A7354 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, 3, N'Sys_Role', N'系统角色', 1, CAST(0x0000AAE4010B49C8 AS DateTime), 1, CAST(0x0000AAE4010B4E78 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (5, 3, N'Bus_Role', N'业务角色', 2, CAST(0x0000AAE4010BDD70 AS DateTime), 1, CAST(0x0000AAE4010BEDD8 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (6, 3, N'Other', N'其他角色', 3, CAST(0x0000AAE4010C1934 AS DateTime), 1, CAST(0x0000AAE4010C1B8C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (7, 4, N'Id_Card', N'身份证', 1, CAST(0x0000AAE4010C8C0C AS DateTime), 1, CAST(0x0000AAE4010C90BC AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (8, 4, N'Other', N'其他', 2, CAST(0x0000AAE4010CEAF8 AS DateTime), 1, CAST(0x0000AAE4010CED50 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (9, 5, N'Junior College', N'大专', 1, CAST(0x0000AAE4010EE2E0 AS DateTime), 1, CAST(0x0000AAE4010EE664 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (10, 5, N'Undergraduate', N'本科', 2, CAST(0x0000AAE4010F04DC AS DateTime), 1, CAST(0x0000AAE4010F098C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (11, 5, N'Master', N'硕士', 3, CAST(0x0000AAE401100328 AS DateTime), 1, CAST(0x0000AAE4011007D8 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (12, 5, N'Doctor', N'博士', 4, CAST(0x0000AAE4011044C8 AS DateTime), 1, CAST(0x0000AAE40110484C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (13, 5, N'Other', N'其他', 5, CAST(0x0000AAE401106340 AS DateTime), 1, CAST(0x0000AAE4011066C4 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (14, 6, N'Married', N'已婚', 1, CAST(0x0000AAF500EDEC34 AS DateTime), 1, CAST(0x0000AAF500EDF210 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (15, 6, N'UnMarried', N'未婚', 2, CAST(0x0000AAF500EE12E0 AS DateTime), 1, CAST(0x0000AAF500EE1538 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (16, 6, N'Divorce', N'离异', 3, CAST(0x0000AAF500EE3608 AS DateTime), 1, CAST(0x0000AAF500EE398C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (17, 6, N'Widowed', N'丧偶', 4, CAST(0x0000AAF500EE5B88 AS DateTime), 1, CAST(0x0000AAF500EE5F0C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (18, 6, N'Other', N'其他', 5, CAST(0x0000AAF500EE70A0 AS DateTime), 1, CAST(0x0000AAF500EE7424 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (19, 7, N'Bred', N'未育', 1, CAST(0x0000AAF500EFD030 AS DateTime), 1, CAST(0x0000AAF500EFD3B4 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (20, 7, N'UnBred', N'已育', 2, CAST(0x0000AAF500EFFCB8 AS DateTime), 1, CAST(0x0000AAF500F0003C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (21, 7, N'Other', N'其他', 3, CAST(0x0000AAF500F025BC AS DateTime), 1, CAST(0x0000AAF500F02A6C AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (22, 8, N'Han', N'汉族', 1, CAST(0x0000AAF500F0BCE8 AS DateTime), 1, CAST(0x0000AAF500F0C3F0 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (23, 8, N'Other', N'其他', 2, CAST(0x0000AAF500F0D908 AS DateTime), 1, CAST(0x0000AAF500F0DEE4 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (24, 9, N'Male', N'男', 1, CAST(0x0000AAF500F16A58 AS DateTime), 1, CAST(0x0000AAF500F16CB0 AS DateTime), 1)
INSERT [dbo].[ItemsDetail] ([Id], [ItemId], [ItemCode], [ItemName], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (25, 9, N'Female', N'女', 2, CAST(0x0000AAF500F187A4 AS DateTime), 1, CAST(0x0000AAF500F18B28 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ItemsDetail] OFF
SET IDENTITY_INSERT [dbo].[LogOnLog] ON 

INSERT [dbo].[LogOnLog] ([Id], [LogType], [Account], [RealName], [Description], [IPAddress], [IPAddressName], [CreateTime]) VALUES (1, N'Exit', N'admin', N'Liu_Cabbage', N'安全退出系统', N'192.168.1.148', N'本地局域网', CAST(0x0000AB1900EA6960 AS DateTime))
INSERT [dbo].[LogOnLog] ([Id], [LogType], [Account], [RealName], [Description], [IPAddress], [IPAddressName], [CreateTime]) VALUES (2, N'Login', N'test', N'test', N'登陆成功', N'192.168.1.148', N'本地局域网', CAST(0x0000AB19011ACD44 AS DateTime))
INSERT [dbo].[LogOnLog] ([Id], [LogType], [Account], [RealName], [Description], [IPAddress], [IPAddressName], [CreateTime]) VALUES (3, N'Exit', N'test', N'test', N'安全退出系统', N'192.168.1.148', N'本地局域网', CAST(0x0000AB19011ADA28 AS DateTime))
INSERT [dbo].[LogOnLog] ([Id], [LogType], [Account], [RealName], [Description], [IPAddress], [IPAddressName], [CreateTime]) VALUES (4, N'Login', N'user', N'user', N'登陆成功', N'192.168.1.148', N'本地局域网', CAST(0x0000AB19011AE4B4 AS DateTime))
INSERT [dbo].[LogOnLog] ([Id], [LogType], [Account], [RealName], [Description], [IPAddress], [IPAddressName], [CreateTime]) VALUES (5, N'Exit', N'user', N'user', N'安全退出系统', N'192.168.1.148', N'本地局域网', CAST(0x0000AB19011AF3F0 AS DateTime))
SET IDENTITY_INSERT [dbo].[LogOnLog] OFF
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, 0, N'系统管理', N'ok-icon', N'&#xe6b0;', N'/', 0, CAST(0x0000AACD00FEF5EC AS DateTime), 1, CAST(0x0000AACD00FF03FC AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, 0, N'系统安全', N'ok-icon', N'&#xe769;', N'/', 1, CAST(0x0000AACD01048110 AS DateTime), 1, CAST(0x0000AACD010486EC AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, 0, N'系统设置', N'ok-icon', N'&#xe889;', N'/', 2, CAST(0x0000AACD0104AA14 AS DateTime), 1, CAST(0x0000AACD0104AEC4 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, 1, N'机构管理', N'ok-icon', N'&#xe726;', N'/Permissions/Organize', 1, CAST(0x0000AACD0115E9B4 AS DateTime), 1, CAST(0x0000AB1000B218F8 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (5, 1, N'字典分类', N'ok-icon', N'&#xe640;', N'/Permissions/Items', 2, CAST(0x0000AB1101035510 AS DateTime), 1, CAST(0x0000AB1101035510 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (6, 1, N'数据字典', N'ok-icon', N'&#xe660;', N'/Permissions/ItemsDetail', 3, CAST(0x0000AACD0117B9C4 AS DateTime), 1, CAST(0x0000AB110104409C AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (7, 1, N'用户管理', N'ok-icon', N'&#xe736;', N'/Permissions/User', 4, CAST(0x0000AACD01177BA8 AS DateTime), 1, CAST(0x0000AACD01178058 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (8, 1, N'角色管理', N'ok-icon', N'&#xe7be;', N'/Permissions/Role', 5, CAST(0x0000AACD0116C028 AS DateTime), 1, CAST(0x0000AACD0116C4D8 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (9, 1, N'系统菜单', N'ok-icon', N'&#xe7ad;', N'/Permissions/Module', 6, CAST(0x0000AACD0117D38C AS DateTime), 1, CAST(0x0000AACD0117CEDC AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (10, 1, N'按钮管理', N'ok-icon', N'&#xe729;', N'/Permissions/Button', 7, CAST(0x0000AB1100AD3310 AS DateTime), 1, CAST(0x0000AB1100AD3310 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (11, 2, N'登录日志', N'ok-icon', N'&#xe706;', N'/Security/LogonLog', 1, CAST(0x0000AAD1012D5AE0 AS DateTime), 1, CAST(0x0000AAD1012D61E8 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (12, 3, N'网站设置', N'ok-icon', N'&#xe7d5;', N'/SysSet/WebSet', 1, CAST(0x0000AAD1012DC584 AS DateTime), 1, CAST(0x0000AAD1012DCC8C AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (13, 3, N'开发设置', N'ok-icon', N'&#xe738;', N'/SysSet/DevSet', 2, CAST(0x0000AAD1012E0148 AS DateTime), 1, CAST(0x0000AAD1012E05F8 AS DateTime), 1)
INSERT [dbo].[Module] ([Id], [ParentId], [FullName], [FontFamily], [Icon], [UrlAddress], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (14, 3, N'邮件设置', N'ok-icon', N'&#xe7bd;', N'/SysSet/EmailSet', 3, CAST(0x0000AAD1012E2218 AS DateTime), 1, CAST(0x0000AAD1012E1E94 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Module] OFF
SET IDENTITY_INSERT [dbo].[Organize] ON 

INSERT [dbo].[Organize] ([Id], [ParentId], [EnCode], [FullName], [CategoryId], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, 0, N'Company', N'皮皮虾公司', 1, 1, CAST(0x0000AAD4012682EC AS DateTime), 1, CAST(0x0000AB1001269DE0 AS DateTime), 1)
INSERT [dbo].[Organize] ([Id], [ParentId], [EnCode], [FullName], [CategoryId], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, 1, N'Market', N'业务部', 2, 5, CAST(0x0000AAF501001AE4 AS DateTime), 1, CAST(0x0000AB10011997E4 AS DateTime), 1)
INSERT [dbo].[Organize] ([Id], [ParentId], [EnCode], [FullName], [CategoryId], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, 1, N'Ministry', N'技术部', 2, 2, CAST(0x0000AAF5010028F4 AS DateTime), 1, CAST(0x0000AB10010D9034 AS DateTime), 1)
INSERT [dbo].[Organize] ([Id], [ParentId], [EnCode], [FullName], [CategoryId], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, 1, N'HumanResourse', N'人事部', 2, 3, CAST(0x0000AAF501006134 AS DateTime), 1, CAST(0x0000AAF5010065E4 AS DateTime), 1)
INSERT [dbo].[Organize] ([Id], [ParentId], [EnCode], [FullName], [CategoryId], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (5, 3, N'IT Group', N'研发小组', 3, 4, CAST(0x0000AAF50100D9E8 AS DateTime), 1, CAST(0x0000AB1100A90E84 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Organize] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [EnCode], [FullName], [TypeClass], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, N'administrator', N'超级管理员', 4, 1, CAST(0x0000AAF5011DDE6C AS DateTime), 1, CAST(0x0000AAF5011DDC14 AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [EnCode], [FullName], [TypeClass], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, N'system', N'系统管理员', 4, 2, CAST(0x0000AAF5011ECD7C AS DateTime), 1, CAST(0x0000AAF5011ED358 AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [EnCode], [FullName], [TypeClass], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, N'user', N'普通用户', 5, 3, CAST(0x0000AAF5011F35C8 AS DateTime), 1, CAST(0x0000AAF5011F3820 AS DateTime), 1)
INSERT [dbo].[Role] ([Id], [EnCode], [FullName], [TypeClass], [SortCode], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (4, N'test', N'测试用户', 6, 4, CAST(0x0000AAF5011F5314 AS DateTime), 1, CAST(0x0000AAF5011F5698 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 1, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 2, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 3, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 4, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 4, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 4, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 4, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 5, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 5, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 5, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 5, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 6, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 6, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 6, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 6, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 4)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 7, 5)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 8, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 8, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 8, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 8, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 8, 6)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 9, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 9, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 9, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 9, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 10, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 10, 1)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 10, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 10, 3)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 11, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 11, 2)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 11, 4)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 12, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 13, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (1, 14, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 1, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 2, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 3, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 4, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 5, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 6, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 7, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 8, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 9, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 10, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 11, 0)
INSERT [dbo].[RoleAuthorize] ([RoleId], [ModuleId], [ButtonId]) VALUES (3, 14, 0)
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Account], [UserPassword], [RealName], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [DepartmentId], [RoleId], [EnabledMark], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'Liu_Cabbage', N'/Content/images/head.jpg', 1, CAST(0x0000AB0600000000 AS DateTime), NULL, NULL, NULL, 3, 1, 0, CAST(0x0000AAF501024C38 AS DateTime), 1, CAST(0x0000AB18012089A0 AS DateTime), 1)
INSERT [dbo].[User] ([Id], [Account], [UserPassword], [RealName], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [DepartmentId], [RoleId], [EnabledMark], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (2, N'user', N'e10adc3949ba59abbe56e057f20f883e', N'user', N'/Content/images/head.jpg', 1, CAST(0x0000AB07010ECB70 AS DateTime), NULL, NULL, NULL, 3, 3, 0, CAST(0x0000AB0400F35304 AS DateTime), 1, CAST(0x0000AB0400F357B4 AS DateTime), 1)
INSERT [dbo].[User] ([Id], [Account], [UserPassword], [RealName], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [DepartmentId], [RoleId], [EnabledMark], [CreateTime], [CreateUserId], [UpdateTime], [UpdateUserId]) VALUES (3, N'test', N'e10adc3949ba59abbe56e057f20f883e', N'test', N'/Content/images/head.jpg', 1, CAST(0x0000AB0500000000 AS DateTime), NULL, NULL, NULL, 3, 4, 0, CAST(0x0000AB05010D7C48 AS DateTime), 1, CAST(0x0000AB060110B674 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[User] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'ClassName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemsDetail', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP所在城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'IPAddressName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogOnLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字体类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'FontFamily'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organize', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'TypeClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleAuthorize', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ButtonId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'HeadIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
USE [master]
GO
ALTER DATABASE [FineAdmin] SET  READ_WRITE 
GO
