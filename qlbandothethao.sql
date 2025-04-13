USE [master]
GO
/****** Object:  Database [QuanLyBanDoTheThao3]    Script Date: 4/13/2025 12:15:17 PM ******/
CREATE DATABASE [QuanLyBanDoTheThao3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanDoTheThao3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyBanDoTheThao3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanDoTheThao3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyBanDoTheThao3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanDoTheThao3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyBanDoTheThao3]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NULL,
	[MaNV] [varchar](10) NULL,
	[NgayDat] [date] NOT NULL,
	[TongTien] [money] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[NgayDangKy] [date] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](256) NOT NULL,
	[VaiTro] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [varchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](10) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[NgayVaoLam] [date] NULL,
	[Luong] [money] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](256) NOT NULL,
	[VaiTro] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[MaLoaiSP] [varchar](10) NULL,
	[MaNCC] [varchar](10) NULL,
	[GiaBan] [money] NOT NULL,
	[GiaNhap] [money] NOT NULL,
	[XuatXu] [nvarchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
	[AnhSP] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TonKho]    Script Date: 4/13/2025 12:15:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonKho](
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NgayCapNhat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ('KhachHang') FOR [VaiTro]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ('NhanVien') FOR [VaiTro]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanDoTheThao3] SET  READ_WRITE 
GO
