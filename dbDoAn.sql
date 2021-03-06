USE [DT_QL_SV5TOT_5]
GO
/****** Object:  Table [dbo].[CAP_TIEU_CHUAN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAP_TIEU_CHUAN](
	[MaCapTieuChuan] [int] NOT NULL,
	[TenCapTieuChuan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCapTieuChuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUONG_TRINH]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG_TRINH](
	[MaChuongTrinh] [int] IDENTITY(1,1) NOT NULL,
	[TenChuongTrinh] [nvarchar](500) NULL,
	[MaTieuChuan] [int] NULL,
	[ThoiGianDienRa] [date] NULL,
	[DonViToChuc] [varchar](15) NULL,
	[MoTa] [nvarchar](500) NULL,
	[LinkBaiDang] [varchar](100) NULL,
	[HinhAnh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuongTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURRENT_QUYDINH_DIEM]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRENT_QUYDINH_DIEM](
	[MaQuyDinhDiem] [int] NOT NULL,
	[MaLoaiDiem] [int] NULL,
	[DiemToiThieu] [int] NULL,
	[MaDonVi] [varchar](15) NULL,
	[MaTieuChuan] [int] NULL,
	[Mathoigian] [int] NULL,
 CONSTRAINT [PK_CURRENT_QUYDINH_DIEM] PRIMARY KEY CLUSTERED 
(
	[MaQuyDinhDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURRENT_TIME]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRENT_TIME](
	[IDthoigian] [int] NOT NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
 CONSTRAINT [PK_CURRENT_TIME] PRIMARY KEY CLUSTERED 
(
	[IDthoigian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEM]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEM](
	[Mssv] [varchar](11) NOT NULL,
	[MaLoaiDiem] [int] NOT NULL,
	[Diem] [int] NULL,
	[MaHocKy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[MaLoaiDiem] ASC,
	[MaHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_VI]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_VI](
	[MaDonVi] [varchar](15) NOT NULL,
	[TenDonVi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCKY_XETDIEM]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCKY_XETDIEM](
	[MaHocKy] [int] IDENTITY(1,1) NOT NULL,
	[HocKy] [nvarchar](20) NULL,
	[Nam] [int] NULL,
	[MaThoiGianXetDiem] [int] NULL,
 CONSTRAINT [PK__HOCKY_XE__1EB551100F40E258] PRIMARY KEY CLUSTERED 
(
	[MaHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQ_THEO_TIEUCHI]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQ_THEO_TIEUCHI](
	[Mssv] [varchar](11) NOT NULL,
	[MaTieuChi] [varchar](15) NOT NULL,
	[DanhGia] [int] NULL,
	[TienDoHDBatBuoc] [smallint] NULL,
	[TienDoHDKhac] [bit] NULL,
	[TienDoTong] [smallint] NULL,
	[MaThoiGian] [int] NOT NULL,
 CONSTRAINT [PK_KQ_THEO_TIEUCHI] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[MaTieuChi] ASC,
	[MaThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_DIEM]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_DIEM](
	[MaLoaiDiem] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDiem] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_TIEU_CHUAN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_TIEU_CHUAN](
	[MaLoaiTieuChuan] [bit] NOT NULL,
	[TenLoaiTieuChuan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTieuChuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[IDnv] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[IDuser] [int] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[IDnv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYDINH_DIEM]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH_DIEM](
	[MaQuyDinhDiem] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiDiem] [int] NULL,
	[DiemToiThieu] [int] NULL,
	[MaDonVi] [varchar](15) NULL,
	[MaTieuChuan] [int] NULL,
	[Mathoigian] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyDinhDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[IDrole] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](30) NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[IDrole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINH_VIEN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINH_VIEN](
	[Mssv] [varchar](11) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NoiSinh] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[Lop] [varchar](100) NULL,
	[DonVi] [varchar](15) NULL,
	[Khoa] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[IDuser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAMGIA_CHUONGTRINH]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMGIA_CHUONGTRINH](
	[Mssv] [varchar](11) NOT NULL,
	[MaChuongTrinh] [int] NOT NULL,
	[Giai] [nvarchar](100) NULL,
	[MaThoiGian] [int] NULL,
 CONSTRAINT [PK__THAMGIA___B68A2ADF1CE3AFDD] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[MaChuongTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THOIDIEM_SV_THAMGIA]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THOIDIEM_SV_THAMGIA](
	[Mssv] [varchar](11) NOT NULL,
	[MaThoiGian] [int] NOT NULL,
 CONSTRAINT [PK__THOIDIEM__C79D61B9FFB79D72] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[MaThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THOIGIAN_XET]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THOIGIAN_XET](
	[MaThoiGian] [int] IDENTITY(1,1) NOT NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
 CONSTRAINT [PK__THOIGIAN__425763EF8FB35B9B] PRIMARY KEY CLUSTERED 
(
	[MaThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCHIEN_TIEUCHUAN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCHIEN_TIEUCHUAN](
	[Mssv] [varchar](11) NOT NULL,
	[MaTieuChuan] [int] NOT NULL,
	[MaThoiGian] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[MaTieuChuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIEU_CHI]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIEU_CHI](
	[MaTieuChi] [varchar](15) NOT NULL,
	[TenTieuChi] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIEU_CHUAN]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIEU_CHUAN](
	[MaTieuChuan] [int] IDENTITY(1,1) NOT NULL,
	[TenTieuChuan] [nvarchar](500) NULL,
	[MaTieuChi] [varchar](15) NULL,
	[MaLoaiTieuChuan] [bit] NULL,
	[Cap] [int] NULL,
	[QuyDinhGiai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTieuChuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 25/01/2021 11:12:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[IDuser] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IDrole] [int] NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[IDuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CAP_TIEU_CHUAN] ([MaCapTieuChuan], [TenCapTieuChuan]) VALUES (0, N'Chưa đạt')
INSERT [dbo].[CAP_TIEU_CHUAN] ([MaCapTieuChuan], [TenCapTieuChuan]) VALUES (1, N'Đạt cấp Khoa')
INSERT [dbo].[CAP_TIEU_CHUAN] ([MaCapTieuChuan], [TenCapTieuChuan]) VALUES (2, N'Đạt cấp Trường')
GO
SET IDENTITY_INSERT [dbo].[CHUONG_TRINH] ON 

INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (1, N'Chặng 1 CDTN Sinh viên Kinh tế 2019 - Mùa hè xanh', 25, CAST(N'2019-06-29' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (2, N'Chương trình "Hiến máu tình nguyện" - CDTN Sinh viên Kinh tế 2019', 26, CAST(N'2019-07-04' AS Date), N'HSVT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (3, N'Hội thao truyền thống khoa Công nghệ thông tin kinh doanh năm 2019 môn Bóng đá', 22, CAST(N'2019-10-06' AS Date), N'BIT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (4, N'Tuần lễ "Hiến máu tình nguyện lần thứ 44" - HSV Trường', 26, CAST(N'2019-10-07' AS Date), N'HSVT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (5, N'Chương trình Tư vấn nhà trọ Tiếp sức đến trường năm 2019 - HSV Trường', 26, CAST(N'2019-08-15' AS Date), N'HSVT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (6, N'Tham gia ngày hội trồng cây "Phủ xanh UEH 2019" - Đoàn trường', 26, CAST(N'2019-10-13' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (7, N'Tham gia chương trình "Chạy vì trái tim 2019"', 26, CAST(N'2019-11-24' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (8, N'Tham gia ngày hội trồng cây "Phủ xanh UEH", phát động Tháng Thanh niên 2020 - Đoàn trường', 26, CAST(N'2020-03-01' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (9, N'Chiến dịch Xuân Tình nguyện 2020 - Hội Sinh viên trường', 25, CAST(N'2020-01-12' AS Date), N'HSVT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (10, N'Chương trình "UEH Run Together 2020" - HSV trường', 21, CAST(N'2020-03-08' AS Date), N'HSVT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (11, N'Cuộc thi English Magazing Race 2020 - Thành phố tôi yêu - Tuần 1 - HSV Tp. HCM', 31, CAST(N'2020-04-26' AS Date), N'TD', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (12, N'Cuộc thi English Magazing Race 2020 - Thành phố tôi yêu - Tuần 2 - HSV Tp. HCM', 31, CAST(N'2020-05-03' AS Date), N'TD', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (13, N'Cuộc thi English Magazing Race 2020 - Thành phố tôi yêu - Tuần 3 - HSV Tp. HCM', 31, CAST(N'2020-05-10' AS Date), N'TD', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (14, N'Cuộc thi English Magazing Race 2020 - Thành phố tôi yêu - Tuần 4 - HSV Tp. HCM', 31, CAST(N'2020-05-17' AS Date), N'TD', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (15, N'Ngày hội "English Camp 2020" - HSV TP. HCM', 37, CAST(N'2020-05-24' AS Date), N'TD', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (16, N'Chặng 1 CDTN Sinh viên Kinh tế 2020 - Mùa hè xanh', 25, CAST(N'2020-07-18' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (17, N'Chặng 2 CDTN Sinh viên Kinh tế 2020 - Vui hội trăng rằm', 25, CAST(N'2020-09-26' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (18, N'Chiến dịch tìm hiểu "Văn hóa UEH" năm 2020 - Hội Sinh viên trường', 5, CAST(N'2020-10-01' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (19, N'Công nhận Đề tài Nghiên cứu khoa học “Đề tài môn học xuất sắc - UEH500” năm 2020', 14, CAST(N'2020-10-03' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (20, N'Bằng khen Hội Sinh viên Việt Nam TP. Hồ Chí Minh vì có thành tích trong chiến dịch "Mùa hè xanh 2020"', 27, CAST(N'2020-10-10' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (21, N'Giấy khen Hiệu trưởng vì có thành tích trong chiến dịch tình nguyện Sinh viên Kinh tế 2020', 27, CAST(N'2020-10-03' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (22, N'Cuộc thi học thuật GLogistics 2020 - CLB Kinh doanh quốc tế', 37, CAST(N'2020-09-27' AS Date), N'DT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (23, N'Hội thi truyền thống các môn khoa học Mác-Lênin, tư tưởng Hồ Chí Minh lần thứ 20', 7, CAST(N'2020-04-10' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (24, N'Giấy khen Hội Sinh viên trường - Hoàn thành xuất sắc nhiệm vụ công tác Hội và phong trào Sinh viên năm 2019 - 2020', 36, CAST(N'2020-12-06' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (25, N'Hội thao truyền thống sinh viên UEH năm 2020 - môn bóng đá', 22, CAST(N'2020-02-06' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (26, N'Hội thao truyền thống sinh viên UEH năm 2020 - môn kéo co nữ', 22, CAST(N'2020-12-06' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (27, N'Hội thao truyền thống sinh viên UEH năm 2020 - môn bóng chuyền', 22, CAST(N'2020-12-06' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (28, N'Hội thao truyền thống sinh viên UEH năm 2020 - môn cầu lông', 22, CAST(N'2020-12-06' AS Date), N'CTCT', NULL, NULL, NULL)
INSERT [dbo].[CHUONG_TRINH] ([MaChuongTrinh], [TenChuongTrinh], [MaTieuChuan], [ThoiGianDienRa], [DonViToChuc], [MoTa], [LinkBaiDang], [HinhAnh]) VALUES (29, N'test case', 18, CAST(N'2021-01-07' AS Date), N'CTCT', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CHUONG_TRINH] OFF
GO
INSERT [dbo].[CURRENT_TIME] ([IDthoigian], [TuNgay], [DenNgay]) VALUES (2, CAST(N'2019-11-02' AS Date), CAST(N'2020-11-01' AS Date))
GO
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 1, 86, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 1, 93, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 2, 74, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 2, 85, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 4, 88, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31171025965', 4, 82, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 1, 86, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 1, 93, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 2, 74, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 2, 85, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 4, 88, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022123', 4, 82, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 1, 86, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 1, 93, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 2, 74, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 2, 85, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 4, 88, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022432', 4, 82, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 1, 86, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 1, 93, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 2, 74, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 2, 85, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 4, 88, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181022453', 4, 82, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 1, 86, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 1, 93, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 2, 74, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 2, 85, 3)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 4, 88, 2)
INSERT [dbo].[DIEM] ([Mssv], [MaLoaiDiem], [Diem], [MaHocKy]) VALUES (N'31181032564', 4, 82, 3)
GO
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'BELL', N'CLB Anh Văn')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'BIT', N'Khoa Công nghệ thông tin kinh doanh')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'CTCT', N'Phòng Công tác chính trị')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'DT', N'Đoàn TNCS Trường')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'HQ', N'Hải Quan')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'HSVT', N'HSV Trường')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'KQM', N'Khoa Kinh doanh quốc tế - Marketing')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'TD', N'Thành Đoàn')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'TEST', N'Quân')
GO
SET IDENTITY_INSERT [dbo].[HOCKY_XETDIEM] ON 

INSERT [dbo].[HOCKY_XETDIEM] ([MaHocKy], [HocKy], [Nam], [MaThoiGianXetDiem]) VALUES (1, N'Cuối', 2019, 2)
INSERT [dbo].[HOCKY_XETDIEM] ([MaHocKy], [HocKy], [Nam], [MaThoiGianXetDiem]) VALUES (2, N'Đầu', 2020, 2)
INSERT [dbo].[HOCKY_XETDIEM] ([MaHocKy], [HocKy], [Nam], [MaThoiGianXetDiem]) VALUES (3, N'Cuối', 2020, 3)
INSERT [dbo].[HOCKY_XETDIEM] ([MaHocKy], [HocKy], [Nam], [MaThoiGianXetDiem]) VALUES (4, N'Đầu', 2021, 3)
SET IDENTITY_INSERT [dbo].[HOCKY_XETDIEM] OFF
GO
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'DDT', 0, 3, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'HNHD', 2, 1, 0, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'HNKN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'HNNN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'HTT', 2, 2, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'TLT', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31171025965', N'TNT', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'DDT', 2, 5, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'HNHD', 2, 1, 0, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'HNKN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'HNNN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'HTT', 2, 2, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'TLT', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181022123', N'TNT', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'DDT', 0, 3, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'HNHD', 0, 0, 0, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'HNKN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'HNNN', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'HTT', 2, 2, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'TLT', 2, 0, 1, NULL, 2)
INSERT [dbo].[KQ_THEO_TIEUCHI] ([Mssv], [MaTieuChi], [DanhGia], [TienDoHDBatBuoc], [TienDoHDKhac], [TienDoTong], [MaThoiGian]) VALUES (N'31181032564', N'TNT', 2, 0, 1, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[LOAI_DIEM] ON 

INSERT [dbo].[LOAI_DIEM] ([MaLoaiDiem], [TenLoaiDiem]) VALUES (1, N'Điểm rèn luyện')
INSERT [dbo].[LOAI_DIEM] ([MaLoaiDiem], [TenLoaiDiem]) VALUES (2, N'Điểm học tập')
INSERT [dbo].[LOAI_DIEM] ([MaLoaiDiem], [TenLoaiDiem]) VALUES (3, N'Điểm Kỹ năng mềm')
INSERT [dbo].[LOAI_DIEM] ([MaLoaiDiem], [TenLoaiDiem]) VALUES (4, N'Điểm xếp loại đoàn viên')
SET IDENTITY_INSERT [dbo].[LOAI_DIEM] OFF
GO
INSERT [dbo].[LOAI_TIEU_CHUAN] ([MaLoaiTieuChuan], [TenLoaiTieuChuan]) VALUES (0, N'Hoạt động khác')
INSERT [dbo].[LOAI_TIEU_CHUAN] ([MaLoaiTieuChuan], [TenLoaiTieuChuan]) VALUES (1, N'Hoạt động bắt buộc')
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (1, N'hsvtruong@gmail.com', N'Trường', 7)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (2, N'bit@gmail.com', N'Khoa BIT', 8)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (3, N'quantri@gmail.com', N'Khoa Quản Trị', 9)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (4, N'taichinh@gmail.com', N'Khoa Tài Chính', 10)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (5, N'luatkinhte@gmail.com', N'Khoa Luật Kinh tế', 11)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (6, N'nnkt@gmail.com', N'Khoa Ngoại Ngữ Kinh tế', 12)
INSERT [dbo].[NHANVIEN] ([IDnv], [Email], [Name], [IDuser]) VALUES (7, N'ttk@gmail.com', N'Khoa Toán - Thống kê', 13)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[QUYDINH_DIEM] ON 

INSERT [dbo].[QUYDINH_DIEM] ([MaQuyDinhDiem], [MaLoaiDiem], [DiemToiThieu], [MaDonVi], [MaTieuChuan], [Mathoigian]) VALUES (1, 1, 80, N'HSVT', 3, 2)
INSERT [dbo].[QUYDINH_DIEM] ([MaQuyDinhDiem], [MaLoaiDiem], [DiemToiThieu], [MaDonVi], [MaTieuChuan], [Mathoigian]) VALUES (2, 4, 70, N'HSVT', 4, 2)
INSERT [dbo].[QUYDINH_DIEM] ([MaQuyDinhDiem], [MaLoaiDiem], [DiemToiThieu], [MaDonVi], [MaTieuChuan], [Mathoigian]) VALUES (3, 2, 77, N'HSVT', 12, 2)
INSERT [dbo].[QUYDINH_DIEM] ([MaQuyDinhDiem], [MaLoaiDiem], [DiemToiThieu], [MaDonVi], [MaTieuChuan], [Mathoigian]) VALUES (4, 3, 80, N'HSVT', 33, 2)
SET IDENTITY_INSERT [dbo].[QUYDINH_DIEM] OFF
GO
SET IDENTITY_INSERT [dbo].[ROLE] ON 

INSERT [dbo].[ROLE] ([IDrole], [Role]) VALUES (1, N'admin')
INSERT [dbo].[ROLE] ([IDrole], [Role]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[ROLE] OFF
GO
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31171022596', N'Trần Hữu Quân', CAST(N'2021-01-07' AS Date), N'Nam', N'Quảng Bình', N'0388790450', N'ST001', N'BIT', N'K44', N'huuloc53@gmail.com', NULL)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31171025965', N'Trần Hữu Lộc', CAST(N'1999-01-12' AS Date), N'Nam', N'Quảng Nam', N'0388790450', N'ST001', N'BIT', N'K43', N'huuloc53@gmail.com', 1)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181021263', N'Nguyễn Văn Tuấn', CAST(N'2020-12-29' AS Date), N'Nam', N'Tp.HCM', N'0598562366', N'ST001', N'BIT', N'K44', N'nguyenvantuan@gmail.com', NULL)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181022123', N'Nguyễn Phúc Luân', CAST(N'1999-01-12' AS Date), N'Nam', N'Quảng Bình', N'0388790450', N'EC001', N'BELL', N'K43', N'huuloc53@gmail.com', 2)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181022432', N'Võ Hồng Nhiển', CAST(N'1999-01-12' AS Date), N'Nữ', N'Quảng Bình', N'0388790450', N'EC001', N'BELL', N'K43', N'huuloc53@gmail.com', 5)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181022453', N'Nguyễn Hồng Quân', CAST(N'1999-01-12' AS Date), N'Nam', N'Quảng Bình', N'0388790450', N'EC001', N'BIT', N'K43', N'huuloc53@gmail.com', 3)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181022548', N'Nguyễn Thùy Linh', CAST(N'1999-01-12' AS Date), N'Nữ', N'Tp.Hồ Chí Minh', N'0215478952', N'ST001', N'BIT', N'K44', N'nguyenhongquan', NULL)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181025238', N'Nguyễn Tất Đoàn ', CAST(N'2020-12-29' AS Date), N'Nam', N'Tp.HCM', N'0523364071', N'ST001', N'BELL', N'K44', N'nguyentatdoan@gmail.com', 6)
INSERT [dbo].[SINH_VIEN] ([Mssv], [HoTen], [NgaySinh], [GioiTinh], [NoiSinh], [SDT], [Lop], [DonVi], [Khoa], [Email], [IDuser]) VALUES (N'31181032564', N'Hoàng Nguyễn Cẩm Tú', CAST(N'1999-01-12' AS Date), N'Nam', N'Quảng Bình', N'0388790450', N'EC001', N'BIT', N'K43', N'huuloc53@gmail.com', 4)
GO
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 1, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 2, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 3, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 4, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 5, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 6, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31171025965', 7, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 8, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 9, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 10, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 11, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 12, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 13, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 14, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 15, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 16, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 17, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 18, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181022123', 19, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181032564', 20, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181032564', 21, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181032564', 23, NULL, 2)
INSERT [dbo].[THAMGIA_CHUONGTRINH] ([Mssv], [MaChuongTrinh], [Giai], [MaThoiGian]) VALUES (N'31181032564', 24, NULL, 2)
GO
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31171025965', 1)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31171025965', 2)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31171025965', 3)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31181022123', 1)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31181022123', 2)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31181022432', 1)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31181022432', 2)
INSERT [dbo].[THOIDIEM_SV_THAMGIA] ([Mssv], [MaThoiGian]) VALUES (N'31181022453', 1)
GO
SET IDENTITY_INSERT [dbo].[THOIGIAN_XET] ON 

INSERT [dbo].[THOIGIAN_XET] ([MaThoiGian], [TuNgay], [DenNgay]) VALUES (1, CAST(N'2018-11-01' AS Date), CAST(N'2019-11-01' AS Date))
INSERT [dbo].[THOIGIAN_XET] ([MaThoiGian], [TuNgay], [DenNgay]) VALUES (2, CAST(N'2019-11-02' AS Date), CAST(N'2020-11-01' AS Date))
INSERT [dbo].[THOIGIAN_XET] ([MaThoiGian], [TuNgay], [DenNgay]) VALUES (3, CAST(N'2021-11-02' AS Date), CAST(N'2022-11-01' AS Date))
SET IDENTITY_INSERT [dbo].[THOIGIAN_XET] OFF
GO
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 1, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 2, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 3, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 4, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 5, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 6, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31171025965', 7, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 8, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 9, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 10, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 11, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 12, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 13, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 14, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 15, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 16, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 17, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 18, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181022123', 19, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181032564', 20, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181032564', 21, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181032564', 23, 2)
INSERT [dbo].[THUCHIEN_TIEUCHUAN] ([Mssv], [MaTieuChuan], [MaThoiGian]) VALUES (N'31181032564', 24, 2)
GO
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'DDT', N'Đạo đức tốt')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'HNHD', N'Hội nhập tốt về Hoạt động hội nhập')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'HNKN', N'Hội nhập tốt về Kỹ năng')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'HNNN', N'Hội nhập tốt về Ngoại ngữ')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'HTT', N'Học tập tốt')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'TLT', N'Thể lực tốt')
INSERT [dbo].[TIEU_CHI] ([MaTieuChi], [TenTieuChi]) VALUES (N'TNT', N'Tình nguyện tốt')
GO
SET IDENTITY_INSERT [dbo].[TIEU_CHUAN] ON 

INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (1, N'Có lòng yêu nước, trung thành với mục tiêu, lý tưởng cách mạng của Đảng', N'DDT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (2, N'Không vi phạm pháp luật và các quy chế, nội quy của trường, lớp, quy định của địa phương cư trú, nơi công cộng', N'DDT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (3, N'Điểm rèn luyện đạt từ 80 điểm trở lên', N'DDT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (4, N'Phân tích chất lượng Đoàn viên cuối năm đạt Xuất sắc.', N'DDT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (5, N'Tham gia hoạt động tìm hiểu về văn hóa UEH cấp trường', N'DDT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (6, N'Là thành viên chính thức đội thi tìm hiểu về chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh cấp trường thanh gia các cuộc thi cấp thành trở lên', N'DDT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (7, N'Tham gia các cuộc thi tìm hiểu về chủ nghĩa Mác – Lênin, tư tưởng Hồ Chí Minh quy mô từ cấp trường trở lên', N'DDT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (8, N'Có tham luận, bài viết được trình bày tại các diễn đàn học thuật về các môn khoa học Mác - Lênin, tư tưởng Hồ Chí Minh từ cấp trường trở lên', N'DDT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (9, N'Là Thanh niên tiên tiến làm theo lời Bác các cấp hoặc là điển hình được biểu dương trong việc thực hiện học tập và làm theo tư tưởng, tấm gương đạo đức, phong cách Chủ tịch Hồ Chí Minh', N'DDT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (10, N'Có hành động dũng cảm cứu người bị nạn, bắt cướp, giúp người neo đơn, người nghèo, người gặp khó khăn, hoạn nạn trong tình trạng nguy hiểm và cấp thiết được khen thưởng, biểu dương từ trường, cấp xã, phường trở lên hoặc được nêu gương trên các phương tiện truyền thông đại chúng', N'DDT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (11, N'Có động cơ, thái độ học tập đúng đắn; không gian lận trong thi cử, không nợ môn, học phần hoặc tín chỉ trong năm học', N'HTT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (12, N'Điểm trung bình chung học tập cả năm học đạt từ 7,7/10 trở lên', N'HTT', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (13, N'Có đề tài nghiên cứu khoa học đạt giải cấp khoa trong năm học', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (14, N'Có đề tài nghiên cứu khoa học cấp trường tham dự UEH500 hoặc Nhà nghiên cứu trẻ và đạt giải trong năm học', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (15, N'Có đề tài nghiên cứu khoa học sinh viên tham gia giải thưởng sinh viên nghiên cứu khoa học Euréka hoặc tham gia giải thưởng nghiên cứu khoa học cấp thành phố và trung ương', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (16, N'Có ít nhất 01 bài viết về lĩnh vực chuyên môn đang theo học, đăng tải trên các sản phẩm của các cơ quan truyền thông uy tín hoặc các báo, tạp chí khoa học chuyên ngành của trường hoặc có bài tham luận tham gia các hội thảo khoa học cấp khoa trở lên có xác nhận của hội đồng giáo sư', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (17, N'Có sản phẩm sáng tạo được cấp bằng sáng chế, cấp giấy phép xuất bản hoặc đạt các giải thưởng từ cấp tỉnh, thành phố trở lên', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (18, N'Là thành viên đội tuyển tham gia các cuộc thi học thuật cấp quốc gia, quốc tế', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (19, N'Đạt giải thưởng trong các cuộc thi ý tưởng sáng tạo từ cấp thành phố trở lên', N'HTT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (20, N'Đạt giải khuyến khích trở lên trong các cuộc thi chuyên môn/học thuật cấp trường, cấp thành, cấp toàn quốc (có giấy chứng nhận) do các hiệp hội ngành nghề, các trường đại học, học viện, các cơ quan thông tấn, báo chí tổ chức', N'HTT', 0, 2, 1)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (21, N'Đạt danh hiệu "Thanh niên khỏe" từ cấp trường trở lên', N'TLT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (22, N'Là Vận động viên tham gia thi đấu tại Hội thao cấp trường, Khoa/KTX/Viện, liên Khoa/KTX/Viện (có giấy chứng nhận)', N'TLT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (23, N'Đạt thành tích cao trong các hội thao từ cấp trường trở lên (Giải 1, giải 2, giải 3, khuyến khích hoặc tương đương)', N'TLT', 0, 2, 1)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (24, N'Là thành viên đội tuyển cấp trường, thành phố, quốc gia các môn thể dục thể thao. Ưu tiên những sinh viên là vận động viên đạt huy chương trong các giải thi đấu cấp quốc gia, khu vực và quốc tế', N'TLT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (25, N'Tham gia và nhận giấy chứng nhận hoàn thành một trong các chiến dịch, chương trình sau: một trong hai chặng của Chiến dịch Tình nguyện Sinh viên Kinh tế, chiến dịch Xuân tình nguyện, chương trình Tiếp sức mùa thi, chương trình Tiếp sức đến trường', N'TNT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (26, N'Tham gia ít nhất 05 ngày tình nguyện/năm', N'TNT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (27, N'Có giấy khen hoặc giấy chứng nhận tham gia tích cực chương trình tình nguyện cấp trường trở lên', N'TNT', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (28, N'Đạt chứng chỉ ngoại ngữ trình độ TOEIC 500 hoặc tương đương trở lên (Áp dụng cho sinh viên năm 1, 2) và TOEIC 600 hoặc tương đương trở lên (Áp dụng cho sinh viên năm 3, 4). Riêng đối tượng sinh viên chuyên ngành Ngoại ngữ: TOEIC 600 (Áp dụng cho sinh viên năm 1, 2), TOEIC 700(Áp dụng cho sinh viên năm 3, 4). Các chứng chỉ ngoại ngữ khác hoặc ngôn ngữ khác tương tương.', N'HNNN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (29, N'Tham gia và đạt giải khuyến khích trở lên các cuộc thi kiến thức ngoại ngữ (được hiểu là cuộc thi tìm hiểu ngoại ngữ) từ cấp trường trở lên', N'HNNN', 0, 2, 1)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (30, N'Tham gia và đạt top 20 hàng tuần cuộc thi Olympic tiếng Anh học sinh – sinh viên toàn quốc do trung ương HSV tổ chức', N'HNNN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (31, N'Tham gia 3/4 tuần và đạt top 100 ít nhất 1 tuần Cuộc thi English Amazing Race 2020', N'HNNN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (32, N'Tham gia và hoàn thành ít nhất 02 khóa trang bị kỹ năng thực hành xã hội,', N'HNKN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (33, N'Điểm trung bình học phần môn Kỹ năng mềm đạt từ 8,0/10 trở lên', N'HNKN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (34, N'Đạt giải trong các cuộc thi về kỹ năng từ cấp trường trở lên', N'HNKN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (35, N'Là giảng viên các lớp huấn luyện kỹ năng từ cấp trường trở lên', N'HNKN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (36, N'Được Đoàn Thanh niên - Hội Sinh viên từ cấp trường trở lên khen thưởng về thành tích xuất sắc trong công tác Đoàn và phong trào thanh niên hoặc công tác Hội và phong trào sinh viên', N'HNKN', 0, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (37, N'Tham gia tích cực ít nhất 01 hoạt động về hội nhập do cấp trường trở lên tổ chức', N'HNHD', 1, 2, 0)
INSERT [dbo].[TIEU_CHUAN] ([MaTieuChuan], [TenTieuChuan], [MaTieuChi], [MaLoaiTieuChuan], [Cap], [QuyDinhGiai]) VALUES (39, N'Testcase', N'DDT', 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[TIEU_CHUAN] OFF
GO
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (1, N'huuloc53@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (2, N'nhienvo12@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (3, N'tuhoang37@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (4, N'hongquan77@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (5, N'nhatvo66@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (6, N'luannguyen87@gmail.com', N'abcxyz123', 2)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (7, N'hsvtruong@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (8, N'bit@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (9, N'quantri@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (10, N'taichinh@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (11, N'luatkinhte@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (12, N'nnkt@gmail.com', N'abcxyz123', 1)
INSERT [dbo].[USER] ([IDuser], [Username], [Password], [IDrole]) VALUES (13, N'ttk@gmail.com', N'abcxyz123', 1)
SET IDENTITY_INSERT [dbo].[USER] OFF
GO
ALTER TABLE [dbo].[CHUONG_TRINH]  WITH CHECK ADD FOREIGN KEY([DonViToChuc])
REFERENCES [dbo].[DON_VI] ([MaDonVi])
GO
ALTER TABLE [dbo].[CHUONG_TRINH]  WITH CHECK ADD FOREIGN KEY([MaTieuChuan])
REFERENCES [dbo].[TIEU_CHUAN] ([MaTieuChuan])
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK__DIEM__MaHocKy__5BE2A6F2] FOREIGN KEY([MaHocKy])
REFERENCES [dbo].[HOCKY_XETDIEM] ([MaHocKy])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK__DIEM__MaHocKy__5BE2A6F2]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD FOREIGN KEY([MaLoaiDiem])
REFERENCES [dbo].[LOAI_DIEM] ([MaLoaiDiem])
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD FOREIGN KEY([Mssv])
REFERENCES [dbo].[SINH_VIEN] ([Mssv])
GO
ALTER TABLE [dbo].[HOCKY_XETDIEM]  WITH CHECK ADD  CONSTRAINT [FK_HOCKY_XETDIEM_THOIGIAN_XET] FOREIGN KEY([MaThoiGianXetDiem])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[HOCKY_XETDIEM] CHECK CONSTRAINT [FK_HOCKY_XETDIEM_THOIGIAN_XET]
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI]  WITH CHECK ADD  CONSTRAINT [FK__KQ_THEO_T__DanhG__34C8D9D1] FOREIGN KEY([DanhGia])
REFERENCES [dbo].[CAP_TIEU_CHUAN] ([MaCapTieuChuan])
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI] CHECK CONSTRAINT [FK__KQ_THEO_T__DanhG__34C8D9D1]
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI]  WITH CHECK ADD  CONSTRAINT [FK__KQ_THEO_T__MaTie__33D4B598] FOREIGN KEY([MaTieuChi])
REFERENCES [dbo].[TIEU_CHI] ([MaTieuChi])
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI] CHECK CONSTRAINT [FK__KQ_THEO_T__MaTie__33D4B598]
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI]  WITH CHECK ADD  CONSTRAINT [FK__KQ_THEO_TI__Mssv__32E0915F] FOREIGN KEY([Mssv])
REFERENCES [dbo].[SINH_VIEN] ([Mssv])
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI] CHECK CONSTRAINT [FK__KQ_THEO_TI__Mssv__32E0915F]
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI]  WITH CHECK ADD  CONSTRAINT [FK_KQ_THEO_TIEUCHI_THOIGIAN_XET] FOREIGN KEY([MaThoiGian])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[KQ_THEO_TIEUCHI] CHECK CONSTRAINT [FK_KQ_THEO_TIEUCHI_THOIGIAN_XET]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_USER] FOREIGN KEY([IDuser])
REFERENCES [dbo].[USER] ([IDuser])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_USER]
GO
ALTER TABLE [dbo].[QUYDINH_DIEM]  WITH CHECK ADD FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DON_VI] ([MaDonVi])
GO
ALTER TABLE [dbo].[QUYDINH_DIEM]  WITH CHECK ADD FOREIGN KEY([MaLoaiDiem])
REFERENCES [dbo].[LOAI_DIEM] ([MaLoaiDiem])
GO
ALTER TABLE [dbo].[QUYDINH_DIEM]  WITH CHECK ADD FOREIGN KEY([MaTieuChuan])
REFERENCES [dbo].[TIEU_CHUAN] ([MaTieuChuan])
GO
ALTER TABLE [dbo].[QUYDINH_DIEM]  WITH CHECK ADD  CONSTRAINT [FK_QUYDINH_DIEM_THOIGIAN_XET] FOREIGN KEY([Mathoigian])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[QUYDINH_DIEM] CHECK CONSTRAINT [FK_QUYDINH_DIEM_THOIGIAN_XET]
GO
ALTER TABLE [dbo].[SINH_VIEN]  WITH CHECK ADD FOREIGN KEY([DonVi])
REFERENCES [dbo].[DON_VI] ([MaDonVi])
GO
ALTER TABLE [dbo].[SINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINH_VIEN_USER] FOREIGN KEY([IDuser])
REFERENCES [dbo].[USER] ([IDuser])
GO
ALTER TABLE [dbo].[SINH_VIEN] CHECK CONSTRAINT [FK_SINH_VIEN_USER]
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH]  WITH CHECK ADD  CONSTRAINT [FK__THAMGIA_C__MaChu__440B1D61] FOREIGN KEY([MaChuongTrinh])
REFERENCES [dbo].[CHUONG_TRINH] ([MaChuongTrinh])
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH] CHECK CONSTRAINT [FK__THAMGIA_C__MaChu__440B1D61]
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH]  WITH CHECK ADD  CONSTRAINT [FK__THAMGIA_CH__Mssv__4316F928] FOREIGN KEY([Mssv])
REFERENCES [dbo].[SINH_VIEN] ([Mssv])
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH] CHECK CONSTRAINT [FK__THAMGIA_CH__Mssv__4316F928]
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH]  WITH CHECK ADD  CONSTRAINT [FK_THAMGIA_CHUONGTRINH_THOIGIAN_XET] FOREIGN KEY([MaThoiGian])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[THAMGIA_CHUONGTRINH] CHECK CONSTRAINT [FK_THAMGIA_CHUONGTRINH_THOIGIAN_XET]
GO
ALTER TABLE [dbo].[THOIDIEM_SV_THAMGIA]  WITH CHECK ADD  CONSTRAINT [FK__THOIDIEM_S__Mssv__2B3F6F97] FOREIGN KEY([Mssv])
REFERENCES [dbo].[SINH_VIEN] ([Mssv])
GO
ALTER TABLE [dbo].[THOIDIEM_SV_THAMGIA] CHECK CONSTRAINT [FK__THOIDIEM_S__Mssv__2B3F6F97]
GO
ALTER TABLE [dbo].[THOIDIEM_SV_THAMGIA]  WITH CHECK ADD  CONSTRAINT [FK_THOIDIEM_SV_THAMGIA_THOIGIAN_XET] FOREIGN KEY([MaThoiGian])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[THOIDIEM_SV_THAMGIA] CHECK CONSTRAINT [FK_THOIDIEM_SV_THAMGIA_THOIGIAN_XET]
GO
ALTER TABLE [dbo].[THUCHIEN_TIEUCHUAN]  WITH CHECK ADD FOREIGN KEY([MaThoiGian])
REFERENCES [dbo].[THOIGIAN_XET] ([MaThoiGian])
GO
ALTER TABLE [dbo].[THUCHIEN_TIEUCHUAN]  WITH CHECK ADD FOREIGN KEY([MaTieuChuan])
REFERENCES [dbo].[TIEU_CHUAN] ([MaTieuChuan])
GO
ALTER TABLE [dbo].[THUCHIEN_TIEUCHUAN]  WITH CHECK ADD FOREIGN KEY([Mssv])
REFERENCES [dbo].[SINH_VIEN] ([Mssv])
GO
ALTER TABLE [dbo].[TIEU_CHUAN]  WITH CHECK ADD FOREIGN KEY([MaLoaiTieuChuan])
REFERENCES [dbo].[LOAI_TIEU_CHUAN] ([MaLoaiTieuChuan])
GO
ALTER TABLE [dbo].[TIEU_CHUAN]  WITH CHECK ADD FOREIGN KEY([MaTieuChi])
REFERENCES [dbo].[TIEU_CHI] ([MaTieuChi])
GO
ALTER TABLE [dbo].[TIEU_CHUAN]  WITH CHECK ADD FOREIGN KEY([Cap])
REFERENCES [dbo].[CAP_TIEU_CHUAN] ([MaCapTieuChuan])
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_ROLE] FOREIGN KEY([IDrole])
REFERENCES [dbo].[ROLE] ([IDrole])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_USER_ROLE]
GO
