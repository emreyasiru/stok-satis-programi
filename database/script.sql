USE [master]
GO
/****** Object:  Database [emre2]    Script Date: 26.06.2025 16:50:43 ******/
CREATE DATABASE [emre2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'emre2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\emre2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'emre2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\emre2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [emre2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [emre2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [emre2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [emre2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [emre2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [emre2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [emre2] SET ARITHABORT OFF 
GO
ALTER DATABASE [emre2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [emre2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [emre2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [emre2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [emre2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [emre2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [emre2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [emre2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [emre2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [emre2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [emre2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [emre2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [emre2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [emre2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [emre2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [emre2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [emre2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [emre2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [emre2] SET  MULTI_USER 
GO
ALTER DATABASE [emre2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [emre2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [emre2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [emre2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [emre2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [emre2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [emre2] SET QUERY_STORE = ON
GO
ALTER DATABASE [emre2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [emre2]
GO
/****** Object:  Table [dbo].[il]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[il](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](20) NOT NULL,
 CONSTRAINT [PK_il] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilce]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[il_id] [tinyint] NOT NULL,
	[ad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ilce] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kasa]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kasa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kasa_tutari] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kategori_adı] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[users] [varchar](50) NULL,
	[pass] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personel_adı] [varchar](50) NULL,
	[personel_soyadı] [varchar](50) NULL,
	[personel_tc] [char](11) NULL,
	[personel_tel] [varchar](50) NULL,
	[personel_mail] [varchar](150) NULL,
	[personel_il] [varchar](50) NULL,
	[personel_ilçe] [varchar](50) NULL,
	[personel_adres] [varchar](200) NULL,
	[personel_cinsiyet] [varchar](50) NULL,
	[personel_doğumtarihi] [date] NULL,
	[personel_ünvan] [varchar](50) NULL,
	[personel_ücret] [int] NULL,
	[personel_medenidurum] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis_kayitlari]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis_kayitlari](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fatura_no] [int] NULL,
	[urun_adi] [nvarchar](max) NULL,
	[barkod] [nvarchar](max) NULL,
	[miktar] [nvarchar](max) NULL,
	[fiyat] [nvarchar](max) NULL,
	[satis_tarihi] [datetime] NULL,
 CONSTRAINT [PK__satis_ka__3213E83F3A5ED0CD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tedarikciler]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedarikciler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tedarikci_adi] [varchar](50) NULL,
	[tedarikci_adresi] [varchar](150) NULL,
	[tedarikci_telefon] [varchar](20) NULL,
	[tedarikci_email] [varchar](90) NULL,
	[tedarikci_yetkilisi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urunler]    Script Date: 26.06.2025 16:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ürün_adı] [varchar](50) NULL,
	[barkod] [varchar](50) NULL,
	[stok_miktarı] [int] NULL,
	[alış_fiyatı] [int] NULL,
	[satış_fiyatı] [int] NULL,
	[kategori_adı] [int] NULL,
	[tedarikçi_firma] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[il] ON 

INSERT [dbo].[il] ([id], [ad]) VALUES (1, N'Adana')
INSERT [dbo].[il] ([id], [ad]) VALUES (2, N'Adıyaman')
INSERT [dbo].[il] ([id], [ad]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[il] ([id], [ad]) VALUES (4, N'Ağrı')
INSERT [dbo].[il] ([id], [ad]) VALUES (5, N'Amasya')
INSERT [dbo].[il] ([id], [ad]) VALUES (6, N'Ankara')
INSERT [dbo].[il] ([id], [ad]) VALUES (7, N'Antalya')
INSERT [dbo].[il] ([id], [ad]) VALUES (8, N'Artvin')
INSERT [dbo].[il] ([id], [ad]) VALUES (9, N'Aydın')
INSERT [dbo].[il] ([id], [ad]) VALUES (10, N'Balıkesir')
INSERT [dbo].[il] ([id], [ad]) VALUES (11, N'Bilecik')
INSERT [dbo].[il] ([id], [ad]) VALUES (12, N'Bingöl')
INSERT [dbo].[il] ([id], [ad]) VALUES (13, N'Bitlis')
INSERT [dbo].[il] ([id], [ad]) VALUES (14, N'Bolu')
INSERT [dbo].[il] ([id], [ad]) VALUES (15, N'Burdur')
INSERT [dbo].[il] ([id], [ad]) VALUES (16, N'Bursa')
INSERT [dbo].[il] ([id], [ad]) VALUES (17, N'Çanakkale')
INSERT [dbo].[il] ([id], [ad]) VALUES (18, N'Çankırı')
INSERT [dbo].[il] ([id], [ad]) VALUES (19, N'Çorum')
INSERT [dbo].[il] ([id], [ad]) VALUES (20, N'Denizli')
INSERT [dbo].[il] ([id], [ad]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[il] ([id], [ad]) VALUES (22, N'Edirne')
INSERT [dbo].[il] ([id], [ad]) VALUES (23, N'Elazığ')
INSERT [dbo].[il] ([id], [ad]) VALUES (24, N'Erzincan')
INSERT [dbo].[il] ([id], [ad]) VALUES (25, N'Erzurum')
INSERT [dbo].[il] ([id], [ad]) VALUES (26, N'Eskişehir')
INSERT [dbo].[il] ([id], [ad]) VALUES (27, N'Gaziantep')
INSERT [dbo].[il] ([id], [ad]) VALUES (28, N'Giresun')
INSERT [dbo].[il] ([id], [ad]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[il] ([id], [ad]) VALUES (30, N'Hakkari')
INSERT [dbo].[il] ([id], [ad]) VALUES (31, N'Hatay')
INSERT [dbo].[il] ([id], [ad]) VALUES (32, N'Isparta')
INSERT [dbo].[il] ([id], [ad]) VALUES (33, N'Mersin(İçel)')
INSERT [dbo].[il] ([id], [ad]) VALUES (34, N'İstanbul')
INSERT [dbo].[il] ([id], [ad]) VALUES (35, N'İzmir')
INSERT [dbo].[il] ([id], [ad]) VALUES (36, N'Kars')
INSERT [dbo].[il] ([id], [ad]) VALUES (37, N'Kastamonu')
INSERT [dbo].[il] ([id], [ad]) VALUES (38, N'Kayseri')
INSERT [dbo].[il] ([id], [ad]) VALUES (39, N'Kırklareli')
INSERT [dbo].[il] ([id], [ad]) VALUES (40, N'Kırşehir')
INSERT [dbo].[il] ([id], [ad]) VALUES (41, N'Kocaeli')
INSERT [dbo].[il] ([id], [ad]) VALUES (42, N'Konya')
INSERT [dbo].[il] ([id], [ad]) VALUES (43, N'Kütahya')
INSERT [dbo].[il] ([id], [ad]) VALUES (44, N'Malatya')
INSERT [dbo].[il] ([id], [ad]) VALUES (45, N'Manisa')
INSERT [dbo].[il] ([id], [ad]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[il] ([id], [ad]) VALUES (47, N'Mardin')
INSERT [dbo].[il] ([id], [ad]) VALUES (48, N'Muğla')
INSERT [dbo].[il] ([id], [ad]) VALUES (49, N'Muş')
INSERT [dbo].[il] ([id], [ad]) VALUES (50, N'Nevşehir')
INSERT [dbo].[il] ([id], [ad]) VALUES (51, N'Niğde')
INSERT [dbo].[il] ([id], [ad]) VALUES (52, N'Ordu')
INSERT [dbo].[il] ([id], [ad]) VALUES (53, N'Rize')
INSERT [dbo].[il] ([id], [ad]) VALUES (54, N'Sakarya')
INSERT [dbo].[il] ([id], [ad]) VALUES (55, N'Samsun')
INSERT [dbo].[il] ([id], [ad]) VALUES (56, N'Siirt')
INSERT [dbo].[il] ([id], [ad]) VALUES (57, N'Sinop')
INSERT [dbo].[il] ([id], [ad]) VALUES (58, N'Sivas')
INSERT [dbo].[il] ([id], [ad]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[il] ([id], [ad]) VALUES (60, N'Tokat')
INSERT [dbo].[il] ([id], [ad]) VALUES (61, N'Trabzon')
INSERT [dbo].[il] ([id], [ad]) VALUES (62, N'Tunceli')
INSERT [dbo].[il] ([id], [ad]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[il] ([id], [ad]) VALUES (64, N'Uşak')
INSERT [dbo].[il] ([id], [ad]) VALUES (65, N'Van')
INSERT [dbo].[il] ([id], [ad]) VALUES (66, N'Yozgat')
INSERT [dbo].[il] ([id], [ad]) VALUES (67, N'Zonguldak')
INSERT [dbo].[il] ([id], [ad]) VALUES (68, N'Aksaray')
INSERT [dbo].[il] ([id], [ad]) VALUES (69, N'Bayburt')
INSERT [dbo].[il] ([id], [ad]) VALUES (70, N'Karaman')
INSERT [dbo].[il] ([id], [ad]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[il] ([id], [ad]) VALUES (72, N'Batman')
INSERT [dbo].[il] ([id], [ad]) VALUES (73, N'Şırnak')
INSERT [dbo].[il] ([id], [ad]) VALUES (74, N'Bartın')
INSERT [dbo].[il] ([id], [ad]) VALUES (75, N'Ardahan')
INSERT [dbo].[il] ([id], [ad]) VALUES (76, N'Iğdır')
INSERT [dbo].[il] ([id], [ad]) VALUES (77, N'Yalova')
INSERT [dbo].[il] ([id], [ad]) VALUES (78, N'Karabük')
INSERT [dbo].[il] ([id], [ad]) VALUES (79, N'Kilis')
INSERT [dbo].[il] ([id], [ad]) VALUES (80, N'Osmaniye')
INSERT [dbo].[il] ([id], [ad]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[il] OFF
GO
SET IDENTITY_INSERT [dbo].[ilce] ON 

INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (1, 1, N'Aladağ(Karsantı)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (2, 1, N'Ceyhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (3, 1, N'Çukurova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (4, 1, N'Feke')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (5, 1, N'İmamoğlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (6, 1, N'Karaisalı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (7, 1, N'Karataş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (8, 1, N'Kozan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (9, 1, N'Pozantı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (10, 1, N'Saimbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (11, 1, N'Sarıçam')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (12, 1, N'Seyhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (13, 1, N'Tufanbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (14, 1, N'Yumurtalık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (15, 1, N'Yüreğir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (16, 2, N'Adıyaman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (17, 2, N'Besni')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (18, 2, N'Çelikhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (19, 2, N'Gerger')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (20, 2, N'Gölbaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (21, 2, N'Kahta')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (22, 2, N'Samsat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (23, 2, N'Sincik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (24, 2, N'Tut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (25, 3, N'Afyonkarahisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (26, 3, N'Başmakçı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (27, 3, N'Bayat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (28, 3, N'Bolvadin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (29, 3, N'Çay')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (30, 3, N'Çobanlar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (31, 3, N'Dazkırı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (32, 3, N'Dinar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (33, 3, N'Emirdağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (34, 3, N'Evciler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (35, 3, N'Hocalar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (36, 3, N'İhsaniye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (37, 3, N'İscehisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (38, 3, N'Kızılören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (39, 3, N'Sandıklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (40, 3, N'Sincanlı(Sinanpaşa)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (41, 3, N'Sultandağı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (42, 3, N'Şuhut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (43, 4, N'Ağrı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (44, 4, N'Diyadin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (45, 4, N'Doğubeyazıt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (46, 4, N'Eleşkirt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (47, 4, N'Hamur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (48, 4, N'Patnos')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (49, 4, N'Taşlıçay')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (50, 4, N'Tutak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (51, 5, N'Amasya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (52, 5, N'Göynücek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (53, 5, N'Gümüşhacıköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (54, 5, N'Hamamözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (55, 5, N'Merzifon')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (56, 5, N'Suluova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (57, 5, N'Taşova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (58, 6, N'Akyurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (59, 6, N'Altındağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (60, 6, N'Ayaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (61, 6, N'Bala')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (62, 6, N'Beypazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (63, 6, N'Çamlıdere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (64, 6, N'Çankaya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (65, 6, N'Çubuk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (66, 6, N'Elmadağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (67, 6, N'Etimesgut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (68, 6, N'Evren')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (69, 6, N'Gölbaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (70, 6, N'Güdül')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (71, 6, N'Haymana')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (72, 6, N'Kalecik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (73, 6, N'Kazan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (74, 6, N'Keçiören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (75, 6, N'Kızılcahamam')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (76, 6, N'Mamak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (77, 6, N'Nallıhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (78, 6, N'Polatlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (79, 6, N'Pursaklar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (80, 6, N'Sincan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (81, 6, N'Şereflikoçhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (82, 6, N'Yenimahalle')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (83, 7, N'Akseki')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (84, 7, N'Aksu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (85, 7, N'Alanya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (86, 7, N'Döşemealtı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (87, 7, N'Elmalı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (88, 7, N'Finike')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (89, 7, N'Gazipaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (90, 7, N'Gündoğmuş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (91, 7, N'İbradı(Aydınkent)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (92, 7, N'Kale(Demre)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (93, 7, N'Kaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (94, 7, N'Kemer')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (95, 7, N'Kepez')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (96, 7, N'Konyaaltı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (97, 7, N'Korkuteli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (98, 7, N'Kumluca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (99, 7, N'Manavgat')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (100, 7, N'Muratpaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (101, 7, N'Serik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (102, 8, N'Ardanuç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (103, 8, N'Arhavi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (104, 8, N'Artvin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (105, 8, N'Borçka')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (106, 8, N'Hopa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (107, 8, N'Murgul(Göktaş)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (108, 8, N'Şavşat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (109, 8, N'Yusufeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (110, 9, N'Aydın')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (111, 9, N'Bozdoğan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (112, 9, N'Buharkent(Çubukdağı)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (113, 9, N'Çine')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (114, 9, N'Didim(Yenihisar)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (115, 9, N'Germencik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (116, 9, N'İncirliova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (117, 9, N'Karacasu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (118, 9, N'Karpuzlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (119, 9, N'Koçarlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (120, 9, N'Köşk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (121, 9, N'Kuşadası')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (122, 9, N'Kuyucak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (123, 9, N'Nazilli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (124, 9, N'Söke')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (125, 9, N'Sultanhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (126, 9, N'Yenipazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (127, 10, N'Ayvalık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (128, 10, N'Balıkesir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (129, 10, N'Balya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (130, 10, N'Bandırma')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (131, 10, N'Bigadiç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (132, 10, N'Burhaniye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (133, 10, N'Dursunbey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (134, 10, N'Edremit')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (135, 10, N'Erdek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (136, 10, N'Gömeç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (137, 10, N'Gönen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (138, 10, N'Havran')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (139, 10, N'İvrindi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (140, 10, N'Kepsut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (141, 10, N'Manyas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (142, 10, N'Marmara')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (143, 10, N'Savaştepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (144, 10, N'Sındırgı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (145, 10, N'Susurluk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (146, 11, N'Bilecik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (147, 11, N'Bozüyük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (148, 11, N'Gölpazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (149, 11, N'İnhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (150, 11, N'Osmaneli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (151, 11, N'Pazaryeri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (152, 11, N'Söğüt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (153, 11, N'Yenipazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (154, 12, N'Adaklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (155, 12, N'Bingöl')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (156, 12, N'Genç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (157, 12, N'Karlıova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (158, 12, N'Kığı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (159, 12, N'Solhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (160, 12, N'Yayladere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (161, 12, N'Yedisu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (162, 13, N'Adilcevaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (163, 13, N'Ahlat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (164, 13, N'Bitlis')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (165, 13, N'Güroymak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (166, 13, N'Hizan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (167, 13, N'Mutki')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (168, 13, N'Tatvan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (169, 14, N'Bolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (170, 14, N'Dörtdivan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (171, 14, N'Gerede')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (172, 14, N'Göynük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (173, 14, N'Kıbrıscık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (174, 14, N'Mengen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (175, 14, N'Mudurnu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (176, 14, N'Seben')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (177, 14, N'Yeniçağa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (178, 15, N'Ağlasun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (179, 15, N'Altınyayla(Dirmil)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (180, 15, N'Bucak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (181, 15, N'Burdur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (182, 15, N'Çavdır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (183, 15, N'Çeltikçi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (184, 15, N'Gölhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (185, 15, N'Karamanlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (186, 15, N'Kemer')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (187, 15, N'Tefenni')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (188, 15, N'Yeşilova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (189, 16, N'Büyükorhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (190, 16, N'Gemlik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (191, 16, N'Gürsu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (192, 16, N'Harmancık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (193, 16, N'İnegöl')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (194, 16, N'İznik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (195, 16, N'Karacabey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (196, 16, N'Keles')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (197, 16, N'Kestel')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (198, 16, N'Mudanya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (199, 16, N'Mustafakemalpaşa')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (200, 16, N'Nilüfer')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (201, 16, N'Orhaneli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (202, 16, N'Orhangazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (203, 16, N'Osmangazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (204, 16, N'Yenişehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (205, 16, N'Yıldırım')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (206, 17, N'Ayvacık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (207, 17, N'Bayramiç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (208, 17, N'Biga')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (209, 17, N'Bozcaada')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (210, 17, N'Çan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (211, 17, N'Çanakkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (212, 17, N'Eceabat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (213, 17, N'Ezine')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (214, 17, N'Gelibolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (215, 17, N'Gökçeada(İmroz)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (216, 17, N'Lapseki')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (217, 17, N'Yenice')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (218, 18, N'Atkaracalar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (219, 18, N'Bayramören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (220, 18, N'Çankırı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (221, 18, N'Çerkeş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (222, 18, N'Eldivan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (223, 18, N'Ilgaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (224, 18, N'Kızılırmak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (225, 18, N'Korgun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (226, 18, N'Kurşunlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (227, 18, N'Orta')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (228, 18, N'Şabanözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (229, 18, N'Yapraklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (230, 19, N'Alaca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (231, 19, N'Bayat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (232, 19, N'Boğazkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (233, 19, N'Çorum')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (234, 19, N'Dodurga')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (235, 19, N'İskilip')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (236, 19, N'Kargı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (237, 19, N'Laçin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (238, 19, N'Mecitözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (239, 19, N'Oğuzlar(Karaören)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (240, 19, N'Ortaköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (241, 19, N'Osmancık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (242, 19, N'Sungurlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (243, 19, N'Uğurludağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (244, 20, N'Acıpayam')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (245, 20, N'Akköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (246, 20, N'Babadağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (247, 20, N'Baklan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (248, 20, N'Bekilli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (249, 20, N'Beyağaç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (250, 20, N'Bozkurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (251, 20, N'Buldan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (252, 20, N'Çal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (253, 20, N'Çameli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (254, 20, N'Çardak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (255, 20, N'Çivril')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (256, 20, N'Denizli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (257, 20, N'Güney')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (258, 20, N'Honaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (259, 20, N'Kale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (260, 20, N'Sarayköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (261, 20, N'Serinhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (262, 20, N'Tavas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (263, 21, N'Bağlar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (264, 21, N'Bismil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (265, 21, N'Çermik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (266, 21, N'Çınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (267, 21, N'Çüngüş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (268, 21, N'Dicle')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (269, 21, N'Eğil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (270, 21, N'Ergani')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (271, 21, N'Hani')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (272, 21, N'Hazro')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (273, 21, N'Kayapınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (274, 21, N'Kocaköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (275, 21, N'Kulp')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (276, 21, N'Lice')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (277, 21, N'Silvan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (278, 21, N'Sur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (279, 21, N'Yenişehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (280, 22, N'Edirne')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (281, 22, N'Enez')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (282, 22, N'Havsa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (283, 22, N'İpsala')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (284, 22, N'Keşan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (285, 22, N'Lalapaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (286, 22, N'Meriç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (287, 22, N'Süleoğlu(Süloğlu)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (288, 22, N'Uzunköprü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (289, 23, N'Ağın')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (290, 23, N'Alacakaya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (291, 23, N'Arıcak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (292, 23, N'Baskil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (293, 23, N'Elazığ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (294, 23, N'Karakoçan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (295, 23, N'Keban')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (296, 23, N'Kovancılar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (297, 23, N'Maden')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (298, 23, N'Palu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (299, 23, N'Sivrice')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (300, 24, N'Çayırlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (301, 24, N'Erzincan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (302, 24, N'İliç(Ilıç)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (303, 24, N'Kemah')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (304, 24, N'Kemaliye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (305, 24, N'Otlukbeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (306, 24, N'Refahiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (307, 24, N'Tercan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (308, 24, N'Üzümlü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (309, 25, N'Aşkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (310, 25, N'Aziziye(Ilıca)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (311, 25, N'Çat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (312, 25, N'Hınıs')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (313, 25, N'Horasan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (314, 25, N'İspir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (315, 25, N'Karaçoban')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (316, 25, N'Karayazı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (317, 25, N'Köprüköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (318, 25, N'Narman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (319, 25, N'Oltu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (320, 25, N'Olur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (321, 25, N'Palandöken')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (322, 25, N'Pasinler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (323, 25, N'Pazaryolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (324, 25, N'Şenkaya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (325, 25, N'Tekman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (326, 25, N'Tortum')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (327, 25, N'Uzundere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (328, 25, N'Yakutiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (329, 26, N'Alpu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (330, 26, N'Beylikova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (331, 26, N'Çifteler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (332, 26, N'Günyüzü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (333, 26, N'Han')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (334, 26, N'İnönü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (335, 26, N'Mahmudiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (336, 26, N'Mihalgazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (337, 26, N'Mihalıçcık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (338, 26, N'Odunpazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (339, 26, N'Sarıcakaya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (340, 26, N'Seyitgazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (341, 26, N'Sivrihisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (342, 26, N'Tepebaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (343, 27, N'Araban')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (344, 27, N'İslahiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (345, 27, N'Karkamış')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (346, 27, N'Nizip')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (347, 27, N'Nurdağı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (348, 27, N'Oğuzeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (349, 27, N'Şahinbey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (350, 27, N'Şehitkamil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (351, 27, N'Yavuzeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (352, 28, N'Alucra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (353, 28, N'Bulancak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (354, 28, N'Çamoluk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (355, 28, N'Çanakçı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (356, 28, N'Dereli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (357, 28, N'Doğankent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (358, 28, N'Espiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (359, 28, N'Eynesil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (360, 28, N'Giresun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (361, 28, N'Görele')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (362, 28, N'Güce')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (363, 28, N'Keşap')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (364, 28, N'Piraziz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (365, 28, N'Şebinkarahisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (366, 28, N'Tirebolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (367, 28, N'Yağlıdere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (368, 29, N'Gümüşhane')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (369, 29, N'Kelkit')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (370, 29, N'Köse')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (371, 29, N'Kürtün')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (372, 29, N'Şiran')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (373, 29, N'Torul')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (374, 30, N'Çukurca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (375, 30, N'Hakkari')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (376, 30, N'Şemdinli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (377, 30, N'Yüksekova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (378, 31, N'Altınözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (379, 31, N'Antakya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (380, 31, N'Belen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (381, 31, N'Dörtyol')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (382, 31, N'Erzin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (383, 31, N'Hassa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (384, 31, N'İskenderun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (385, 31, N'Kırıkhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (386, 31, N'Kumlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (387, 31, N'Reyhanlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (388, 31, N'Samandağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (389, 31, N'Yayladağı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (390, 32, N'Aksu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (391, 32, N'Atabey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (392, 32, N'Eğridir(Eğirdir)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (393, 32, N'Gelendost')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (394, 32, N'Gönen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (395, 32, N'Isparta')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (396, 32, N'Keçiborlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (397, 32, N'Senirkent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (398, 32, N'Sütçüler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (399, 32, N'Şarkikaraağaç')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (400, 32, N'Uluborlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (401, 32, N'Yalvaç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (402, 32, N'Yenişarbademli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (403, 33, N'Akdeniz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (404, 33, N'Anamur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (405, 33, N'Aydıncık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (406, 33, N'Bozyazı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (407, 33, N'Çamlıyayla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (408, 33, N'Erdemli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (409, 33, N'Gülnar (Gülpınar)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (410, 33, N'Mezitli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (411, 33, N'Mut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (412, 33, N'Silifke')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (413, 33, N'Tarsus')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (414, 33, N'Toroslar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (415, 33, N'Yenişehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (416, 34, N'Adalar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (417, 34, N'Arnavutköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (418, 34, N'Ataşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (419, 34, N'Avcılar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (420, 34, N'Bağcılar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (421, 34, N'Bahçelievler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (422, 34, N'Bakırköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (423, 34, N'Başakşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (424, 34, N'Bayrampaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (425, 34, N'Beşiktaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (426, 34, N'Beykoz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (427, 34, N'Beylikdüzü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (428, 34, N'Beyoğlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (429, 34, N'Büyükçekmece')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (430, 34, N'Çatalca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (431, 34, N'Çekmeköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (432, 34, N'Esenler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (433, 34, N'Esenyurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (434, 34, N'Eyüp')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (435, 34, N'Fatih')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (436, 34, N'Gaziosmanpaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (437, 34, N'Güngören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (438, 34, N'Kadıköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (439, 34, N'Kağıthane')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (440, 34, N'Kartal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (441, 34, N'Küçükçekmece')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (442, 34, N'Maltepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (443, 34, N'Pendik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (444, 34, N'Sancaktepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (445, 34, N'Sarıyer')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (446, 34, N'Silivri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (447, 34, N'Sultanbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (448, 34, N'Sultangazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (449, 34, N'Şile')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (450, 34, N'Şişli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (451, 34, N'Tuzla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (452, 34, N'Ümraniye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (453, 34, N'Üsküdar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (454, 34, N'Zeytinburnu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (455, 35, N'Aliağa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (456, 35, N'Balçova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (457, 35, N'Bayındır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (458, 35, N'Bayraklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (459, 35, N'Bergama')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (460, 35, N'Beydağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (461, 35, N'Bornova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (462, 35, N'Buca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (463, 35, N'Cumaovası(Menderes)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (464, 35, N'Çeşme')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (465, 35, N'Çiğli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (466, 35, N'Dikili')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (467, 35, N'Foça')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (468, 35, N'Gaziemir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (469, 35, N'Güzelbahçe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (470, 35, N'Karabağlar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (471, 35, N'Karaburun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (472, 35, N'Karşıyaka')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (473, 35, N'Kemalpaşa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (474, 35, N'Kınık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (475, 35, N'Kiraz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (476, 35, N'Konak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (477, 35, N'Menemen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (478, 35, N'Narlıdere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (479, 35, N'Ödemiş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (480, 35, N'Seferihisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (481, 35, N'Selçuk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (482, 35, N'Tire')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (483, 35, N'Torbalı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (484, 35, N'Urla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (485, 36, N'Akyaka')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (486, 36, N'Arpaçay')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (487, 36, N'Digor')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (488, 36, N'Kağızman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (489, 36, N'Kars')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (490, 36, N'Sarıkamış')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (491, 36, N'Selim')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (492, 36, N'Susuz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (493, 37, N'Abana')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (494, 37, N'Ağlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (495, 37, N'Araç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (496, 37, N'Azdavay')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (497, 37, N'Bozkurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (498, 37, N'Cide')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (499, 37, N'Çatalzeytin')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (500, 37, N'Daday')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (501, 37, N'Devrekani')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (502, 37, N'Doğanyurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (503, 37, N'Hanönü(Gökçeağaç)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (504, 37, N'İhsangazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (505, 37, N'İnebolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (506, 37, N'Kastamonu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (507, 37, N'Küre')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (508, 37, N'Pınarbaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (509, 37, N'Seydiler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (510, 37, N'Şenpazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (511, 37, N'Taşköprü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (512, 37, N'Tosya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (513, 38, N'Akkışla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (514, 38, N'Bünyan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (515, 38, N'Develi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (516, 38, N'Felahiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (517, 38, N'Hacılar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (518, 38, N'İncesu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (519, 38, N'Kocasinan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (520, 38, N'Melikgazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (521, 38, N'Özvatan(Çukur)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (522, 38, N'Pınarbaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (523, 38, N'Sarıoğlan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (524, 38, N'Sarız')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (525, 38, N'Talas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (526, 38, N'Tomarza')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (527, 38, N'Yahyalı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (528, 38, N'Yeşilhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (529, 39, N'Babaeski')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (530, 39, N'Demirköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (531, 39, N'Kırklareli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (532, 39, N'Kofçaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (533, 39, N'Lüleburgaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (534, 39, N'Pehlivanköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (535, 39, N'Pınarhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (536, 39, N'Vize')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (537, 40, N'Akçakent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (538, 40, N'Akpınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (539, 40, N'Boztepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (540, 40, N'Çiçekdağı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (541, 40, N'Kaman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (542, 40, N'Kırşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (543, 40, N'Mucur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (544, 41, N'Başiskele')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (545, 41, N'Çayırova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (546, 41, N'Darıca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (547, 41, N'Derince')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (548, 41, N'Dilovası')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (549, 41, N'Gebze')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (550, 41, N'Gölcük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (551, 41, N'İzmit')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (552, 41, N'Kandıra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (553, 41, N'Karamürsel')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (554, 41, N'Kartepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (555, 41, N'Tütünçiftlik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (556, 42, N'Ahırlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (557, 42, N'Akören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (558, 42, N'Akşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (559, 42, N'Altınekin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (560, 42, N'Beyşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (561, 42, N'Bozkır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (562, 42, N'Cihanbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (563, 42, N'Çeltik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (564, 42, N'Çumra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (565, 42, N'Derbent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (566, 42, N'Derebucak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (567, 42, N'Doğanhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (568, 42, N'Emirgazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (569, 42, N'Ereğli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (570, 42, N'Güneysınır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (571, 42, N'Hadim')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (572, 42, N'Halkapınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (573, 42, N'Hüyük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (574, 42, N'Ilgın')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (575, 42, N'Kadınhanı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (576, 42, N'Karapınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (577, 42, N'Karatay')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (578, 42, N'Kulu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (579, 42, N'Meram')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (580, 42, N'Sarayönü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (581, 42, N'Selçuklu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (582, 42, N'Seydişehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (583, 42, N'Taşkent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (584, 42, N'Tuzlukçu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (585, 42, N'Yalıhüyük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (586, 42, N'Yunak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (587, 43, N'Altıntaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (588, 43, N'Aslanapa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (589, 43, N'Çavdarhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (590, 43, N'Domaniç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (591, 43, N'Dumlupınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (592, 43, N'Emet')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (593, 43, N'Gediz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (594, 43, N'Hisarcık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (595, 43, N'Kütahya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (596, 43, N'Pazarlar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (597, 43, N'Simav')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (598, 43, N'Şaphane')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (599, 43, N'Tavşanlı')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (600, 43, N'Tunçbilek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (601, 44, N'Akçadağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (602, 44, N'Arapkir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (603, 44, N'Arguvan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (604, 44, N'Battalgazi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (605, 44, N'Darende')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (606, 44, N'Doğanşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (607, 44, N'Doğanyol')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (608, 44, N'Hekimhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (609, 44, N'Kale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (610, 44, N'Kuluncak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (611, 44, N'Malatya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (612, 44, N'Pötürge')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (613, 44, N'Yazıhan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (614, 44, N'Yeşilyurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (615, 45, N'Ahmetli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (616, 45, N'Akhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (617, 45, N'Alaşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (618, 45, N'Demirci')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (619, 45, N'Gölmarmara')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (620, 45, N'Gördes')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (621, 45, N'Kırkağaç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (622, 45, N'Köprübaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (623, 45, N'Kula')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (624, 45, N'Manisa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (625, 45, N'Salihli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (626, 45, N'Sarıgöl')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (627, 45, N'Saruhanlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (628, 45, N'Selendi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (629, 45, N'Soma')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (630, 45, N'Turgutlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (631, 46, N'Afşin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (632, 46, N'Andırın')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (633, 46, N'Çağlayancerit')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (634, 46, N'Ekinözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (635, 46, N'Elbistan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (636, 46, N'Göksun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (637, 46, N'Kahramanmaraş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (638, 46, N'Nurhak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (639, 46, N'Pazarcık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (640, 46, N'Türkoğlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (641, 47, N'Dargeçit')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (642, 47, N'Derik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (643, 47, N'Kızıltepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (644, 47, N'Mardin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (645, 47, N'Mazıdağı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (646, 47, N'Midyat(Estel)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (647, 47, N'Nusaybin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (648, 47, N'Ömerli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (649, 47, N'Savur')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (650, 47, N'Yeşilli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (651, 48, N'Bodrum')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (652, 48, N'Dalaman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (653, 48, N'Datça')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (654, 48, N'Fethiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (655, 48, N'Kavaklıdere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (656, 48, N'Köyceğiz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (657, 48, N'Marmaris')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (658, 48, N'Milas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (659, 48, N'Muğla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (660, 48, N'Ortaca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (661, 48, N'Ula')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (662, 48, N'Yatağan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (663, 49, N'Bulanık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (664, 49, N'Hasköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (665, 49, N'Korkut')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (666, 49, N'Malazgirt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (667, 49, N'Muş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (668, 49, N'Varto')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (669, 50, N'Acıgöl')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (670, 50, N'Avanos')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (671, 50, N'Derinkuyu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (672, 50, N'Gülşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (673, 50, N'Hacıbektaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (674, 50, N'Kozaklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (675, 50, N'Nevşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (676, 50, N'Ürgüp')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (677, 51, N'Altunhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (678, 51, N'Bor')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (679, 51, N'Çamardı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (680, 51, N'Çiftlik(Özyurt)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (681, 51, N'Niğde')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (682, 51, N'Ulukışla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (683, 52, N'Akkuş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (684, 52, N'Aybastı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (685, 52, N'Çamaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (686, 52, N'Çatalpınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (687, 52, N'Çaybaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (688, 52, N'Fatsa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (689, 52, N'Gölköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (690, 52, N'Gülyalı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (691, 52, N'Gürgentepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (692, 52, N'İkizce')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (693, 52, N'Kabataş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (694, 52, N'Karadüz(Kabadüz)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (695, 52, N'Korgan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (696, 52, N'Kumru')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (697, 52, N'Mesudiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (698, 52, N'Ordu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (699, 52, N'Perşembe')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (700, 52, N'Ulubey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (701, 52, N'Ünye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (702, 53, N'Ardeşen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (703, 53, N'Çamlıhemşin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (704, 53, N'Çayeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (705, 53, N'Derepazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (706, 53, N'Fındıklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (707, 53, N'Güneysu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (708, 53, N'Hemşin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (709, 53, N'İkizdere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (710, 53, N'İyidere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (711, 53, N'Kalkandere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (712, 53, N'Pazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (713, 53, N'Rize')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (714, 54, N'Adapazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (715, 54, N'Akyazı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (716, 54, N'Arifiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (717, 54, N'Erenler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (718, 54, N'Ferizli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (719, 54, N'Geyve')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (720, 54, N'Hendek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (721, 54, N'Karapürçek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (722, 54, N'Karasu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (723, 54, N'Kaynarca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (724, 54, N'Kocaali')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (725, 54, N'Pamukova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (726, 54, N'Sapanca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (727, 54, N'Serdivan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (728, 54, N'Söğütlü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (729, 54, N'Taraklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (730, 55, N'19 Mayıs(Ballıca)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (731, 55, N'Alaçam')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (732, 55, N'Asarcık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (733, 55, N'Atakum')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (734, 55, N'Ayvacık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (735, 55, N'Bafra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (736, 55, N'Canik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (737, 55, N'Çarşamba')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (738, 55, N'Havza')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (739, 55, N'İlkadım')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (740, 55, N'Kavak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (741, 55, N'Ladik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (742, 55, N'Salıpazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (743, 55, N'Tekkeköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (744, 55, N'Terme')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (745, 55, N'Vezirköprü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (746, 55, N'Yakakent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (747, 56, N'Aydınlar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (748, 56, N'Baykan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (749, 56, N'Eruh')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (750, 56, N'Kurtalan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (751, 56, N'Pervari')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (752, 56, N'Siirt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (753, 56, N'Şirvan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (754, 57, N'Ayancık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (755, 57, N'Boyabat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (756, 57, N'Dikmen')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (757, 57, N'Durağan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (758, 57, N'Erfelek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (759, 57, N'Gerze')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (760, 57, N'Saraydüzü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (761, 57, N'Sinop')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (762, 57, N'Türkeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (763, 58, N'Akıncılar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (764, 58, N'Altınyayla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (765, 58, N'Divriği')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (766, 58, N'Doğanşar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (767, 58, N'Gemerek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (768, 58, N'Gölova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (769, 58, N'Gürün')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (770, 58, N'Hafik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (771, 58, N'İmranlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (772, 58, N'Kangal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (773, 58, N'Koyulhisar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (774, 58, N'Sivas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (775, 58, N'Suşehri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (776, 58, N'Şarkışla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (777, 58, N'Ulaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (778, 58, N'Yıldızeli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (779, 58, N'Zara')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (780, 59, N'Çerkezköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (781, 59, N'Çorlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (782, 59, N'Hayrabolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (783, 59, N'Malkara')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (784, 59, N'Marmaraereğlisi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (785, 59, N'Muratlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (786, 59, N'Saray')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (787, 59, N'Şarköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (788, 59, N'Tekirdağ')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (789, 60, N'Almus')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (790, 60, N'Artova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (791, 60, N'Başçiftlik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (792, 60, N'Erbaa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (793, 60, N'Niksar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (794, 60, N'Pazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (795, 60, N'Reşadiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (796, 60, N'Sulusaray')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (797, 60, N'Tokat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (798, 60, N'Turhal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (799, 60, N'Yeşilyurt')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (800, 60, N'Zile')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (801, 61, N'Akçaabat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (802, 61, N'Araklı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (803, 61, N'Arsin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (804, 61, N'Beşikdüzü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (805, 61, N'Çarşıbaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (806, 61, N'Çaykara')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (807, 61, N'Dernekpazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (808, 61, N'Düzköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (809, 61, N'Hayrat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (810, 61, N'Köprübaşı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (811, 61, N'Maçka')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (812, 61, N'Of')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (813, 61, N'Sürmene')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (814, 61, N'Şalpazarı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (815, 61, N'Tonya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (816, 61, N'Trabzon')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (817, 61, N'Vakfıkebir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (818, 61, N'Yomra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (819, 62, N'Çemişgezek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (820, 62, N'Hozat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (821, 62, N'Mazgirt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (822, 62, N'Nazımiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (823, 62, N'Ovacık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (824, 62, N'Pertek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (825, 62, N'Pülümür')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (826, 62, N'Tunceli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (827, 63, N'Akçakale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (828, 63, N'Birecik')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (829, 63, N'Bozova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (830, 63, N'Ceylanpınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (831, 63, N'Halfeti')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (832, 63, N'Harran')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (833, 63, N'Hilvan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (834, 63, N'Siverek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (835, 63, N'Suruç')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (836, 63, N'Şanlıurfa')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (837, 63, N'Viranşehir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (838, 64, N'Banaz')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (839, 64, N'Eşme')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (840, 64, N'Karahallı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (841, 64, N'Sivaslı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (842, 64, N'Ulubey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (843, 64, N'Uşak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (844, 65, N'Bahçesaray')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (845, 65, N'Başkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (846, 65, N'Çaldıran')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (847, 65, N'Çatak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (848, 65, N'Edremit(Gümüşdere)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (849, 65, N'Erciş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (850, 65, N'Gevaş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (851, 65, N'Gürpınar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (852, 65, N'Muradiye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (853, 65, N'Özalp')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (854, 65, N'Saray')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (855, 65, N'Van')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (856, 66, N'Akdağmadeni')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (857, 66, N'Aydıncık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (858, 66, N'Boğazlıyan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (859, 66, N'Çandır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (860, 66, N'Çayıralan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (861, 66, N'Çekerek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (862, 66, N'Kadışehri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (863, 66, N'Saraykent')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (864, 66, N'Sarıkaya')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (865, 66, N'Sorgun')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (866, 66, N'Şefaatli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (867, 66, N'Yenifakılı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (868, 66, N'Yerköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (869, 66, N'Yozgat')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (870, 67, N'Alaplı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (871, 67, N'Çaycuma')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (872, 67, N'Devrek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (873, 67, N'Gökçebey')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (874, 67, N'Karadenizereğli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (875, 67, N'Zonguldak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (876, 68, N'Ağaçören')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (877, 68, N'Aksaray')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (878, 68, N'Eskil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (879, 68, N'Gülağaç(Ağaçlı)')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (880, 68, N'Güzelyurt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (881, 68, N'Ortaköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (882, 68, N'Sarıyahşi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (883, 69, N'Aydıntepe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (884, 69, N'Bayburt')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (885, 69, N'Demirözü')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (886, 70, N'Ayrancı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (887, 70, N'Başyayla')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (888, 70, N'Ermenek')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (889, 70, N'Karaman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (890, 70, N'Kazımkarabekir')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (891, 70, N'Sarıveliler')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (892, 71, N'Bahşili')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (893, 71, N'Balışeyh')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (894, 71, N'Çelebi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (895, 71, N'Delice')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (896, 71, N'Karakeçili')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (897, 71, N'Keskin')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (898, 71, N'Kırıkkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (899, 71, N'Sulakyurt')
GO
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (900, 71, N'Yahşihan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (901, 72, N'Batman')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (902, 72, N'Beşiri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (903, 72, N'Gercüş')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (904, 72, N'Hasankeyf')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (905, 72, N'Kozluk')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (906, 72, N'Sason')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (907, 73, N'Beytüşşebap')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (908, 73, N'Cizre')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (909, 73, N'Güçlükonak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (910, 73, N'İdil')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (911, 73, N'Silopi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (912, 73, N'Şırnak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (913, 73, N'Uludere')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (914, 74, N'Amasra')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (915, 74, N'Bartın')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (916, 74, N'Kurucaşile')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (917, 74, N'Ulus')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (918, 75, N'Ardahan')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (919, 75, N'Çıldır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (920, 75, N'Damal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (921, 75, N'Göle')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (922, 75, N'Hanak')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (923, 75, N'Posof')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (924, 76, N'Aralık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (925, 76, N'Iğdır')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (926, 76, N'Karakoyunlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (927, 76, N'Tuzluca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (928, 77, N'Altınova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (929, 77, N'Armutlu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (930, 77, N'Çınarcık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (931, 77, N'Çiftlikköy')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (932, 77, N'Termal')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (933, 77, N'Yalova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (934, 78, N'Eflani')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (935, 78, N'Eskipazar')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (936, 78, N'Karabük')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (937, 78, N'Ovacık')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (938, 78, N'Safranbolu')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (939, 78, N'Yenice')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (940, 79, N'Elbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (941, 79, N'Kilis')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (942, 79, N'Musabeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (943, 79, N'Polateli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (944, 80, N'Bahçe')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (945, 80, N'Düziçi')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (946, 80, N'Hasanbeyli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (947, 80, N'Kadirli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (948, 80, N'Osmaniye')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (949, 80, N'Sumbas')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (950, 80, N'Toprakkale')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (951, 81, N'Akçakoca')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (952, 81, N'Cumayeri')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (953, 81, N'Çilimli')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (954, 81, N'Düzce')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (955, 81, N'Gölyaka')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (956, 81, N'Gümüşova')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (957, 81, N'Kaynaşlı')
INSERT [dbo].[ilce] ([id], [il_id], [ad]) VALUES (958, 81, N'Yığılca')
SET IDENTITY_INSERT [dbo].[ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[kasa] ON 

INSERT [dbo].[kasa] ([id], [kasa_tutari]) VALUES (1, CAST(153000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[kasa] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([id], [kategori_adı]) VALUES (1, N'manav')
INSERT [dbo].[kategori] ([id], [kategori_adı]) VALUES (9, N'süt ve süt ürünleri')
INSERT [dbo].[kategori] ([id], [kategori_adı]) VALUES (10, N'kişisel bakim')
INSERT [dbo].[kategori] ([id], [kategori_adı]) VALUES (4, N'soğuk içecekler')
SET IDENTITY_INSERT [dbo].[kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[kullanici] ON 

INSERT [dbo].[kullanici] ([id], [users], [pass]) VALUES (1, N'emre', N'123')
INSERT [dbo].[kullanici] ([id], [users], [pass]) VALUES (2, N'admin', N'123')
INSERT [dbo].[kullanici] ([id], [users], [pass]) VALUES (5, N'mama', N'123')
SET IDENTITY_INSERT [dbo].[kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 

INSERT [dbo].[personel] ([id], [personel_adı], [personel_soyadı], [personel_tc], [personel_tel], [personel_mail], [personel_il], [personel_ilçe], [personel_adres], [personel_cinsiyet], [personel_doğumtarihi], [personel_ünvan], [personel_ücret], [personel_medenidurum]) VALUES (1, N'sagh', N'hdsh', N'32165165165', N'(651) 651-6516', N'3as21g3131', N'Aydın', N'Germencik', N'askjfşlkasjfşlk', N'Kadın', CAST(N'2025-05-29' AS Date), N'asgasdh', 25122, N'Bekar')
INSERT [dbo].[personel] ([id], [personel_adı], [personel_soyadı], [personel_tc], [personel_tel], [personel_mail], [personel_il], [personel_ilçe], [personel_adres], [personel_cinsiyet], [personel_doğumtarihi], [personel_ünvan], [personel_ücret], [personel_medenidurum]) VALUES (2, N'emre', N'baş', N'65516565161', N'(215) 125-1251', N'asgasdg@hotmail.com', N'Balıkesir', N'Bigadiç', N'maasşlgasdgşaskgşlasg', N'Erkek', CAST(N'1996-11-07' AS Date), N'temizlik', 23000, N'Bekar')
INSERT [dbo].[personel] ([id], [personel_adı], [personel_soyadı], [personel_tc], [personel_tel], [personel_mail], [personel_il], [personel_ilçe], [personel_adres], [personel_cinsiyet], [personel_doğumtarihi], [personel_ünvan], [personel_ücret], [personel_medenidurum]) VALUES (3, N'şinasi', N'beyaz', N'65165165165', N'(512) 151-651', N'sın99@gmail.com', N'Gaziantep', N'İslahiye', N'asşldklaskdşiaskdişlaksşdkasşd', N'Erkek', CAST(N'2001-05-21' AS Date), N'temizlikçi', 28000, N'Bekar')
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[satis_kayitlari] ON 

INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (1, NULL, N'Kola
patlıcan', N'6516
651', N'1
5', N'25,00
35,00', CAST(N'2025-05-27T15:46:05.203' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (2, NULL, N'patlıcan
Kola
peynir', N'651
6516
5161', N'1
5
4', N'25,00
45,00
80,00', CAST(N'2025-05-27T15:47:36.367' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (3, NULL, N'TOPLAM', N'', N'1', N'5', CAST(N'2025-05-27T16:08:51.390' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (4, NULL, N'TOPLAM', N'', N'1', N'4', CAST(N'2025-05-27T16:10:34.127' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (5, NULL, N'TOPLAM', N'', N'1', N'4', CAST(N'2025-05-27T16:13:13.783' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (6, NULL, N'TOPLAM', N'', N'4', N'17', CAST(N'2025-05-27T16:46:07.880' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (9, NULL, N'TOPLAM', N'', N'3', N'30', CAST(N'2025-05-27T16:47:39.457' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (13, NULL, N'TOPLAM', N'', N'7', N'38', CAST(N'2025-05-27T17:11:43.903' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (14, 13, N'Kola', N'6516', N'1', N'3', CAST(N'2025-05-27T17:11:43.910' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (15, 13, N'patlıcan', N'651', N'5', N'5', CAST(N'2025-05-27T17:11:43.913' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (16, 13, N'peynir', N'5161', N'1', N'10', CAST(N'2025-05-27T17:11:43.913' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (17, NULL, N'TOPLAM', N'', N'14', N'102', CAST(N'2025-05-27T17:18:13.803' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (22, NULL, N'TOPLAM', N'', N'2', N'6', CAST(N'2025-05-27T17:19:34.267' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (23, 22, N'Kola', N'6516', N'1', N'1', CAST(N'2025-05-27T17:19:34.273' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (24, 22, N'patlıcan', N'651', N'1', N'5', CAST(N'2025-05-27T17:19:34.273' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (25, NULL, N'TOPLAM', N'', N'3', N'57', CAST(N'2025-05-27T17:20:19.067' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (29, NULL, N'TOPLAM', N'', N'20', N'1000', CAST(N'2025-05-31T00:36:38.347' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (30, 29, N'peynir', N'5161', N'10', N'50', CAST(N'2025-05-31T00:36:38.367' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (31, 29, N'patlıcan', N'651', N'10', N'50', CAST(N'2025-05-31T00:36:38.370' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (32, NULL, N'TOPLAM', N'', N'2', N'300', CAST(N'2025-06-01T01:56:15.043' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (33, 32, N'peynir', N'5161', N'2', N'150', CAST(N'2025-06-01T01:56:15.060' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (34, NULL, N'TOPLAM', N'', N'1', N'250', CAST(N'2025-06-01T03:32:19.500' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (35, 34, N'Kola', N'6516', N'1', N'250', CAST(N'2025-06-01T03:32:19.507' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (36, NULL, N'TOPLAM', N'', N'3', N'370', CAST(N'2025-06-01T03:47:55.643' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (37, 36, N'Kola', N'6516', N'1', N'150', CAST(N'2025-06-01T03:47:55.653' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (38, 36, N'domates', N'56161', N'1', N'200', CAST(N'2025-06-01T03:47:55.653' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (39, 36, N'Kola', N'6516', N'1', N'20', CAST(N'2025-06-01T03:47:55.653' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (40, NULL, N'TOPLAM', N'', N'51', N'12500', CAST(N'2025-06-10T15:11:57.113' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (41, 40, N'patlıcan', N'651', N'50', N'150', CAST(N'2025-06-10T15:11:57.123' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (42, 40, N'pekmez', N'874', N'1', N'5000', CAST(N'2025-06-10T15:11:57.127' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (43, NULL, N'TOPLAM', N'', N'1', N'200', CAST(N'2025-06-10T15:17:16.873' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (44, 43, N'dalin', N'9165', N'1', N'200', CAST(N'2025-06-10T15:17:16.877' AS DateTime))
INSERT [dbo].[satis_kayitlari] ([id], [fatura_no], [urun_adi], [barkod], [miktar], [fiyat], [satis_tarihi]) VALUES (45, NULL, N'TOPLAM', N'', N'1', N'100', CAST(N'2025-06-10T15:17:51.107' AS DateTime))
SET IDENTITY_INSERT [dbo].[satis_kayitlari] OFF
GO
SET IDENTITY_INSERT [dbo].[tedarikciler] ON 

INSERT [dbo].[tedarikciler] ([id], [tedarikci_adi], [tedarikci_adresi], [tedarikci_telefon], [tedarikci_email], [tedarikci_yetkilisi]) VALUES (6, N'bilginler', N'asjkdflaksjflksaj', N'(651) 465-1656', N'laksnflas@hotmail.com', N'kenan')
INSERT [dbo].[tedarikciler] ([id], [tedarikci_adi], [tedarikci_adresi], [tedarikci_telefon], [tedarikci_email], [tedarikci_yetkilisi]) VALUES (2, N'kiptaş', N'aşlsdmah asmakr', N'(561) 612-3132', N'aasfasf_asf@hotmail.com', N'ayşe baner')
INSERT [dbo].[tedarikciler] ([id], [tedarikci_adi], [tedarikci_adresi], [tedarikci_telefon], [tedarikci_email], [tedarikci_yetkilisi]) VALUES (7, N'sütaş', N'fatih balat no :45', N'(551) 614-8121', N'sutas11@hotmail.com', N'kerem taştan')
SET IDENTITY_INSERT [dbo].[tedarikciler] OFF
GO
SET IDENTITY_INSERT [dbo].[urunler] ON 

INSERT [dbo].[urunler] ([id], [ürün_adı], [barkod], [stok_miktarı], [alış_fiyatı], [satış_fiyatı], [kategori_adı], [tedarikçi_firma]) VALUES (1, N'domates', N'56161', 15, 150, 200, 1, 2)
INSERT [dbo].[urunler] ([id], [ürün_adı], [barkod], [stok_miktarı], [alış_fiyatı], [satış_fiyatı], [kategori_adı], [tedarikçi_firma]) VALUES (6, N'Kola', N'6516', 2433, 120, 250, 1, 6)
INSERT [dbo].[urunler] ([id], [ürün_adı], [barkod], [stok_miktarı], [alış_fiyatı], [satış_fiyatı], [kategori_adı], [tedarikçi_firma]) VALUES (4, N'patlıcan', N'651', 125, 51, 150, 1, 6)
INSERT [dbo].[urunler] ([id], [ürün_adı], [barkod], [stok_miktarı], [alış_fiyatı], [satış_fiyatı], [kategori_adı], [tedarikçi_firma]) VALUES (5, N'peynir', N'5161', 109, 50, 150, 9, 7)
INSERT [dbo].[urunler] ([id], [ürün_adı], [barkod], [stok_miktarı], [alış_fiyatı], [satış_fiyatı], [kategori_adı], [tedarikçi_firma]) VALUES (7, N'pekmez', N'874', 1, 5000, 5000, 4, 2)
SET IDENTITY_INSERT [dbo].[urunler] OFF
GO
USE [master]
GO
ALTER DATABASE [emre2] SET  READ_WRITE 
GO
