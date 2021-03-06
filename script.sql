CREATE DATABASE UserProjectsDB;

USE [UserProjectsDB]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 5/30/2019 9:22:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Credits] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/30/2019 9:22:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProject]    Script Date: 5/30/2019 9:22:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AssignedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (1, CAST(0x0000AABB00000000 AS DateTime), CAST(0x0000AC2900000000 AS DateTime), 3)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (2, CAST(0x0000AABB00000000 AS DateTime), CAST(0x0000AB3500000000 AS DateTime), 4)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (3, CAST(0x0000AA4000000000 AS DateTime), CAST(0x0000AB1600000000 AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (4, CAST(0x0000A8D300000000 AS DateTime), CAST(0x0000AAD900000000 AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (5, CAST(0x0000A9C800000000 AS DateTime), CAST(0x0000ABEB00000000 AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (6, CAST(0x0000A89600000000 AS DateTime), CAST(0x0000AAF800000000 AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (7, CAST(0x0000ABEB00000000 AS DateTime), CAST(0x0000AD5800000000 AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (8, CAST(0x0000A94E00000000 AS DateTime), CAST(0x0000AAD900000000 AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (1, N'Fabian', N'Solano')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (2, N'John', N'Doe')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (3, N'Rebeca', N'Valdelomar')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (4, N'Walter', N'White')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (5, N'Daenerys', N'Targaryen')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserProject] ON 

INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 1, 1, 1, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 2, 2, 0, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 2, 3, 0, CAST(0x0000AA5C00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (4, 1, 3, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (5, 1, 4, 0, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (6, 1, 5, 0, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (7, 1, 6, 0, CAST(0x0000A9C800000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (8, 2, 7, 1, CAST(0x0000A94E00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (9, 2, 5, 0, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (10, 2, 6, 1, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (11, 3, 3, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (12, 3, 8, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (13, 3, 7, 1, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (14, 3, 5, 0, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (15, 3, 6, 1, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (16, 4, 4, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (17, 4, 5, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (18, 4, 6, 1, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (19, 4, 7, 0, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (20, 4, 8, 1, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (21, 5, 1, 1, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (22, 5, 3, 0, CAST(0x0000AA2200000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (23, 5, 5, 1, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (24, 5, 7, 0, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[UserProject] ([Id], [UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (25, 5, 2, 1, CAST(0x0000AB1600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserProject] OFF
ALTER TABLE [dbo].[UserProject]  WITH CHECK ADD  CONSTRAINT [FK_UserProject_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProject] CHECK CONSTRAINT [FK_UserProject_ProjectId]
GO
ALTER TABLE [dbo].[UserProject]  WITH CHECK ADD  CONSTRAINT [FK_UserProject_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProject] CHECK CONSTRAINT [FK_UserProject_UserId]
GO
