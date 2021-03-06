USE [18ip9]
GO
/****** Object:  Table [dbo].[authorization]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorization](
	[id polz] [int] NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[surnamre] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_authorization] PRIMARY KEY CLUSTERED 
(
	[id polz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blyda]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blyda](
	[id blyda] [int] IDENTITY(1,1) NOT NULL,
	[nameblyda] [nvarchar](50) NULL,
 CONSTRAINT [PK_blyda] PRIMARY KEY CLUSTERED 
(
	[id blyda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blyda v predzakaze]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blyda v predzakaze](
	[id blyda] [int] NOT NULL,
	[id predzakaza] [int] NOT NULL,
 CONSTRAINT [PK_blyda v predzakaze] PRIMARY KEY CLUSTERED 
(
	[id blyda] ASC,
	[id predzakaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bron stola]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bron stola](
	[id broni] [int] IDENTITY(1,1) NOT NULL,
	[id polz] [int] NULL,
	[date] [datetime] NULL,
	[id predzakaza] [int] NULL,
	[id zakaz4ik] [int] NULL,
 CONSTRAINT [PK_Bron stola] PRIMARY KEY CLUSTERED 
(
	[id broni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gost]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gost](
	[id gost] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[telefone] [numeric](18, 0) NULL,
 CONSTRAINT [PK_gost] PRIMARY KEY CLUSTERED 
(
	[id gost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ofisant]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ofisant](
	[id ofisant] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[telefone] [numeric](18, 0) NULL,
 CONSTRAINT [PK_ofisant] PRIMARY KEY CLUSTERED 
(
	[id ofisant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ofisant na bron]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ofisant na bron](
	[id ofisant] [int] NOT NULL,
	[id broni] [int] NOT NULL,
 CONSTRAINT [PK_ofisant na bron] PRIMARY KEY CLUSTERED 
(
	[id ofisant] ASC,
	[id broni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[predzakaz]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[predzakaz](
	[id predzakaza] [int] IDENTITY(1,1) NOT NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_predzakaz] PRIMARY KEY CLUSTERED 
(
	[id predzakaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spisok gostey]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spisok gostey](
	[id gost] [int] NOT NULL,
	[id broni] [int] NOT NULL,
 CONSTRAINT [PK_spisok gostey] PRIMARY KEY CLUSTERED 
(
	[id gost] ASC,
	[id broni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stoli]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stoli](
	[id stola] [int] NOT NULL,
 CONSTRAINT [PK_stoli] PRIMARY KEY CLUSTERED 
(
	[id stola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stoli v broni]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stoli v broni](
	[id stola] [int] NOT NULL,
	[id broni] [int] NOT NULL,
 CONSTRAINT [PK_stoli v broni] PRIMARY KEY CLUSTERED 
(
	[id stola] ASC,
	[id broni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zakaz4ik]    Script Date: 09.11.2021 17:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zakaz4ik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[telefone] [numeric](18, 0) NULL,
 CONSTRAINT [PK_zakaz4ik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[blyda v predzakaze]  WITH CHECK ADD  CONSTRAINT [FK_blyda v predzakaze_blyda] FOREIGN KEY([id blyda])
REFERENCES [dbo].[blyda] ([id blyda])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[blyda v predzakaze] CHECK CONSTRAINT [FK_blyda v predzakaze_blyda]
GO
ALTER TABLE [dbo].[blyda v predzakaze]  WITH CHECK ADD  CONSTRAINT [FK_blyda v predzakaze_predzakaz] FOREIGN KEY([id predzakaza])
REFERENCES [dbo].[predzakaz] ([id predzakaza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[blyda v predzakaze] CHECK CONSTRAINT [FK_blyda v predzakaze_predzakaz]
GO
ALTER TABLE [dbo].[Bron stola]  WITH CHECK ADD  CONSTRAINT [FK_Bron stola_authorization] FOREIGN KEY([id polz])
REFERENCES [dbo].[authorization] ([id polz])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bron stola] CHECK CONSTRAINT [FK_Bron stola_authorization]
GO
ALTER TABLE [dbo].[Bron stola]  WITH CHECK ADD  CONSTRAINT [FK_Bron stola_predzakaz] FOREIGN KEY([id predzakaza])
REFERENCES [dbo].[predzakaz] ([id predzakaza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bron stola] CHECK CONSTRAINT [FK_Bron stola_predzakaz]
GO
ALTER TABLE [dbo].[Bron stola]  WITH CHECK ADD  CONSTRAINT [FK_Bron stola_zakaz4ik] FOREIGN KEY([id zakaz4ik])
REFERENCES [dbo].[zakaz4ik] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bron stola] CHECK CONSTRAINT [FK_Bron stola_zakaz4ik]
GO
ALTER TABLE [dbo].[ofisant na bron]  WITH CHECK ADD  CONSTRAINT [FK_ofisant na bron_Bron stola] FOREIGN KEY([id broni])
REFERENCES [dbo].[Bron stola] ([id broni])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ofisant na bron] CHECK CONSTRAINT [FK_ofisant na bron_Bron stola]
GO
ALTER TABLE [dbo].[ofisant na bron]  WITH CHECK ADD  CONSTRAINT [FK_ofisant na bron_ofisant] FOREIGN KEY([id ofisant])
REFERENCES [dbo].[ofisant] ([id ofisant])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ofisant na bron] CHECK CONSTRAINT [FK_ofisant na bron_ofisant]
GO
ALTER TABLE [dbo].[spisok gostey]  WITH CHECK ADD  CONSTRAINT [FK_spisok gostey_Bron stola] FOREIGN KEY([id broni])
REFERENCES [dbo].[Bron stola] ([id broni])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spisok gostey] CHECK CONSTRAINT [FK_spisok gostey_Bron stola]
GO
ALTER TABLE [dbo].[spisok gostey]  WITH CHECK ADD  CONSTRAINT [FK_spisok gostey_gost] FOREIGN KEY([id gost])
REFERENCES [dbo].[gost] ([id gost])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spisok gostey] CHECK CONSTRAINT [FK_spisok gostey_gost]
GO
ALTER TABLE [dbo].[stoli v broni]  WITH CHECK ADD  CONSTRAINT [FK_stoli v broni_Bron stola] FOREIGN KEY([id broni])
REFERENCES [dbo].[Bron stola] ([id broni])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[stoli v broni] CHECK CONSTRAINT [FK_stoli v broni_Bron stola]
GO
ALTER TABLE [dbo].[stoli v broni]  WITH CHECK ADD  CONSTRAINT [FK_stoli v broni_stoli] FOREIGN KEY([id stola])
REFERENCES [dbo].[stoli] ([id stola])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[stoli v broni] CHECK CONSTRAINT [FK_stoli v broni_stoli]
GO
