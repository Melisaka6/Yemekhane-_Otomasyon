USE [Yemekhane_Kayit_programi]
GO
/****** Object:  Table [dbo].[Kartlar]    Script Date: 5.01.2023 10:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kartlar](
	[Kart_No] [nchar](6) NOT NULL,
	[Bakiye] [int] NULL,
 CONSTRAINT [PK_Kartlar] PRIMARY KEY CLUSTERED 
(
	[Kart_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 5.01.2023 10:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[tc_kimlik] [varchar](11) NOT NULL,
	[Adi] [varchar](20) NULL,
	[Soyadi] [varchar](20) NULL,
	[Kart_no] [varchar](6) NOT NULL,
	[Sifre] [varchar](8) NOT NULL,
	[kullanici_tipi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[tc_kimlik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 5.01.2023 10:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Tc_Kimlik] [int] NULL,
	[OlayTarihi] [date] NULL,
	[FormName] [varchar](200) NULL,
	[OlayBaslik] [varchar](200) NULL,
	[OlayAciklama] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yemekler]    Script Date: 5.01.2023 10:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yemekler](
	[Yemek_İD] [int] NOT NULL,
	[Corbalar] [nchar](30) NULL,
	[Sulu Yemekler] [nchar](30) NULL,
	[Bakliyat] [nchar](30) NULL,
	[İcecekler] [nchar](30) NULL,
 CONSTRAINT [PK_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemek_İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Kartlar] ([Kart_No], [Bakiye]) VALUES (N'212121', 30)
GO
INSERT [dbo].[Kullanicilar] ([tc_kimlik], [Adi], [Soyadi], [Kart_no], [Sifre], [kullanici_tipi]) VALUES (N'37756055008', N'Melisa ', N'Aka', N'212121', N'mel', 1)
GO
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-04' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:System.Windows.Forms.TextBox, Text: 34234234234 olan ve Adı:System.Windows.Forms.TextBox, Text: rtrerefd Soyadı:System.Windows.Forms.TextBox, Text: dfgfdgdf kullanıcı  kayıt oldu .')
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-04' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:87987967876 olan ve Adı:asdasda Soyadı:fghgfh kullanıcı  kayıt oldu .')
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-05' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:15522540987 olan ve Adı:Eylıl Soyadı:eker kullanıcı  kayıt oldu .')
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-05' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:24597851364 olan ve Adı:Batuhan  Soyadı:Aslantürk kullanıcı  kayıt oldu .')
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-05' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:37756055008 olan ve Adı:Melisa  Soyadı:Aka kullanıcı  kayıt oldu .')
INSERT [dbo].[Log] ([Tc_Kimlik], [OlayTarihi], [FormName], [OlayBaslik], [OlayAciklama]) VALUES (0, CAST(N'2023-01-05' AS Date), N'Yeni Kayıt', N'Yeni Kullanıcı Oluşturma', N'Tc Kimlik Numaralı:93821650372 olan ve Adı:mustafa Soyadı:arlanoğlu kullanıcı  kayıt oldu .')
GO
INSERT [dbo].[Yemekler] ([Yemek_İD], [Corbalar], [Sulu Yemekler], [Bakliyat], [İcecekler]) VALUES (1, N'Mercimek Çorbası              ', N'Fırında Köfte                 ', N'Pilav                         ', N'Ayran                         ')
INSERT [dbo].[Yemekler] ([Yemek_İD], [Corbalar], [Sulu Yemekler], [Bakliyat], [İcecekler]) VALUES (2, N'Ezogelin                      ', N'Tavuk Kanat                   ', N'Yoğurtlu Makarna              ', N'Kola                          ')
INSERT [dbo].[Yemekler] ([Yemek_İD], [Corbalar], [Sulu Yemekler], [Bakliyat], [İcecekler]) VALUES (3, N'Yoğurt Çorbası                ', N'Ankara Tava                   ', N'Makarna                       ', N'Kola                          ')
INSERT [dbo].[Yemekler] ([Yemek_İD], [Corbalar], [Sulu Yemekler], [Bakliyat], [İcecekler]) VALUES (4, N'Domates                       ', N'Köri Soslu Tavuk              ', N'Bulgur Pilavı                 ', N'Ayran                         ')
INSERT [dbo].[Yemekler] ([Yemek_İD], [Corbalar], [Sulu Yemekler], [Bakliyat], [İcecekler]) VALUES (5, N'Tavuk Suyu                    ', N'Orman Kebabı                  ', N'Pilav                         ', N'Ayran                         ')
GO
