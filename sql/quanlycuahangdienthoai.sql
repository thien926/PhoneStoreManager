-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2021 lúc 09:17 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlycuahangdienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
('HD2', 'SP6', 10, 20000000),
('HD2', 'SP1', 2, 20000000),
('HD1', 'SP1', 1, 20000000),
('HD3', 'SP4', 1, 15000000),
('HD3', 'SP6', 1, 20000000),
('HD1', 'SP2', 10, 8200000),
('HD1', 'SP3', 11, 15000000),
('HD4', 'SP1', 3, 20000000),
('HD5', 'SP23', 1, 19900000),
('HD5', 'SP4', 3, 3900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaPN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL,
  `DonGia` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MaPN`, `MaSP`, `SoLuong`, `DonGia`) VALUES
('PN1', 'SP8', 2, 23000000),
('PN1', 'SP24', 10, 25000000),
('PN2', 'SP3', 35, 7900000),
('PN3', 'SP1', 5, 20000000),
('PN4', 'SP14', 1, 5500000),
('PN4', 'SP12', 1, 7900000),
('PN4', 'SP1', 1, 20000000),
('PN4', 'SP7', 1, 15400000),
('PN5', 'SP15', 1, 5500000),
('PN5', 'SP14', 1, 5500000),
('PN5', 'SP11', 1, 15900000),
('PN5', 'SP1', 1, 20000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` date NOT NULL,
  `GioLap` time NOT NULL,
  `TongTien` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaNV`, `MaKH`, `MaKM`, `NgayLap`, `GioLap`, `TongTien`) VALUES
('HD1', 'NV2', 'KH2', 'KM2', '2020-04-18', '22:45:52', 267000000),
('HD2', 'NV1', 'KH1', 'KM1', '2020-04-18', '23:15:36', 240000000),
('HD3', 'NV1', 'KH1', 'KM1', '2020-04-19', '18:44:34', 35000000),
('HD4', 'NV1', 'KH1', 'KM1', '2020-04-21', '12:13:48', 60000000),
('HD5', 'NV3', 'KH1', 'KM1', '2020-04-24', '03:18:01', 31600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `DiaChi`, `SDT`, `TrangThai`) VALUES
('KH1', 'Nguyễn Ngọc Thiện', 'TP HCM', '0364117408', 1),
('KH2', 'Nguyễn Tuyến Đạt', 'Huế', '0364117405', 1),
('KH3', 'Nguyễn Phước Thịnh', 'Hà Nội', '0364117406', 1),
('KH4', 'Nguyễn Ngọc Thịnh', 'Hải Phòng', '0364117407', 1),
('KH5', 'Hồ Thị Thơm', 'Bến Tre', '0364117409', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DieuKienKM` bigint(20) NOT NULL,
  `PhanTramKM` int(11) NOT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `DieuKienKM`, `PhanTramKM`, `NgayBD`, `NgayKT`) VALUES
('KM1', 'Không khuyến mãi', 0, 0, '2019-04-01', '2021-04-30'),
('KM2', 'Giảm giá nhân ngày 30/4', 5000000, 30, '2019-04-28', '2019-05-02'),
('KM3', 'Giảm giá 1/5', 2000000, 10, '2019-04-25', '2019-05-02'),
('KM4', 'Giảm giá tết', 15000000, 20, '2019-04-24', '2019-12-01'),
('KM5', 'Khuyến mãi xả hàng', 1000000, 50, '2019-05-05', '2019-05-06'),
('KM6', 'Khuyến mãi mùa hè', 15000000, 20, '2020-07-01', '2020-08-06'),
('KM7', 'Khuyến mãi mùa hè 2', 5000000, 5, '2020-05-01', '2020-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `Mota`) VALUES
('LSP1', 'Apple', 'Các sản phẩm của Apple'),
('LSP10', 'Nokia', 'san pham cua nokia'),
('LSP2', 'Oppo', 'Camara Selphi cuc chat tu Oppo'),
('LSP3', 'SamSung', 'Khuyen mai lon tu SamSung'),
('LSP4', 'Phillip', 'Các sản phẩm tuyệt đẹp đến từ phillip'),
('LSP5', 'Nokia', 'Các sản phẩm đến từ thương hiệu Nokia'),
('LSP6', 'Blackbery', 'BlackBery is the best'),
('LSP7', 'Huawei', 'Các sản phẩm đến từ thương hiệu Huawei'),
('LSP8', 'Vivo', 'Các sản phẩm đến từ Vivo'),
('LSP9', 'Xiaomi', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenNCC` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`, `Fax`) VALUES
('NCC1', 'Cty Samsung', 'TP HCM', '0123456789', '4598-8789-8789-7897'),
('NCC2', 'Cty Thương Mại Công Nghệ', 'Hà Nội', '0120728815', '3672-1782-3923-6091'),
('NCC3', 'Cty Di Động Trường Sơn', 'TP HCM', '0703192738', '2364-2974-2384-2394'),
('NCC4', 'Cty Viễn Thông Thành Đạt', 'TP HCM', '0501239237', '9823-6738-6739-6766'),
('NCC5', 'Thế Giới Công Nghệ', 'Bình Dương', '0801729329', '1830-7288-8900-7712'),
('NCC6', 'Cty TNHH Hoàng Bá', 'Long An', '0303676818', '7623-9812-3876-2834'),
('NCC7', 'Cty Di Động Thành Tiến', 'Hà Nội', '0989140736', '1873-1738-8736-4761'),
('NCC8', 'Cty Toàn Thắng', 'TP HCM', '0120628918', '8127-9382-1974-2983');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` text COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `NgaySinh`, `DiaChi`, `SDT`, `TrangThai`) VALUES
('NV1', 'Nguyễn Ngọc Thiện', '2000-05-08', 'Bình Định', '0364117408', 1),
('NV2', 'Nguyễn Phước Thịnh', '2000-04-05', 'TP HCM', '0364117407', 1),
('NV3', 'Nguyễn Tấn Thông', '2000-04-05', 'Hà Nội', '0364117409', 1),
('NV4', 'Hồ Thị Thơm', '2000-11-12', 'TP HCM', '0364117406', 1),
('NV5', 'Nguyễn Ngọc Thịnh', '2000-04-11', 'Hải Phòng', '0364117405', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
('Q1', 'Quản lý', 'xemSanPham xemLoaiSanPham xemHoaDon qlNhanVien qlKhachHang xemPhieuNhap xemNCC qlTaiKhoan qlQuyen'),
('Q2', 'Nhân viên Bán hàng', 'qlBanHang xemSanPham xemLoaiSanPham xemHoaDon xemNhanVien xemKhachHang'),
('Q3', 'Phụ Bán Hàng', 'qlBanHang xemSanPham xemKhuyenMai xemKhachHang'),
('Q4', 'Admin', 'qlBanHang qlNhapHang qlSanPham qlLoaiSanPham qlHoaDon qlKhuyenMai qlNhanVien qlKhachHang qlPhieuNhap qlNCC qlTaiKhoan qlQuyen'),
('Q5', 'Nhân viên Nhập hàng', 'qlNhapHang xemSanPham xemLoaiSanPham xemNhanVien qlPhieuNhap qlNCC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNCC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date NOT NULL,
  `GioNhap` time NOT NULL,
  `TongTien` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNCC`, `MaNV`, `NgayNhap`, `GioNhap`, `TongTien`) VALUES
('PN1', 'NCC2', 'NV1', '2020-04-24', '01:25:08', 296000000),
('PN2', 'NCC3', 'NV1', '2020-04-24', '01:25:23', 276500000),
('PN3', 'NCC5', 'NV3', '2020-04-25', '17:06:52', 100000000),
('PN4', 'NCC4', 'NV3', '2020-04-26', '02:51:18', 48800000),
('PN5', 'NCC5', 'NV3', '2020-04-26', '17:54:01', 46900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaLSP` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` bigint(20) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh`, `TrangThai`) VALUES
('SP1', 'LSP1', 'IPhone X', 20000000, 90, 'iphone-xr-128gb-red-400x400.jpg', 1),
('SP10', 'LSP1', 'iPhone Xr 256GB', 23900000, 75, 'iphone-xr-256gb-white-400x400.jpg', 1),
('SP11', 'LSP2', 'OPPO R17 Pro', 15900000, 99, 'oppo-r17-pro-2-400x460.jpg', 1),
('SP12', 'LSP8', 'Vivo V15', 7900000, 257, 'vivo-v15-quanghai-400x460.jpg', 1),
('SP13', 'LSP6', 'Blackberry Evolve', 7900000, 46, 'blackberry-evolve6xvk3-640.jpg', 1),
('SP14', 'LSP7', 'Huawei Y9 (2019)', 5500000, 37, 'huawei-y9-2019-blue-400x460.jpg', 1),
('SP15', 'LSP2', 'OPPO F7', 5500000, 361, 'oppo-f7-red-mtp-400x460.jpg', 1),
('SP16', 'LSP9', 'Xiaomi Mi 8', 11900000, 51, 'xiaomi-mi-8-1-400x460-400x460.jpg', 1),
('SP17', 'LSP9', 'Xiaomi Redmi Note 6 Pro 64GB', 5600000, 68, 'xiaomi-redmi-note-6-pro-black-1-400x460.jpg', 1),
('SP18', 'LSP3', 'Samsung Galaxy Note 9 512GB', 24000000, 59, 'samsung-galaxy-note-9-512gb-blue-400x460.jpg', 1),
('SP19', 'LSP7', 'Huawei Mate 20', 13000000, 44, 'huawei-mate-20-black-400x460.jpg', 1),
('SP2', 'LSP2', 'Oppo A7', 8200000, 70, 'oppo-a7-400x460.jpg', 1),
('SP20', 'LSP8', 'Vivo Y85', 5000000, 36, 'vivo-y85-red-docquyen-400x460.jpg', 1),
('SP21', 'LSP8', 'Vivo V11', 8000000, 130, 'vivo-v11-400x460.jpg', 1),
('SP22', 'LSP1', 'iPhone Xs Max 512GB', 39000000, 55, 'iphone-xs-max-512gb-gold-400x460.jpg', 1),
('SP23', 'LSP2', 'OPPO Fid X', 19900000, 0, 'oppo-find-x-1-400x460-400x460.jpg', 1),
('SP24', 'LSP1', 'Iphone abc', 25000000, 20, 'iphone-xr-256gb-white-400x400.jpg', 1),
('SP25', 'LSP1', 'Apple 4566', 4250000, 45, 'huawei-mate-20-black-400x460.jpg', 1),
('SP26', 'LSP3', 'fewfew', 22000000, 20, 'itachi1.jpg', 1),
('SP3', 'LSP5', 'Nokia 8.1', 7900000, 69, 'nokia-81-silver-400x460.jpg', 1),
('SP4', 'LSP4', 'Philips S327', 2000000, 56, 'philips-s327-400-400x460.jpg', 1),
('SP5', 'LSP1', 'iPhone 8 Plus 256GB', 25700000, 167, 'iphone-8-plus-256gb-gold-400x460.jpg', 1),
('SP6', 'LSP5', 'Nokia 6.1 Plus', 6500000, 44, 'nokia-61-plus-3-400x460.jpg', 1),
('SP7', 'LSP2', 'Oppo NEO 3', 15400000, 101, 'oppo-a7-32gb-gold-400x400.jpg', 0),
('SP8', 'LSP7', 'Huawei P30 Pro', 23000000, 69, 'huawei-p30-pro-1-400x460.jpg', 1),
('SP9', 'LSP3', 'Samsung Galaxy S10+ (512GB)', 29000000, 57, 'samsung-galaxy-s10-plus-512gb-ceramic-black-400x460.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TenTaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TenTaiKhoan`, `MatKhau`, `MaNV`, `MaQuyen`) VALUES
('admin', 'admin', 'NV1', 'Q4'),
('nvbh', '12345', 'NV3', 'Q2'),
('nvnh', '12345', 'NV4', 'Q5'),
('nvpbh', '12345', 'NV5', 'Q3'),
('quanly', '12345', 'NV2', 'Q1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaHD` (`MaHD`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaPN` (`MaPN`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaKM` (`MaKM`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `LoaiSP` (`MaLSP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `MaQuyen` (`MaQuyen`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieunhap_ibfk_3` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON UPDATE CASCADE,
  ADD CONSTRAINT `khuyenmai_ibfk_3` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON UPDATE CASCADE,
  ADD CONSTRAINT `taikhoan_ibfk_3` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
