USE [HomeworkDB]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 9.10.2015 г. 20:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address_text] [varchar](50) NULL,
	[town_id] [int] NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONTINENT]    Script Date: 9.10.2015 г. 20:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTINENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_CONTINENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 9.10.2015 г. 20:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[continent_id] [int] NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 9.10.2015 г. 20:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSON](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[address_id] [int] NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOWN]    Script Date: 9.10.2015 г. 20:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOWN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_TOWN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADDRESS] ON 

INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (1, N'507 - 20th Ave. E.', 2)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (2, N'Apt. 2A', 1)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (3, N'908 W. Capital Way', 3)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (4, N'722 Moss Bay Blvd.', 3)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (5, N'4110 Old Redmond Rd.', 4)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (6, N'14 Garrett Hill', 2)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (7, N'Coventry House', 1)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (8, N'Miner Rd.', 4)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (9, N'Edgeham Hollow', 2)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (10, N'Winchester Way', 3)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (11, N'4726 - 11th Ave. N.E.', 4)
INSERT [dbo].[ADDRESS] ([id], [address_text], [town_id]) VALUES (12, N'7 Houndstooth Rd.', 2)
SET IDENTITY_INSERT [dbo].[ADDRESS] OFF
SET IDENTITY_INSERT [dbo].[CONTINENT] ON 

INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (1, N'Europe')
INSERT [dbo].[CONTINENT] ([id], [name]) VALUES (2, N'North America')
SET IDENTITY_INSERT [dbo].[CONTINENT] OFF
SET IDENTITY_INSERT [dbo].[COUNTRY] ON 

INSERT [dbo].[COUNTRY] ([id], [name], [continent_id]) VALUES (1, N'USA', 2)
INSERT [dbo].[COUNTRY] ([id], [name], [continent_id]) VALUES (2, N'UK', 1)
SET IDENTITY_INSERT [dbo].[COUNTRY] OFF
SET IDENTITY_INSERT [dbo].[PERSON] ON 

INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (1, N'Davolio', N'Nancy', 1)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (2, N'Fuller', N'Andrew', 2)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (3, N'Leverling', N'Janet', 3)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (4, N'Peacock', N'Margaret', 4)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (5, N'Buchanan', N'Steven', 5)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (6, N'Suyama', N'Michael', 6)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (7, N'King', N'Robert', 7)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (8, N'Callahan', N'Laura', 8)
INSERT [dbo].[PERSON] ([id], [first_name], [last_name], [address_id]) VALUES (9, N'Dodsworth', N'Anne', 9)
SET IDENTITY_INSERT [dbo].[PERSON] OFF
SET IDENTITY_INSERT [dbo].[TOWN] ON 

INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (1, N'Berlin', 2)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (2, N'London', 2)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (3, N'NY', 1)
INSERT [dbo].[TOWN] ([id], [name], [country_id]) VALUES (4, N'LA', 1)
SET IDENTITY_INSERT [dbo].[TOWN] OFF
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_TOWN] FOREIGN KEY([town_id])
REFERENCES [dbo].[TOWN] ([id])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_TOWN]
GO
ALTER TABLE [dbo].[COUNTRY]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRY_CONTINENT] FOREIGN KEY([continent_id])
REFERENCES [dbo].[CONTINENT] ([id])
GO
ALTER TABLE [dbo].[COUNTRY] CHECK CONSTRAINT [FK_COUNTRY_CONTINENT]
GO
ALTER TABLE [dbo].[PERSON]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_ADDRESS] FOREIGN KEY([address_id])
REFERENCES [dbo].[ADDRESS] ([id])
GO
ALTER TABLE [dbo].[PERSON] CHECK CONSTRAINT [FK_PERSON_ADDRESS]
GO
ALTER TABLE [dbo].[TOWN]  WITH CHECK ADD  CONSTRAINT [FK_TOWN_COUNTRY] FOREIGN KEY([country_id])
REFERENCES [dbo].[COUNTRY] ([id])
GO
ALTER TABLE [dbo].[TOWN] CHECK CONSTRAINT [FK_TOWN_COUNTRY]
GO
