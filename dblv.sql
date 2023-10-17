-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 01:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblv`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `idbanner` int(11) NOT NULL,
  `tenbanner` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `motabanner` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`idbanner`, `tenbanner`, `img`, `motabanner`, `trangthai`) VALUES
(1, 'Banner 1', '1-New-Refurbished-Banner.jpg', 'Banner 1', 1),
(2, 'Banner 2', '-banner-n04.jpg', 'Banner 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giagoc` double NOT NULL,
  `gia` double NOT NULL,
  `idsanpham` varchar(100) NOT NULL,
  `codegiamgia` varchar(255) DEFAULT NULL,
  `makhuyenmai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `soluong`, `giagoc`, `gia`, `idsanpham`, `codegiamgia`, `makhuyenmai`) VALUES
(1686473023, 5, 14000000, 9800000, 'AC1808444', 'no', NULL),
(1686846220, 1, 19990000, 19990000, 'AC210901841', 'COVIDTOICHOI3', NULL),
(1686846220, 1, 21990000, 17592000, 'AC211006749', 'COVIDTOICHOI3', NULL),
(1686846260, 1, 16990000, 16990000, 'AC211012728', 'no', NULL),
(1686846260, 1, 32490000, 22743000, 'AC211013133', 'no', NULL),
(1686846318, 1, 21990000, 17592000, 'AC211006749', 'no', NULL),
(1686846318, 1, 17990000, 12593000, 'AC211101853', 'no', NULL),
(1686846318, 1, 23790000, 16653000, 'AC211112847', 'no', NULL),
(1686846356, 1, 23990000, 16793000, 'AC220101409', 'no', NULL),
(1686846356, 1, 27990000, 27990000, 'AC220102149', 'no', NULL),
(1687628515, 1, 16990000, 16990000, 'AC211012728', 'COVIDTOICHOI', NULL),
(1687628515, 1, 32490000, 22743000, 'AC211013133', 'COVIDTOICHOI', NULL),
(1687629554, 1, 17990000, 12593000, 'AC211101853', 'COVIDTOICHOI', NULL),
(1687629554, 1, 23790000, 16653000, 'AC211112847', 'COVIDTOICHOI', NULL),
(1687800002, 5, 14000000, 9800000, 'AC1808444', 'no', NULL),
(1689134432, 2, 14000000, 9800000, 'AC1808444', 'no', NULL),
(1689134432, 5, 21990000, 15393000, 'AC211006749', 'no', NULL),
(1689134483, 1, 14000000, 9800000, 'AC1808444', 'no', NULL),
(1689575015, 1, 21990000, 15393000, 'AC211006749', 'no', NULL),
(1689575015, 1, 27990000, 27990000, 'AC220102149', 'no', NULL),
(1689575106, 1, 19990000, 13993000, 'AC210901841', 'no', NULL),
(1689575106, 1, 48490000, 48490000, 'AC220401543', 'no', NULL),
(1689575240, 1, 10990000, 7693000, 'AS210900183', 'no', NULL),
(1689575240, 1, 10990000, 10990000, 'AS211108439', 'no', NULL),
(1689575523, 1, 10990000, 7693000, 'AS210900183', 'no', 'giamgiacucyeu'),
(1689575523, 1, 10990000, 10990000, 'AS211108439', 'no', NULL),
(1689575527, 1, 27990000, 27990000, 'AC220102149', 'no', NULL),
(1689575528, 1, 14000000, 14000000, 'AC1808444', 'no', NULL),
(1689575528, 1, 16990000, 11893000, 'AC211012728', 'no', 'giamgiacucyeu'),
(1689575529, 1, 14000000, 14000000, 'AC1808444', 'no', NULL),
(1689575529, 1, 23790000, 16653000, 'AC211112847', 'no', 'giamgiacucyeu'),
(1689575531, 1, 14000000, 14000000, 'AC1808444', 'no', NULL),
(1689575535, 1, 19990000, 19990000, 'AC210901841', 'no', NULL),
(1689575536, 1, 19990000, 19990000, 'AC210901841', 'no', NULL),
(1689575536, 1, 16990000, 11893000, 'AC211012728', 'no', 'giamgiacucyeu'),
(1689575537, 1, 14000000, 14000000, 'AC1808444', 'no', NULL),
(1689575540, 1, 19990000, 19990000, 'AC210901841', 'no', NULL),
(1689575541, 1, 32490000, 32490000, 'AC211013133', 'no', NULL),
(1689575542, 1, 14000000, 14000000, 'AC1808444', 'no', NULL),
(1689575543, 1, 25490000, 22941000, 'DE220503340', 'no', 'giamgiangayle');

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `idkhuyenmai` int(11) NOT NULL,
  `phantramkhuyenmai` double NOT NULL,
  `idsanpham` varchar(100) NOT NULL,
  `trangthaictkm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietkhuyenmai`
--

INSERT INTO `chitietkhuyenmai` (`idkhuyenmai`, `phantramkhuyenmai`, `idsanpham`, `trangthaictkm`) VALUES
(1, 20, 'AS220102624', 1),
(1, 10, 'AS230201273', 1),
(1, 10, 'DE220503340', 1),
(1, 10, 'DE220700459', 1),
(1, 10, 'HP220610044', 1),
(1, 10, 'HP220700501', 1),
(1, 10, 'MSI220806390', 1),
(1, 10, 'MSI230202487', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `idCPU` int(11) NOT NULL,
  `tenCPU` varchar(255) NOT NULL,
  `slug_CPU` varchar(255) NOT NULL,
  `mota_CPU` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`idCPU`, `tenCPU`, `slug_CPU`, `mota_CPU`, `trangthai`) VALUES
(1, 'Intel Core i3', 'laptop-i3', 'CPU Intel Core i3', 1),
(2, 'Intel Core i5', 'laptop-i5', 'CPU Intel Core i5', 1),
(3, 'Intel Core i7', 'laptop-i7', 'CPU Intel Core i7', 1),
(4, 'Intel Core i9', 'laptop-i9', 'CPU Intel Core i9', 1),
(5, 'Intel Ryzen 3', 'laptop-ryzen3', 'CPU Intel Ryzen 3', 1),
(6, 'Intel Ryzen 7', 'laptop-ryzen7', 'CPU Intel Ryzen 7', 1),
(7, 'Intel Ryzen 9', 'laptop-ryzen9', 'CPU Intel Ryzen 9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dohoa`
--

CREATE TABLE `dohoa` (
  `iddohoa` int(11) NOT NULL,
  `tendohoa` varchar(255) NOT NULL,
  `slug_dohoa` varchar(255) NOT NULL,
  `motadohoa` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dohoa`
--

INSERT INTO `dohoa` (`iddohoa`, `tendohoa`, `slug_dohoa`, `motadohoa`, `trangthai`) VALUES
(1, 'AMD', 'amd', 'Card AMD', 1),
(2, 'GTX', 'gtx', 'Card GTX', 1),
(3, 'NVIDIA', 'nvidia', 'Card NVIDIA', 1),
(4, 'Onboard', 'onboard', 'Card Onboard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `iddonhang` int(11) NOT NULL,
  `tennguoinhan` varchar(255) NOT NULL,
  `sdtnguoinhan` varchar(255) NOT NULL,
  `diachinguoinhan` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `idnguoidung` int(11) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `ngaytinhdoanhthu` date DEFAULT NULL,
  `hinhthuc` int(11) NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`iddonhang`, `tennguoinhan`, `sdtnguoinhan`, `diachinguoinhan`, `note`, `idnguoidung`, `ngaydat`, `ngaytinhdoanhthu`, `hinhthuc`, `trangthai`) VALUES
(1686473023, 'van kia', '0985142766', 'Q.4', '213141', 2, '2023-06-15 03:43:43', '2023-06-15', 0, 5),
(1686846220, 'vanday', '0985142764', 'Q.9', '1324', 2, '2023-06-14 11:23:40', '2023-06-14', 0, 5),
(1686846260, 'van kia', '0985142766', 'q4', '21313', 2, '2023-06-13 11:24:20', '2023-06-13', 1, 5),
(1686846318, 'VAN2', '0985142764', 'Q12', '1342', 4, '2023-06-13 11:25:18', '2023-06-13', 1, 5),
(1686846356, 'vando', '0985142764', 'q4', '1424', 4, '2023-06-12 11:25:56', '2023-06-12', 0, 5),
(1687628515, 'van huhu', '0985142764', 'Q.9', '12313', 2, '2023-06-25 12:41:55', '2023-06-25', 1, 1),
(1687629554, 'vavavbabebe', '0985142766', 'Q.9', '12414', 4, '2023-06-25 12:59:14', '2023-06-25', 1, 1),
(1687800002, 'Van2', '0985142764', 'Q4', NULL, 4, '2023-06-27 12:20:02', '2023-06-27', 0, 2),
(1689134432, 'Hao', '0985142765', 'Q13', NULL, 2, '2023-07-12 11:00:32', '2023-07-12', 2, 1),
(1689134483, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-12 11:01:23', '2023-07-12', 1, 5),
(1689575015, 'admin', '0985142764', 'Q3', NULL, 6, '2023-07-17 01:23:35', '2023-07-17', 0, 1),
(1689575106, 'admin', '0985142764', 'Q3', NULL, 6, '2023-07-17 01:25:06', '2023-07-17', 0, 2),
(1689575240, 'admin', '0985142764', 'Q3', NULL, 6, '2023-07-17 01:27:20', '2023-07-17', 0, 1),
(1689575523, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-17 01:32:03', '2023-07-17', 0, 1),
(1689575527, 'Van2', '0985142764', 'Q4', NULL, 4, '2023-07-17 01:46:05', '2023-07-17', 0, 5),
(1689575528, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-18 03:24:51', '2023-07-18', 2, 1),
(1689575529, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-18 03:35:50', '2023-07-18', 2, 1),
(1689575531, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-21 01:41:25', '2023-07-21', 0, 1),
(1689575535, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-22 01:33:54', '2023-07-22', 3, 1),
(1689575536, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-22 01:37:35', '2023-07-22', 3, 1),
(1689575537, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-23 01:23:13', '2023-07-23', 2, 1),
(1689575538, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-23 01:23:23', '2023-07-23', 2, 1),
(1689575539, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-23 01:26:10', '2023-07-23', 2, 1),
(1689575540, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-23 01:40:43', '2023-07-23', 0, 1),
(1689575541, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-23 01:41:09', '2023-07-23', 2, 1),
(1689575542, 'VanDay', '0985142765', 'Q13', NULL, 2, '2023-07-26 11:54:07', '2023-07-26', 2, 1),
(1689575543, 'admin', '0985142764', 'Q3', NULL, 6, '2023-07-28 01:18:10', '2023-07-28', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `idgiamgia` int(11) NOT NULL,
  `tengiamgia` varchar(255) NOT NULL,
  `ngayketthuc` date NOT NULL,
  `codegiamgia` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tinhnangma` int(11) NOT NULL,
  `sotiengiam` int(11) NOT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `dasudung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`idgiamgia`, `tengiamgia`, `ngayketthuc`, `codegiamgia`, `soluong`, `tinhnangma`, `sotiengiam`, `trangthai`, `dasudung`) VALUES
(6, 'Giảm giá ngày Covid', '2023-07-30', 'COVIDTOICHOI', 1000, 0, 5, 1, ',2 ,4'),
(8, 'Giảm giá ngày Covid3', '2023-07-13', 'COVIDTOICHOI3', 100, 1, 10000000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `idkhuyenmai` int(11) NOT NULL,
  `tenkhuyenmai` varchar(255) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`idkhuyenmai`, `tenkhuyenmai`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 'giamgiangayle', '2023-07-26', '2023-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idloaisanpham` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `slug_loai` varchar(255) NOT NULL,
  `motaloai` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`idloaisanpham`, `tenloai`, `slug_loai`, `motaloai`, `trangthai`) VALUES
(1, 'Laptop Gaming', 'laptop-gaming', 'Laptop dành cho Gaming', 1),
(2, 'Laptop Đồ Họa', 'laptop-dohoa', 'LapTop dành cho đồ họa', 1),
(3, 'Laptop Sinh Viên-Học Sinh', 'laptop-sinhvienhocsinh', 'Laptop Dành Cho Sinh Viên-Học Sinh', 1),
(4, 'Laptop Doanh Nhân', 'laptop-doanhnhan', 'Laptop Dành Cho Doanh Nhân', 1);

-- --------------------------------------------------------

--
-- Table structure for table `luutru`
--

CREATE TABLE `luutru` (
  `idluutru` int(11) NOT NULL,
  `tenluutru` varchar(255) NOT NULL,
  `slug_luutru` varchar(255) NOT NULL,
  `motaluutru` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `luutru`
--

INSERT INTO `luutru` (`idluutru`, `tenluutru`, `slug_luutru`, `motaluutru`, `trangthai`) VALUES
(1, 'SSD 1TB', 'ssd-1tb', 'Ổ cứng SSD 1TB', 1),
(2, 'SSD 512 GB', 'ssd-512gb', 'Ổ cứng SSD 512 GB', 1),
(3, 'SSD 256 GB', 'ssd-256gb', 'Ổ cứng SSD 256 GB', 1),
(4, 'SSD 128 GB', 'ssd-128gb', 'Ổ cứng SSD 128 GB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mangxahoi`
--

CREATE TABLE `mangxahoi` (
  `idxahoi` int(11) NOT NULL,
  `idnguoidungxahoi` varchar(255) NOT NULL,
  `emailnguoidungxahoi` varchar(255) NOT NULL,
  `kieumangxahoi` varchar(255) NOT NULL,
  `idnguoidung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mangxahoi`
--

INSERT INTO `mangxahoi` (`idxahoi`, `idnguoidungxahoi`, `emailnguoidungxahoi`, `kieumangxahoi`, `idnguoidung`) VALUES
(5, '113142329729490243523', 'vanliken1@gmail.com', 'GOOGLE', 2),
(7, '108397613761921579075', 'vanliken2@gmail.com', 'GOOGLE', 4),
(10, '110046973443872883231', 'vanliken3@gmail.com', 'GOOGLE', 15),
(11, '115785555801742476733', 'haophan577@gmail.com', 'GOOGLE', 17);

-- --------------------------------------------------------

--
-- Table structure for table `manhinh`
--

CREATE TABLE `manhinh` (
  `idmanhinh` int(11) NOT NULL,
  `tenmanhinh` varchar(255) NOT NULL,
  `slug_manhinh` varchar(255) NOT NULL,
  `motamanhinh` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manhinh`
--

INSERT INTO `manhinh` (`idmanhinh`, `tenmanhinh`, `slug_manhinh`, `motamanhinh`, `trangthai`) VALUES
(1, '13 Inch', '13-inch', 'Màn hình 13 Inch', 1),
(2, '14 Inch', '14-inch', 'Màn hình 14 Inch', 1),
(3, '16 Inch', '16-inch', 'Màn hình 16 Inch', 1),
(4, '18 Inch', '18-inch', 'Màn hình 18 Inch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnguoidung` int(11) NOT NULL,
  `tennguoidung` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnguoidung`, `tennguoidung`, `email`, `password`, `sdt`, `diachi`, `token`, `level`, `trangthai`) VALUES
(1, 'Van ne', 'vanliken4@gmail.com', '$2y$10$Z1J0hN8c/Vik89s5Aix6Zuedny8IAD.uzNIUuHcL8Uf8qXDfynkTS', '0985142764', 'Q4', NULL, 0, 1),
(2, 'VanDay', 'vanliken1@gmail.com', '$2y$10$fh3LJl2ybFPWlO19U2ucS.1JeWPLCwXBzkOinYIlcsF/eZTNC9QW2', '0985142765', 'Q13', 'aya7Z66bANk0rHN7BHIf', 0, 1),
(3, 'Hao', 'haop56384@gmail.com', '$2y$10$xQePW/3xOPR2AN9iu3N49ufxVwW9Q5K.nhh3oHKwa.tg8JMK5bwsG', '0985142766', 'Q8', NULL, 0, 1),
(4, 'Van2', 'vanliken2@gmail.com', '$2y$10$tNKhbyZ6FEJll7rUj6unBO5.PyD9qOqCaTWobOtsF/5axsR6MmCxS', '0985142764', 'Q4', NULL, 0, 1),
(6, 'admin', 'admin@gmail.com', '$2y$10$glUzo2BzIXHmEcNCSxf7nO2Gpul6vPIcldk6J5OE.OC59L8xfJUVO', '0985142764', 'Q3', NULL, 1, 1),
(7, 'adminsp', 'adminsp@gmail.com', '$2y$10$qd/aRIqTMPCcxsPGBR9qv.20FHQPgFY6YcB0u5XDRzm1hA/A/tQkO', '0985142764', 'Q1', NULL, 3, 1),
(8, 'admindm', 'admindm@gmail.com', '$2y$10$NCBBNMzOSHQ8riVS8U/uzOchREBQv88cGgpHOY9NJwV7kvHLS7Otm', '0985142764', 'Q2', NULL, 2, 1),
(9, 'adminbn', 'adminbn@gmail.com', '$2a$12$OLaEo2HB5YX6qnTAd2Ku/eTSJMK105Intc8Di3Y0BQdSgKjmGQ2a2', '0985142764', 'Q3', NULL, 4, 1),
(10, 'adminkm', 'adminkm@gmail.com', '$2y$10$2W9xJx7rPw3mw7nYYOV9bO3n..8WQNB/6waJsdYoXT0xcm4fMYJNe', '0985142764', 'Q4', NULL, 5, 1),
(11, 'admingg', 'admingg@gmail.com', '$2y$10$Q72uMqMMssJLj2Iy0kYBLeOZVIhX2eSfiv.quRzyaLDWTpO7waaNW', '0985142764', 'Q5', NULL, 6, 1),
(12, 'admindh', 'admindh@gmail.com', '$2y$10$Oyk.OGYnTjE8gH7d9cfA2OPExo8hZv2UPFVlswdX54Gfqm/WgyVvC', '0985142764', 'Q6', NULL, 7, 1),
(15, 'pham van', 'vanliken3@gmail.com', '', '', '', NULL, 0, 1),
(16, 'Van aaa', 'vanliken5@gmail.com', '$2y$10$R11Ob7.nU2LJGow3e4tyc.74QFenJmJHniPtUrLm9OZf.uJPt9Kh.', '0985142764', 'Q4', NULL, 0, 1),
(17, 'Hao Phan', 'haophan577@gmail.com', '', '', '', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `idram` int(11) NOT NULL,
  `tenram` varchar(255) NOT NULL,
  `slug_ram` varchar(255) NOT NULL,
  `motaram` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`idram`, `tenram`, `slug_ram`, `motaram`, `trangthai`) VALUES
(1, '4GB', '4gb', 'RAM 4GB', 1),
(2, '8GB', '8gb', 'RAM 8GB', 1),
(3, '16GB', '16gb', 'RAM 16GB', 1),
(4, '32GB', '32gb', 'RAM 32GB', 1),
(5, '64GB', '64gb', 'RAM 64GB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` varchar(100) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `gia` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `motasanpham` text NOT NULL,
  `slug_sanpham` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `idthuonghieu` int(11) NOT NULL,
  `idram` int(11) NOT NULL,
  `idmanhinh` int(11) NOT NULL,
  `idluutru` int(11) NOT NULL,
  `idloaisanpham` int(11) NOT NULL,
  `iddohoa` int(11) NOT NULL,
  `idCPU` int(11) NOT NULL,
  `ngaytao` datetime DEFAULT NULL,
  `giakhuyenmai` double DEFAULT NULL,
  `hot` int(11) NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensanpham`, `gia`, `img`, `soluong`, `motasanpham`, `slug_sanpham`, `noidung`, `idthuonghieu`, `idram`, `idmanhinh`, `idluutru`, `idloaisanpham`, `iddohoa`, `idCPU`, `ngaytao`, `giakhuyenmai`, `hot`, `trangthai`) VALUES
('AC1808444', 'Laptop Acer Swift 3 SF315-52-38YQ', 14000000, 'AC1808444-acer-swift-sf315-52-38yq-i3-8130u-4gb-1tb-156f-win-2-org.jpg', 59, 'Laptop Acer Swift 3 SF315-52-38YQ', 'acer-swift-3-sf315-52-38yq', '<p>Đang cập nhật</p>', 1, 1, 3, 4, 3, 2, 1, '2023-06-15 13:56:24', 14000000, 1, 1),
('AC210901841', 'Laptop ACER Nitro 5 Eagle AN515-57-54MV', 19990000, 'AC210901841-skhrf0th2i1vk.jpg', 9995, 'Laptop ACER Nitro 5 Eagle AN515-57-54MV', 'acer-nitro-5-eagle-an515-57-54mv', '<p>savsdvsvsv</p>', 1, 2, 3, 2, 2, 3, 2, '2023-06-15 13:56:24', 19990000, 1, 1),
('AC211006749', 'Laptop ACER TravelMate P2 TMP214-53-5571', 21990000, 'AC211006749-6004_acer_travelmate_p214_53_1.png', 9988, 'Laptop ACER TravelMate P2 TMP214-53-5571', 'laptop-acer-travelmate-p2-tmp214-53-5571', '<p>gdsvsvs</p>', 1, 3, 2, 4, 4, 1, 2, '2023-06-15 13:56:24', 21990000, 1, 1),
('AC211012728', 'Laptop ACER Swift 3 SF314-43-R4X3', 16990000, 'AC211012728-20801_laptop_acer_swift_3_sf314_43_r4x3_0.jpg', 9982, 'Laptop ACER Swift 3 SF314-43-R4X3', 'acer-swift-3-sf314-43-r4x3', '<p>sadacasxas</p>', 1, 3, 2, 2, 3, 4, 6, '2023-06-15 13:56:24', 16990000, 1, 1),
('AC211013133', 'Laptop ACER Nitro 5 AN515-45-R86D', 32490000, 'AC211013133-acsfsf.jpg', 9982, 'Laptop ACER Nitro 5 AN515-45-R86D', 'acer-nitro-5-an515-45-r86d', '<p>sadadadad</p>', 1, 2, 3, 2, 1, 1, 6, '2023-06-15 13:56:24', 32490000, 1, 1),
('AC211101853', 'Laptop ACER Swift 3 SF314-511-55QE', 17990000, 'AC211101853-acer-swirf.jpg', 96, 'Laptop ACER Swift 3 SF314-511-55QE', 'acer-swift-3-sf314-511-55qe', '<p>bsfbsfbsbs</p>', 1, 3, 2, 2, 3, 2, 2, '2023-06-15 13:56:24', 17990000, 1, 1),
('AC211112847', 'Laptop ACER Nitro 5 AN515-57-5669', 23790000, 'AC211112847-40127_laptop_gaming_acer_nitro_5_eagle_an515_57_5669_nh_qehsv__1_.jpg', 969, 'Laptop ACER Nitro 5 AN515-57-5669', 'acer-nitro-5-an515-57-5669', '<p>sdadadad</p>', 1, 2, 4, 3, 2, 1, 5, '2023-06-15 13:56:24', 23790000, 1, 1),
('AC220101409', 'Laptop ACER Nitro 5 AN515-58-52SP', 23990000, 'AC220101409-acernitro.jpg', 9, 'Laptop ACER Nitro 5 AN515-58-52SP', 'acer-nitro-5-an515-58-52sp', '<p>s&aacute;afasfafafa</p>', 1, 2, 3, 2, 1, 3, 2, '2023-06-15 13:56:24', 23990000, 1, 1),
('AC220102149', 'Laptop ACER Nitro AN515-58-773Y', 27990000, 'AC220102149-10053510-laptop-acer-nitro-an515-58-773y-nh-qfksv-001-1.jpg', 8, 'Laptop ACER Nitro AN515-58-773Y', 'acer-nitro-an515-58-773y', 'sassdada', 1, 2, 3, 2, 2, 4, 3, '2023-06-15 13:56:24', 27990000, 1, 1),
('AC220401543', 'Laptop ACER Predator Helios 300 PH315-55-76KG', 48490000, 'AC220401543-21410_laptop_gaming_acer_predator_helios_300_ph315_55_76kg_1.jpg', 9, 'Laptop ACER Predator Helios 300 PH315-55-76KG', 'laptop-acer-predator-helios-300-ph315-55-76kg', 'dasdada', 1, 3, 3, 2, 4, 3, 3, '2023-06-15 13:56:24', 48490000, 0, 1),
('AC220500382', 'Laptop ACER Aspire 5 A515-57-52Y2', 17490000, 'AC220500382-10053511-laptop-acer-aspire-3-a315-59-381e-nx-k6tsv-006-1.jpg', 10, 'Laptop ACER Aspire 5 A515-57-52Y2', 'acer-aspire-5-a515-57-52y2', 'saxsaxasxsa', 1, 2, 3, 3, 4, 3, 2, '2023-06-15 13:56:24', 17490000, 0, 1),
('AC220500386', 'Laptop ACER Aspire Vero AV15 AV15-51-58HB', 16000000, 'AC220500386-acer-vero-1-1500x1500.jpg', 10, 'Laptop ACER Aspire Vero AV15 AV15-51-58HB', 'acer-aspire-vero-av15-av15-51-58hb', 'dadsadad', 1, 1, 1, 4, 2, 4, 4, '2023-06-15 13:56:24', 16000000, 0, 1),
('AC220700828', 'Laptop ACER Aspire 7 A715-43G-R8GA', 18490000, 'AC220700828-10054541-laptop-acer-aspire-7-gaming-r5-5625u-a715-43g-r8ga-1.jpg', 10, 'Laptop ACER Aspire 7 A715-43G-R8GA', 'acer-aspire-7-a715-43g-r8ga', 'àavsvsvsv', 1, 2, 3, 2, 3, 4, 6, '2023-06-15 13:56:24', 18490000, 0, 1),
('AC220800005', 'Laptop ACER Swift 3 SF314-512-56QN', 18490000, 'AC220800005-AC3.png', 10, 'Laptop ACER Swift 3 SF314-512-56QN', 'laptop-acer-swift-3-sf314-512-56qn', '<p>sasasasa</p>', 1, 3, 2, 2, 4, 3, 2, '2023-06-15 13:56:24', 18490000, 1, 1),
('AC220800007', 'Laptop ACER Nitro 5 AN515-46-R6QR', 40990000, 'AC220800007-22131_laptop_acer_nitro_5_an515_46_r6qr_nh_qh4sv_001_1.jpg', 10, 'Laptop ACER Nitro 5 AN515-46-R6QR', 'laptop-acer-nitro-5-an515-46-r6qr', 'sadaada', 1, 3, 3, 2, 2, 1, 7, '2023-06-15 13:56:24', 40990000, 1, 1),
('AC220802884', 'Laptop ACER Aspire 5 A514-55-5954', 17490000, 'AC220802884-AC3.png', 10, 'Laptop ACER Aspire 5 A514-55-5954', 'acer-aspire-5-a514-55-5954', 'gagsgsag', 1, 2, 2, 2, 2, 1, 2, '2023-06-15 13:56:24', 17490000, 1, 1),
('AC220909328', 'Laptop ACER Aspire 3 A315-59-381E', 11990000, 'AC220909328-AC2.jpg', 10, 'Laptop ACER Aspire 3 A315-59-381E', 'laptop-acer-aspire-3-a315-59-381e', 'dsadadadad', 1, 2, 3, 2, 4, 2, 1, '2023-06-15 13:56:24', 11990000, 0, 1),
('AC220919561', 'Laptop ACER Nitro AN515-58-769J', 31790000, 'AC220919561-10053510-laptop-acer-nitro-an515-58-773y-nh-qfksv-001-1.jpg', 10, 'Laptop ACER Nitro AN515-58-769J', 'acer-nitro-an515-58-769j', 'sdssadascsaca', 1, 4, 3, 4, 1, 2, 3, '2023-06-15 13:56:24', 31790000, 0, 1),
('AC221003815', 'Laptop ACER Swift 3 SF314-512-741L', 30490000, 'AC221003815-10053511-laptop-acer-aspire-3-a315-59-381e-nx-k6tsv-006-1.jpg', 10, 'Laptop ACER Swift 3 SF314-512-741L', 'laptop-acer-swift-3-sf314-512-741l', 'sadassaad', 1, 3, 2, 1, 3, 4, 3, '2023-06-15 13:56:24', 30490000, 0, 1),
('AC230201952', 'Laptop ACER Predator Helios 16 PH16-71-94N1', 60790000, 'AC230201952-21410_laptop_gaming_acer_predator_helios_300_ph315_55_76kg_1.jpg', 10, 'Laptop ACER Predator Helios 16 PH16-71-94N1', 'laptop-acer-predator-helios-16-ph16-71-94n1', '<p>sdadad</p>', 1, 4, 4, 1, 1, 1, 4, '2023-06-15 13:56:24', 60790000, 0, 1),
('AS210900183', 'Laptop ASUS D515DA-EJ845T', 10990000, 'AS210900183-AS1.jpg', 10, 'Laptop ASUS D515DA-EJ845T', 'asus-vivobook-d515da-ej845t', '<p>CSACSACA</p>', 3, 2, 4, 2, 4, 1, 5, '2023-06-13 13:56:24', 10990000, 0, 1),
('AS211108439', 'Laptop ASUS Vivobook X415EA-EK675W', 10990000, 'AS211108439-asus.jpg', 10, 'Laptop ASUS Vivobook X415EA-EK675W', 'asus-vivobook-x415ea-ek675w', 'csacsaca', 3, 1, 2, 3, 3, 1, 1, '2023-06-13 13:56:24', 10990000, 0, 1),
('AS220102624', 'Laptop ASUS A415EA-EB1750W', 13390000, 'AS220102624-asusvivo.jpg', 10, 'Laptop ASUS A415EA-EB1750W', 'asus-vivobook-a415ea-eb1750w', 'scascasc', 3, 3, 4, 1, 2, 1, 1, '2023-06-13 13:56:24', 10712000, 0, 1),
('AS220300644', 'Laptop ASUS ExpertBook L1500CDA-EJ0531T', 12990000, 'AS220300644-export.jpg', 10, 'Laptop ASUS ExpertBook L1500CDA-EJ0531T', 'asus-expertbook-l1500cda-ej0531t', 'csacasca', 3, 1, 3, 3, 3, 1, 5, '2023-06-13 13:56:24', 12990000, 0, 1),
('AS220302502', 'Laptop ASUS TUF Gaming FX507ZC-HN124W', 32490000, 'AS220302502-tuf.jpg', 10, 'Laptop ASUS TUF Gaming FX507ZC-HN124W', 'asus-tuf-gaming-fx507zc-hn124w', 'csacaca', 3, 1, 1, 1, 1, 1, 3, '2023-06-13 13:56:24', 32490000, 1, 1),
('AS220303080', 'Laptop ASUS TUF Gaming FX517ZC-HN077W', 21390000, 'AS220303080-tuf.jpg', 10, 'Laptop ASUS TUF Gaming FX517ZC-HN077W', 'asus-tuf-gaming-fx517zc-hn077w', 'cascac', 3, 3, 3, 2, 1, 1, 2, '2023-06-13 13:56:24', 21390000, 1, 1),
('AS220401035', 'Laptop ASUS TUF Gaming FA507RM-HN018W', 32990000, 'AS220401035-tuf.jpg', 10, 'Laptop ASUS TUF Gaming FA507RM-HN018W', 'asus-tuf-gaming-fa507rm-hn018w', 'csacascas', 3, 2, 4, 2, 1, 1, 6, '2023-06-13 13:56:24', 32990000, 0, 1),
('AS220500088', 'Laptop ASUS TUF Gaming FX507ZM-HN123W', 41990000, 'AS220500088-tuf.jpg', 10, 'Laptop ASUS TUF Gaming FX507ZM-HN123W', 'asus-tuf-gaming-fx507zm-hn123w', 'scascsac', 3, 2, 3, 2, 2, 1, 3, '2023-06-13 13:56:24', 41990000, 0, 1),
('AS220700611', 'Laptop ASUS ZenBook 14 OLED UX3402ZA-KM219W', 27990000, 'AS220700611-zenbook.jpg', 10, 'Laptop ASUS ZenBook 14 OLED UX3402ZA-KM219W', 'asus-zenbook-ux3402z-km219w', 'cascasca', 3, 4, 2, 3, 1, 1, 2, '2023-06-13 13:56:24', 27990000, 0, 1),
('AS220700612', 'Laptop Asus Zenbook 14 OLED UX3402Z UX3402ZA-KM221W', 31990000, 'AS220700612-zenbook.jpg', 10, 'Laptop Asus Zenbook 14 OLED UX3402Z UX3402ZA-KM221W', 'asus-zenbook-ux3402z-km221w', '<p>vavava</p>', 3, 3, 4, 3, 3, 1, 3, '2023-06-13 13:56:24', 31990000, 0, 1),
('AS220801577', 'Laptop Asus Vivobook 14X A1403ZA-LY072W', 14690000, 'AS220801577-asusvivo.jpg', 10, 'Laptop Asus Vivobook 14X A1403ZA-LY072W', 'asus-vivobook-a1403za-ly072w', 'scacac', 3, 3, 2, 4, 1, 1, 1, '2023-06-13 13:56:24', 14690000, 0, 1),
('AS220801586', 'Laptop ASUS VivoBook 15X OLED A1503ZA-L1421W', 17890000, 'AS220801586-asusvivo.jpg', 10, 'Laptop ASUS VivoBook 15X OLED A1503ZA-L1421W', 'asus-vivobook-a1503za-l1421w', 'scacas', 3, 1, 1, 1, 1, 1, 2, '2023-06-13 13:56:24', 17890000, 0, 1),
('AS220909105', 'Laptop ASUS VivoBook Pro 16X OLED M7600RE-L2044W', 38990000, 'AS220909105-asusvivo.jpg', 10, 'Laptop ASUS VivoBook Pro 16X OLED M7600RE-L2044W', 'asus-vivobook-pro-16x-oled-m7600re-l2044w', 'csdcscs', 3, 3, 3, 2, 2, 1, 7, '2023-06-13 13:56:24', 38990000, 0, 1),
('AS230100263', 'Laptop ASUS Vivobook Pro 16X OLED N7601ZM-MX196W', 49999000, 'AS230100263-asusvivo.jpg', 10, 'Laptop ASUS Vivobook Pro 16X OLED N7601ZM-MX196W', 'laptop-asus-vivobook-pro-16x-oled-n7601zm-mx196w', 'scacasc', 3, 4, 1, 4, 4, 1, 3, '2023-06-13 13:56:24', 49999000, 0, 1),
('AS230201273', 'Laptop ASUS Vivobook M513UA-EJ710W', 17990000, 'AS230201273-asusvivo.jpg', 10, 'Laptop ASUS Vivobook M513UA-EJ710W', 'laptop-asus-vivobook-m513ua-ej710w', 'csacacas', 3, 3, 4, 2, 1, 1, 6, '2023-06-13 13:56:24', 16191000, 0, 1),
('AS230203676', 'Laptop ASUS Expertbook B5 B5302CEA-L50916W', 15490000, 'AS230203676-export.jpg', 10, 'Laptop ASUS Expertbook B5 B5302CEA-L50916W', 'laptop-asus-expertbook-b5302cea-l50916w', 'csacascsac', 3, 2, 2, 2, 2, 1, 2, '2023-06-13 13:56:24', 15490000, 0, 1),
('AS230302706', 'Laptop ASUS Vivobook 15 OLED A1505VA-L1201W', 24990000, 'AS230302706-asusvivo.jpg', 10, 'Laptop ASUS Vivobook 15 OLED A1505VA-L1201W', 'laptop-asus-vivobook-a1505va-l1201w', 'acacacac', 3, 3, 3, 1, 2, 1, 4, '2023-06-13 13:56:24', 24990000, 0, 1),
('AS230304291', 'Laptop ASUS Gaming TUF FX507VV4-LP382W', 42990000, 'AS230304291-tuf.jpg', 10, 'Laptop ASUS Gaming TUF FX507VV4-LP382W', 'laptop-asus-gaming-tuf-fx507vv4-lp382w', 'cascsacasc', 3, 5, 3, 2, 3, 1, 4, '2023-06-13 13:56:24', 42990000, 0, 1),
('AS230304295', 'Laptop ASUS Vivobook 15 X1504VA-NJ069W', 13290000, 'AS230304295-asusvivo.jpg', 10, 'Laptop ASUS Vivobook 15 X1504VA-NJ069W', 'laptop-asus-vivobook-x1504va-nj069w', 'scacasca', 3, 2, 1, 2, 4, 1, 1, '2023-06-13 13:56:24', 13290000, 1, 1),
('AS230304301', 'Laptop ASUS Vivobook Pro 15 OLED K6502VU-MA090W', 41990000, 'AS230304301-asusvivo.jpg', 10, 'Laptop ASUS Vivobook Pro 15 OLED K6502VU-MA090W', 'laptop-asus-vivobook-pro-15-oled-k6502vu-ma090w', 'cacacaca', 3, 4, 4, 2, 4, 1, 4, '2023-06-13 13:56:24', 41990000, 0, 1),
('DE1805409', 'Laptop Dell Vostro 3578-V3578A', 15990000, 'DE1805409-laptop-dell-vostro-5620-p117f001agr-1095-1.jpg', 10, 'Laptop Dell Vostro 3578-V3578A', 'laptop-dell-vostro-3578-v3578a', 'dsasacsac', 2, 1, 4, 1, 4, 1, 2, '2023-06-14 13:56:24', 15990000, 0, 1),
('DE201104873', 'Laptop Dell Vostro 14 3405 (3405-V4R53500U003W)', 18490000, 'DE201104873-GS.008302_FEATURE_89739.jpg', 10, 'Laptop Dell Vostro 14 3405 (3405-V4R53500U003W)', 'laptop-dell-vostro-14-3405-3405-v4r53500u003w', 'dadadada', 2, 2, 2, 2, 4, 1, 6, '2023-06-14 13:56:24', 18490000, 0, 1),
('DE210601910', 'Laptop Dell Latitude 3520 70251603', 10000000, 'DE210601910-GS.008112_FEATURE_86458.jpg', 10, 'Laptop Dell Latitude 3520 70251603', 'laptop-dell-latitude-3520-3520-70251603', 'dadadada', 2, 1, 1, 3, 3, 1, 1, '2023-06-14 13:56:24', 10000000, 0, 1),
('DE210902969', 'Laptop Dell Inspiron 15 3511 (P112F001ABL)', 13490000, 'DE210902969-Dell-inspiron-15-3511.png', 10, 'Laptop Dell Inspiron 15 3511 (P112F001ABL)', 'dell-inspiron-15-3511', 'sfadada', 2, 1, 3, 3, 3, 1, 1, '2023-06-14 13:56:24', 13490000, 0, 1),
('DE211205929', 'Laptop Dell Inspiron 15 3515 (G6GR71)', 12990000, 'DE211205929-DE1.png', 10, 'Laptop Dell Inspiron 15 3515 (G6GR71)', 'dell-inspiron-15-3515', 'dasdasdada', 2, 2, 1, 3, 3, 1, 5, '2023-06-14 13:56:24', 12990000, 0, 1),
('DE211205931', 'Laptop Dell Inspiron 14 5415 (TX4H61)', 22390000, 'DE211205931-dell-inspiron-14-5415-r7-5700u-8gb-512gb-office-h-s-win11-tx4h61-600x600.jpg', 10, 'Laptop Dell Inspiron 14 5415 (TX4H61)', 'dell-inspiron-14-5415', 'dadadadaca', 2, 5, 2, 1, 4, 1, 7, '2023-06-14 13:56:24', 22390000, 0, 1),
('DE220202627', 'Laptop Dell Alienware M15 R6 (P109F001DBL)', 61990000, 'DE220202627-DELL-ALIENWARE-M15-R6-P109F001DBL-0.jpg', 10, 'Laptop Dell Alienware M15 R6 (P109F001DBL)', 'laptop-dell-alienware-m15-r6-p109f001dbl', 'dadadaa', 2, 4, 4, 1, 1, 1, 3, '2023-06-14 13:56:24', 61990000, 0, 1),
('DE220400404', 'Laptop Dell Vostro 5620 (P117F001AGR)', 29490000, 'DE220400404-laptop-dell-vostro-5620-p117f001agr-1095-1.jpg', 10, 'Laptop Dell Vostro 5620 (P117F001AGR)', 'laptop-dell-vostro-5620-p117f001agr', 'saadadad', 2, 3, 3, 2, 4, 1, 3, '2023-06-14 13:56:24', 29490000, 1, 1),
('DE220503339', 'Laptop Dell Vostro 3420', 17590000, 'DE220503339-44195_laptop_dell_vostro_15_3520_5m2tt2.jpg', 10, 'Laptop Dell Vostro 3420', 'laptop-dell-vostro-3420', 'dsasacsa', 2, 5, 2, 1, 2, 1, 2, '2023-06-14 13:56:24', 17590000, 0, 1),
('DE220503340', 'Laptop Dell Vostro 5620', 25490000, 'DE220503340-laptop-dell-vostro-5620-p117f001agr-1095-1.jpg', 10, 'Laptop Dell Vostro 5620', 'laptop-dell-vostro-5620', 'dadadada', 2, 3, 3, 2, 3, 1, 4, '2023-06-14 13:56:24', 22941000, 0, 1),
('DE220700459', 'Laptop Dell Vostro 3425 (3425 - V4R35425U100W1)', 14490000, 'DE220700459-7269_5.png', 10, 'Laptop Dell Vostro 3425 (3425 - V4R35425U100W1)', 'laptop-dell-inspiron-3425-v4r35425u100w1', 'dadadadad', 2, 1, 2, 4, 3, 1, 5, '2023-06-14 13:56:24', 13041000, 0, 1),
('DE220707587', 'Laptop Dell Inspiron 5620 INS16 (P1WKN)', 19790000, 'DE220707587-laptop-dell-inspiron-5620-n6i7110w1-core-i7---1255u--8gb--512gb--intel-iris-xe--16inch-fhd--win-11--office--bc-3.jpg', 10, 'Laptop Dell Inspiron 5620 INS16 (P1WKN)', 'dell-inspiron-5620-ins16-p1wkn', 'dadadad', 2, 4, 3, 1, 1, 1, 4, '2023-06-14 13:56:24', 19790000, 0, 1),
('DE220802901', 'Laptop Dell G15 5511', 23490000, 'DE220802901-DE2.jpg', 10, 'Laptop Dell G15 5511', 'laptop-dell-g15-5511', 'dadada', 2, 3, 3, 2, 1, 1, 2, '2023-06-14 13:56:24', 23490000, 1, 1),
('DE220920066', 'Laptop Dell XPS 15 9520-70295790', 59990000, 'DE220920066-images.jpg', 25, 'Laptop Dell XPS 15 9520-70295790', 'laptop-dell-xps-15-9520-70295790', 'csccac', 2, 3, 4, 1, 2, 1, 4, '2023-06-14 13:56:24', 59990000, 1, 1),
('DE220920770', 'Laptop Dell Inspiron 14 T7420 N4I5021W', 22190000, 'DE220920770-dell-inspiron-14-5415-r7-5700u-8gb-512gb-office-h-s-win11-tx4h61-600x600.jpg', 10, 'Laptop Dell Inspiron 14 T7420 N4I5021W', 'dell-inspiron-14-t7420-n4i5021w', 'fdfvdv', 2, 2, 2, 2, 4, 1, 2, '2023-06-14 13:56:24', 22190000, 0, 1),
('DE220920773', 'Laptop Dell Inspiron 16 5620 N6I7110W1', 26490000, 'DE220920773-laptop-dell-inspiron-5620-n6i7110w1-core-i7---1255u--8gb--512gb--intel-iris-xe--16inch-fhd--win-11--office--bc-3.jpg', 10, 'Laptop Dell Inspiron 16 5620 N6I7110W1', 'dell-inspiron-16-5620-n6i7110w1', 'daadadadad', 2, 2, 3, 2, 4, 1, 3, '2023-06-14 13:56:24', 26490000, 0, 1),
('DE221100290', 'Laptop Dell Gaming G15 5515', 26490000, 'DE221100290-yeuthuong.jpg', 10, 'Laptop Dell Gaming G15 5515', 'dell-gaming-g15-551', 'dadadada', 2, 2, 1, 2, 1, 1, 5, '2023-06-14 13:56:24', 26490000, 0, 1),
('DE221201941', 'Laptop Dell Vostro 15 3520', 18790000, 'DE221201941-44195_laptop_dell_vostro_15_3520_5m2tt2.jpg', 10, 'Laptop Dell Vostro 15 3520', 'laptop-dell-vostro-15-3520', 'dadadada', 2, 2, 3, 2, 3, 1, 2, '2023-06-14 13:56:24', 18790000, 0, 1),
('DE230402237', 'Laptop Dell Gaming G15-5525-R7H165W11GR3060', 28990000, 'DE230402237-yeuthuong.jpg', 10, 'Laptop Dell Gaming G15-5525-R7H165W11GR3060', 'laptop-dell-gaming-g15-5525-r7h165w11gr3060', 'dasdadada', 2, 4, 4, 2, 2, 1, 7, '2023-06-14 13:56:24', 28990000, 0, 1),
('DE230402247', 'Laptop Dell Inspiron 14 5430 (N5430-i5P165W11SLD2)', 25690000, 'DE230402247-laptop-dell-inspiron-5620-n6i7110w1-core-i7---1255u--8gb--512gb--intel-iris-xe--16inch-fhd--win-11--office--bc-3.jpg', 10, 'Laptop Dell Inspiron 14 5430 (N5430-i5P165W11SLD2)', 'laptop-dell-inspiron-14-5430-n5430-i5p165w11sld2', 'dadaxsax', 2, 3, 3, 2, 4, 1, 2, '2023-06-14 13:56:24', 25690000, 0, 1),
('HP210104774', 'Laptop HP ProBook 450 G8-2H0U4PA', 14890000, 'HP210104774-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP ProBook 450 G8-2H0U4PA', 'laptop-hp-probook-450-g8-2h0u4pa', 'sdcscsc', 4, 1, 1, 3, 4, 1, 1, '2023-06-12 13:56:24', 14890000, 0, 1),
('HP210602019', 'Laptop HP 14s-fq1080AU', 12490000, 'HP210602019-HP2.jpg', 10, 'Laptop HP 14s-fq1080AU', 'laptop-hp-14s-fq1080au', 'csdcsdc', 4, 1, 2, 3, 3, 1, 5, '2023-06-12 13:56:24', 12490000, 0, 1),
('HP220302879', 'Laptop HP ProBook 635 Aero G8', 17590000, 'HP220302879-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP ProBook 635 Aero G8', 'laptop-hp-probook-635-aero-g8', 'cscsc', 4, 1, 3, 3, 3, 1, 5, '2023-06-12 13:56:24', 17590000, 0, 1),
('HP220302882', 'Laptop HP ProBook 635 Aero G8', 26290000, 'HP220302882-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP ProBook 635 Aero G8', 'laptop-hp-probook-635-aero-g8', 'cdscsc', 4, 2, 3, 2, 2, 1, 6, '2023-06-12 13:56:24', 26290000, 0, 1),
('HP220400253', 'Laptop HP Pavilion Aero 13-be0229AU', 25490000, 'HP220400253-49628_hp_15s_fq2712tu__intel_silver_a5.jpg', 10, 'Laptop HP Pavilion Aero 13-be0229AU', 'laptop-hp-pavilion-aero-13-be0229au', 'csacaca', 4, 2, 3, 2, 4, 1, 6, '2023-06-12 13:56:24', 25490000, 0, 1),
('HP220610036', 'Laptop HP Pavilion 15-eg2035TX', 20590000, 'HP220610036-49628_hp_15s_fq2712tu__intel_silver_a5.jpg', 10, 'Laptop HP Pavilion 15-eg2035TX', 'laptop-hp-pavilion-15-eg2035tx', 'dcacaca', 4, 2, 3, 2, 2, 1, 2, '2023-06-12 13:56:24', 20590000, 0, 1),
('HP220610044', 'Laptop HP Pavilion X360 14-ek0059TU (6K7E1PA)', 16590000, 'HP220610044-49628_hp_15s_fq2712tu__intel_silver_a5.jpg', 10, 'Laptop HP Pavilion X360 14-ek0059TU (6K7E1PA)', 'laptop-hp-pavilion-x360-14-ek0059tu-6k7e1pa', 'csacsaca', 4, 2, 2, 4, 2, 1, 1, '2023-06-12 13:56:24', 14931000, 0, 1),
('HP220700501', 'Laptop HP ProBook 440 G9', 17290000, 'HP220700501-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP ProBook 440 G9', 'laptop-hp-probook-440-g9', 'cdscsdcs', 4, 2, 2, 2, 3, 1, 1, '2023-06-12 13:56:24', 15561000, 0, 1),
('HP220700504', 'Laptop HP ProBook 440 G9', 26890000, 'HP220700504-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP ProBook 440 G9', 'laptop-hp-probook-440-g9', 'csacasc', 4, 3, 2, 2, 3, 1, 3, '2023-06-12 13:56:24', 26890000, 0, 1),
('HP221002029', 'Laptop HP Envy 16-h0033TX', 59990000, 'HP221002029-HP2.jpg', 10, 'Laptop HP Envy 16-h0033TX', 'laptop-hp-envy-16-h0033tx', 'dvdvd', 4, 3, 3, 1, 2, 1, 4, '2023-06-12 13:56:24', 59990000, 0, 1),
('HP221101761', 'Laptop HP 15s-fq2712TU (7C0X2PA)', 12690000, 'HP221101761-49628_hp_15s_fq2712tu__intel_silver_a5.jpg', 10, 'Laptop HP 15s-fq2712TU (7C0X2PA)', 'hp-15s-fq2712tu--s221101761', 'csacscac', 4, 2, 3, 3, 4, 1, 1, '2023-06-12 13:56:24', 12690000, 0, 1),
('HP221101772', 'Laptop HP Pavilion 14-dv2075TU', 19690000, 'HP221101772-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 10, 'Laptop HP Pavilion 14-dv2075TU', 'hp-pavilion-14-dv2075tu', 'xaxa', 4, 1, 4, 1, 4, 1, 2, '2023-06-12 13:56:24', 19690000, 0, 1),
('HP221101775', 'Laptop HP Pavilion 14-dv2071TU', 25190000, 'HP221101775-49628_hp_15s_fq2712tu__intel_silver_a5.jpg', 10, 'Laptop HP Pavilion 14-dv2071TU', 'hp-pavilion-14-dv2071tu', 'scacac', 4, 3, 2, 2, 1, 1, 3, '2023-06-12 13:56:24', 25190000, 0, 1),
('HP230100465', 'Laptop HP Omen 16-n0085AX', 62890000, 'HP230100465-HP2.jpg', 10, 'Laptop HP Omen 16-n0085AX', 'laptop-hp-omen-16-n0085ax', 'cascasc', 4, 4, 3, 1, 1, 1, 7, '2023-06-12 13:56:24', 62890000, 0, 1),
('MSI211105063', 'Laptop MSI Modern 15 A5M-238VN', 15490000, 'MSI211105063-MSI1.jpg', 1000, 'Laptop MSI Modern 15 A5M-238VN', 'msi-modern-15-a5m-238vn', '<p>cscacasc</p>', 5, 2, 4, 2, 2, 1, 5, '2023-06-11 13:56:24', 15490000, 0, 1),
('MSI211105065', 'Laptop MSI Modern 15 A5M-239VN', 17490000, 'MSI211105065-MSI1.jpg', 10, 'Laptop MSI Modern 15 A5M-239VN', 'laptop-msi-modern-15-a5m-239vn', 'csdcsdcs', 5, 5, 4, 3, 3, 1, 6, '2023-06-11 13:56:24', 17490000, 0, 1),
('MSI220103922', 'Laptop MSI Modern 15 A5M-235VN', 17990000, 'MSI220103922-MSI1.jpg', 10, 'Laptop MSI Modern 15 A5M-235VN', 'laptop-msi-modern-15-a5m-235vn', 'dcsdcsdcs', 5, 3, 3, 2, 2, 1, 6, '2023-06-11 13:56:24', 17990000, 0, 1),
('MSI220300267', 'Laptop MSI Modern 14 B11MOU-1033VN', 19490000, 'MSI220300267-MSI1.jpg', 10, 'Laptop MSI Modern 14 B11MOU-1033VN', 'laptop-msi-modern-14-b11mou-1033vn', 'vsdcsc', 5, 2, 2, 2, 3, 1, 3, '2023-06-11 13:56:24', 19490000, 0, 1),
('MSI220700844', 'Laptop MSI Delta 15 A5EFK-094VN', 50990000, 'MSI220700844-67485_hacom_msi_gaming_gf63_thin_17.png', 10, 'Laptop MSI Delta 15 A5EFK-094VN', 'laptop-msi-delta-15-a5efk-094vn', 'csacasc', 5, 3, 3, 1, 4, 1, 7, '2023-06-11 13:56:24', 50990000, 0, 1),
('MSI220806390', 'Laptop MSI Gaming GF63 Thin 11UC', 25990000, 'MSI220806390-67485_hacom_msi_gaming_gf63_thin_17.png', 10, 'Laptop MSI Gaming GF63 Thin 11UC', 'msi-gaming-gf63-thin-11uc-667vn', 'csacac', 5, 2, 2, 2, 1, 1, 3, '2023-06-11 13:56:24', 23391000, 0, 1),
('MSI221100415', 'Laptop MSI Modern 15 B12M-220VN', 18490000, 'MSI221100415-MSI2.png', 10, 'Laptop MSI Modern 15 B12M-220VN', 'laptop-msi-modern-15-b12m-220vn', 'csdcsc', 5, 2, 2, 2, 1, 1, 2, '2023-06-11 13:56:24', 18490000, 0, 1),
('MSI221101658', 'Laptop MSI Gaming GF63 Thin 11SC', 19490000, 'MSI221101658-67485_hacom_msi_gaming_gf63_thin_17.png', 10, 'Laptop MSI Gaming GF63 Thin 11SC', 'msi-gaming-gf63-thin-11sc', 'dcscs', 5, 2, 2, 2, 2, 1, 2, '2023-06-11 13:56:24', 19490000, 0, 1),
('MSI230202487', 'Laptop MSI Modern 14 C11M-011VN', 13990000, 'MSI230202487-MSI2.png', 10, 'Laptop MSI Modern 14 C11M-011VN', 'laptop-msi-modern-14-c11m-011vn', 'csacaca', 5, 2, 3, 2, 1, 1, 1, '2023-06-11 13:56:24', 12591000, 0, 1),
('MSI230203963', 'Laptop MSI Creator Z16 A11UET-285VN', 66990000, 'MSI230203963-553cd144edc3349186e83743f91e8ebf.png', 10, 'Laptop MSI Creator Z16 A11UET-285VN', 'laptop-msi-creator-z16-a11uet-285vn', 'cscscsd', 5, 4, 2, 1, 4, 1, 4, '2023-06-11 13:56:24', 66990000, 0, 1),
('MSI230300146', 'Laptop MSI Modern 15 B13M-297VN', 21990000, 'MSI230300146-MSI2.png', 10, 'Laptop MSI Modern 15 B13M-297VN', 'laptop-msi-modern-15-b13m-297vn', 'efefefe', 5, 3, 2, 2, 3, 1, 3, '2023-06-11 13:56:24', 21990000, 0, 1),
('MSI230400582', 'Laptop MSI Modern 15 B13M-438VN', 18490000, 'MSI230400582-MSI2.png', 10, 'Laptop MSI Modern 15 B13M-438VN', 'laptop-msi-modern-15-b13m-438vn', 'cascascas', 5, 2, 4, 3, 3, 1, 2, '2023-06-11 13:56:24', 18490000, 0, 1),
('MSI230402250', 'Laptop MSI Modern 15 B7M-231VN', 14990000, 'MSI230402250-MSI2.png', 10, 'Laptop MSI Modern 15 B7M-231VN', 'laptop-msi-modern-15-b7m-231vn', 'caccaa', 5, 3, 3, 3, 4, 1, 5, '2023-06-11 13:56:24', 14990000, 0, 1),
('SP1', 'Acer pro vip', 14000000, 'SP1-42571_42571_laptop_hp_probook_440_g9_6m0x3pa__6_1.jpg', 1, 'cscsc', 'provip', '<p>dscscsdc</p>', 1, 2, 1, 1, 1, 1, 2, '2023-07-17 12:31:00', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `idthongke` int(11) NOT NULL,
  `ngaydat` date NOT NULL,
  `doanhthu` varchar(255) NOT NULL,
  `soluongdaban` int(11) NOT NULL,
  `tongdonhang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongke`
--

INSERT INTO `thongke` (`idthongke`, `ngaydat`, `doanhthu`, `soluongdaban`, `tongdonhang`) VALUES
(1, '2023-06-13', '86571000', 5, 2),
(2, '2023-06-12', '44783000', 2, 1),
(3, '2023-06-14', '37581900', 2, 1),
(4, '2023-06-15', '9800000', 1, 1),
(5, '2023-06-16', '1000', 1, 1),
(6, '2023-06-27', '0', 0, 0),
(7, '2023-07-17', '27990000', 1, 1),
(8, '2023-07-12', '9800000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `idthuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `slug_thuonghieu` varchar(255) NOT NULL,
  `motathuonghieu` text NOT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`idthuonghieu`, `tenthuonghieu`, `slug_thuonghieu`, `motathuonghieu`, `trangthai`) VALUES
(1, 'Acer', 'laptop-acer', 'Thương hiệu Acer', 1),
(2, 'Dell', 'laptop-dell', 'Thương hiệu Dell', 1),
(3, 'Asus', 'laptop-asus', 'Thương hiệu Asus', 1),
(4, 'HP', 'laptop-hp', 'Thương hiệu HP', 1),
(5, 'MSI', 'laptop-msi', 'Thương hiệu MSI', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbanner`);
ALTER TABLE `banner` ADD FULLTEXT KEY `tenbanner` (`tenbanner`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`iddonhang`,`idsanpham`),
  ADD KEY `fk_o_sp_idx` (`idsanpham`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`idkhuyenmai`,`idsanpham`),
  ADD KEY `fk_ct_sp_idx` (`idsanpham`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`idCPU`);
ALTER TABLE `cpu` ADD FULLTEXT KEY `tenCPU` (`tenCPU`);

--
-- Indexes for table `dohoa`
--
ALTER TABLE `dohoa`
  ADD PRIMARY KEY (`iddohoa`);
ALTER TABLE `dohoa` ADD FULLTEXT KEY `tendohoa` (`tendohoa`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddonhang`),
  ADD KEY `fk_dh_nd_idx` (`idnguoidung`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`idgiamgia`);
ALTER TABLE `giamgia` ADD FULLTEXT KEY `tengiamgia` (`tengiamgia`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`idkhuyenmai`);
ALTER TABLE `khuyenmai` ADD FULLTEXT KEY `tenkhuyenmai` (`tenkhuyenmai`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idloaisanpham`);
ALTER TABLE `loaisanpham` ADD FULLTEXT KEY `tenloai` (`tenloai`);

--
-- Indexes for table `luutru`
--
ALTER TABLE `luutru`
  ADD PRIMARY KEY (`idluutru`);
ALTER TABLE `luutru` ADD FULLTEXT KEY `tenluutru` (`tenluutru`);

--
-- Indexes for table `mangxahoi`
--
ALTER TABLE `mangxahoi`
  ADD PRIMARY KEY (`idxahoi`),
  ADD KEY `fk_user_social_idx` (`idnguoidung`);

--
-- Indexes for table `manhinh`
--
ALTER TABLE `manhinh`
  ADD PRIMARY KEY (`idmanhinh`);
ALTER TABLE `manhinh` ADD FULLTEXT KEY `tenmanhinh` (`tenmanhinh`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnguoidung`);
ALTER TABLE `nguoidung` ADD FULLTEXT KEY `tennguoidung` (`tennguoidung`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`idram`);
ALTER TABLE `ram` ADD FULLTEXT KEY `tenram` (`tenram`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `fk_sp_cpu_idx` (`idCPU`),
  ADD KEY `fk_sp_dohoa_idx` (`iddohoa`),
  ADD KEY `fk_sp_luutru_idx` (`idluutru`),
  ADD KEY `fk_sp_manhinh_idx` (`idmanhinh`),
  ADD KEY `fk_sp_ram_idx` (`idram`),
  ADD KEY `fk_sp_thuonghieu_idx` (`idthuonghieu`),
  ADD KEY `fk_sp_loaisp_idx` (`idloaisanpham`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `tensanpham` (`tensanpham`);

--
-- Indexes for table `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`idthongke`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`idthuonghieu`);
ALTER TABLE `thuonghieu` ADD FULLTEXT KEY `tenthuonghieu` (`tenthuonghieu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `idCPU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dohoa`
--
ALTER TABLE `dohoa`
  MODIFY `iddohoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1689575544;

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `idgiamgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `idkhuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idloaisanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `luutru`
--
ALTER TABLE `luutru`
  MODIFY `idluutru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mangxahoi`
--
ALTER TABLE `mangxahoi`
  MODIFY `idxahoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manhinh`
--
ALTER TABLE `manhinh`
  MODIFY `idmanhinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `idram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thongke`
--
ALTER TABLE `thongke`
  MODIFY `idthongke` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `idthuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_dh_ctdh` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`iddonhang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dh_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `fk_ct_km` FOREIGN KEY (`idkhuyenmai`) REFERENCES `khuyenmai` (`idkhuyenmai`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ct_sp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_dh_nd` FOREIGN KEY (`idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mangxahoi`
--
ALTER TABLE `mangxahoi`
  ADD CONSTRAINT `fk_user_social` FOREIGN KEY (`idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_cpu` FOREIGN KEY (`idCPU`) REFERENCES `cpu` (`idCPU`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_dohoa` FOREIGN KEY (`iddohoa`) REFERENCES `dohoa` (`iddohoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_loaisp` FOREIGN KEY (`idloaisanpham`) REFERENCES `loaisanpham` (`idloaisanpham`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_luutru` FOREIGN KEY (`idluutru`) REFERENCES `luutru` (`idluutru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_manhinh` FOREIGN KEY (`idmanhinh`) REFERENCES `manhinh` (`idmanhinh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_ram` FOREIGN KEY (`idram`) REFERENCES `ram` (`idram`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sp_thuonghieu` FOREIGN KEY (`idthuonghieu`) REFERENCES `thuonghieu` (`idthuonghieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
