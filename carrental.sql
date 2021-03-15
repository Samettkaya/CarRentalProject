USE [CarRentalProject]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[ImagePath] [varchar](255) NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[ColorId] [int] NULL,
	[ModelYear] [int] NULL,
	[CarName] [varchar](255) NULL,
	[DailyPrice] [decimal](18, 0) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CompanyName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rentals]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rentals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NULL,
	[CustomerId] [int] NULL,
	[RentDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15.03.2021 14:36:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, N'Bmw')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, N'Mercedes')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'Chevrolet')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, N'Citroen')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, N'Ford')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, N'Honda')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (7, N'Lamborghini')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (8, N'Toyota')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Volkswagen')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Volvo')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (11, N'Tesla')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarImages] ON 

INSERT [dbo].[CarImages] ([Id], [CarId], [ImagePath], [Date]) VALUES (1, 1, N'Images/fcc79a18bbdf41568993b0a817f6b17a.JPG', CAST(N'2021-03-15T01:23:36.473' AS DateTime))
INSERT [dbo].[CarImages] ([Id], [CarId], [ImagePath], [Date]) VALUES (2, 2, N'Images/dd51612aab624d428de9dd2aab018042.JPG', CAST(N'2021-03-15T01:53:03.840' AS DateTime))
INSERT [dbo].[CarImages] ([Id], [CarId], [ImagePath], [Date]) VALUES (3, 1, N'Images/f5811c30f72b4011bca0233536f40a42.JPG', CAST(N'2021-03-15T03:02:52.737' AS DateTime))
SET IDENTITY_INSERT [dbo].[CarImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (1, 1, 1, 2015, N'320i', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (2, 1, 2, 2015, N'320i', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (3, 1, 3, 2015, N'320i', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (4, 1, 4, 2015, N'320i', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (5, 1, 5, 2015, N'320i', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (6, 2, 1, 2017, N'CLA180', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (7, 2, 2, 2017, N'CLA180', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (8, 2, 3, 2017, N'CLA180', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (9, 2, 4, 2017, N'CLA180', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (10, 2, 5, 2017, N'CLA180', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (11, 3, 1, 2012, N'Cruze', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (12, 3, 2, 2012, N'Cruze', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (13, 3, 3, 2012, N'Cruze', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (14, 3, 4, 2012, N'Cruze', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (15, 3, 5, 2012, N'Cruze', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (16, 4, 1, 2018, N'C-Elysee', CAST(175 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (17, 4, 2, 2018, N'C-Elysee', CAST(175 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (18, 4, 3, 2018, N'C-Elysee', CAST(175 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (19, 4, 4, 2018, N'C-Elysee', CAST(175 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (20, 4, 5, 2018, N'C-Elysee', CAST(175 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (21, 5, 1, 2015, N'Focus', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (22, 5, 2, 2015, N'Focus', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (23, 5, 3, 2015, N'Focus', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (24, 5, 4, 2015, N'Focus', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (25, 5, 5, 2015, N'Focus', CAST(150 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (26, 6, 1, 2020, N'Civic', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (27, 6, 2, 2020, N'Civic', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (28, 6, 3, 2020, N'Civic', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (29, 6, 4, 2020, N'Civic', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (30, 6, 5, 2020, N'Civic', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (31, 7, 1, 2020, N'Aventador', CAST(1500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (32, 7, 2, 2020, N'Aventador', CAST(1500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (33, 7, 3, 2020, N'Aventador', CAST(1500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (34, 7, 4, 2020, N'Aventador', CAST(1500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (35, 7, 5, 2020, N'Aventador', CAST(1500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (36, 8, 1, 2020, N'Supra', CAST(1000 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (37, 8, 2, 2020, N'Supra', CAST(1000 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (38, 8, 3, 2020, N'Supra', CAST(1000 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (39, 8, 4, 2020, N'Supra', CAST(1000 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (40, 8, 5, 2020, N'Supra', CAST(1000 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (41, 9, 1, 2018, N'Passat', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (42, 9, 2, 2018, N'Passat', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (43, 9, 3, 2018, N'Passat', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (44, 9, 4, 2018, N'Passat', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (45, 9, 5, 2018, N'Passat', CAST(300 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (46, 10, 1, 2020, N'V40', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (47, 10, 2, 2020, N'V40', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (48, 10, 3, 2020, N'V40', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (49, 10, 4, 2020, N'V40', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (50, 10, 5, 2020, N'V40', CAST(250 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (51, 11, 1, 2020, N'Model X', CAST(500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (52, 11, 2, 2020, N'Model X', CAST(500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (53, 11, 3, 2020, N'Model X', CAST(500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (54, 11, 4, 2020, N'Model X', CAST(500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [CarName], [DailyPrice], [Description]) VALUES (55, 11, 5, 2020, N'Model X', CAST(500 AS Decimal(18, 0)), N'Henüz açiklama eklenmemis!')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Beyaz')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Siyah')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Gri')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Kirmizi')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Mavi')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (1, N'admin')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([Id], [UserId], [OperationClaimId]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordSalt], [PasswordHash], [Status]) VALUES (1, N'Salih', N'Yanbal', N'x@x.com', 0x1D023BB9DA23FE16A79EEF692BE543F8174C8E64187A90E24C8AD7A0FFB1EE3A4A1A6D5999D4F974EC90B4C308537818F10DD45E6089A5418934F92026CDC1933611286293AB215B0C39286507096BD660C8605ADB44035C6CB749B3E61FEB1A63006EB086E9FDF66AED8FB0B1A201452395086B5765BC5B25FD998509D0635D, 0x3D7373E6BBFDEFB051942558C2E3150A3B003A7C6B1DBA7EFB6D8B1F6F2B72DD95C467FF33005D240D4527BAC9EBF90E3CF8384A4DF10D01664BD742D26C822E, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Rentals] ADD  DEFAULT (NULL) FOR [ReturnDate]
GO
ALTER TABLE [dbo].[CarImages]  WITH CHECK ADD  CONSTRAINT [FK_CarImages_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[CarImages] CHECK CONSTRAINT [FK_CarImages_Cars]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Brands]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Colors]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Users]
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD  CONSTRAINT [FK_Rentals_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Rentals] CHECK CONSTRAINT [FK_Rentals_Cars]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users]
GO
