-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2024 lúc 04:39 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_create_id` int(11) NOT NULL,
  `actived` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `name`, `username`, `password`, `password_text`, `address`, `phoneNumber`, `email`, `salt`, `user_create_id`, `actived`, `created_at`, `updated_at`) VALUES
(15, 'Nguyễn Mạnh Trường', '123', '$2y$10$kQh2T3EgN1Fo.dhmFCbIFuPEvsWXXVfa5mCPmHhhUxgb2cKeo87ea', '1', '{\"address1\":\"qbc\",\"address2\":\"qee\"}', '13213123', 'demontesterrett@gmail.com', '', 0, 0, '2023-11-12 15:31:17', '0000-00-00 00:00:00'),
(18, '123', 'abc', '$2y$10$FiDePLWtdDSb0w.0oQl2L.U1PIH8pLvTTwvU9SEhg0b.KaMkw3IW.', '123', '', '', '', '', 0, 0, '2023-11-14 23:15:42', '0000-00-00 00:00:00'),
(19, 'Trường', 'adc', '$2y$10$80.ElGYZ7nZ0XPGOSrnoie4RAqWQCfPMMj/KKxY8U4GpoGhHnlRcO', '123', '', '', '', '', 0, 0, '2024-07-12 20:35:33', '0000-00-00 00:00:00'),
(20, 'qwe', 'qwe', '$2y$10$GwE/iQ7L0fdfOqxAZwnnnO.dhnbONnpd4MWDlbV4PLo0OeVZjCkHO', '123', '', '', '', '', 0, 0, '2024-07-12 20:44:17', '0000-00-00 00:00:00'),
(21, 'Nguyễn Mạnh Trường', 'truong', '$2y$10$2/kF/YYQudqYuqAXWS1ehORNCV2K5cBBn3nbx/GnvOY2YbvRBjtDC', '123', '{\"address1\":\"15 Tr\\u1ea7n V\\u0103n Tr\\u00e0, Q7, HCM\",\"address2\":\"Qu\\u01a1n Long, Ch\\u1ee3 G\\u1ea1o, Ti\\u1ec1n Giang\"}', '0327367159', 'pcrongvang@gmail.com', '', 0, 0, '2024-07-12 20:50:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `fullname`, `publish`) VALUES
(1, 'admin', '$2y$10$TIUHEs/hMyapyI.rJJzL7u15Z5hvqqYWVF9FW8L0XPv7F1lGoeLFC', 'Nguyễn Mạnh Trường', 1),
(2, 'admin2', '$2y$10$kKBE7GPEAtYPSehWtPLjDO1qIRrxsUpRXzYc2/CWdlRl5vgRaY5mu', 'Nguyễn Mạnh Trường', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `slug`, `type`, `name`, `parentID`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'ao-the-thao', 1, 'Áo Thể Thao', 0, 1, '2024-07-07 00:33:08', '0000-00-00 00:00:00'),
(2, 'quan-the-thao', 1, 'Quần Thể Thao', 0, 1, '2024-07-07 00:33:08', '0000-00-00 00:00:00'),
(3, 'non', 1, 'Nón', 0, 1, '2024-07-07 00:33:08', '0000-00-00 00:00:00'),
(4, 'giay-the-thao', 1, 'Giày Thể Thao', 0, 1, '2024-07-12 18:48:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `email`, `created_at`) VALUES
(1, 'pcrongvang@gmail.com', '2024-07-07 00:33:08'),
(2, 'pcrongvang@gmail.com', '2024-07-07 00:33:08'),
(3, 'pcrongvang@gmail.com', '2024-07-07 00:33:08'),
(4, 'demontesterrett@gmail.com', '2024-07-12 18:24:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cateID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `url`, `cateID`, `parentID`, `publish`, `sort`, `type`) VALUES
(1, 'Sản phẩm', '', 0, 0, 1, 0, 0),
(2, 'Áo Thể Thao', 'Array', 1, 1, 1, 0, 1),
(3, 'Trang chủ', '', 0, 0, 1, 0, 0),
(4, 'Quần Thể Thao', 'Array', 2, 1, 1, 0, 1),
(5, 'Nón', 'Array', 3, 1, 1, 0, 1),
(7, 'Giày Thể Thao', 'giay-the-thao', 4, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_module`
--

CREATE TABLE `tbl_module` (
  `id` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` tinyint(4) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_module`
--

INSERT INTO `tbl_module` (`id`, `parentID`, `name`, `link`, `controller`, `icon`, `publish`, `sort`, `created_at`, `updated_at`) VALUES
(1, 0, 'Quản lý sản phẩm', '', '', '<i class=\"fas fa-user-shield\"></i>', 1, 1, '2023-11-11 00:23:55', '0000-00-00 00:00:00'),
(2, 1, 'Danh mục', 'cpanel/category/index', 'category', '<i class=\"fas fa-user-shield\"></i>', 1, 2, '2023-11-11 00:24:27', '0000-00-00 00:00:00'),
(3, 0, 'Quản lý module', 'cpanel/module/index', 'module', '<i class=\"fas fa-user-shield\"></i>', 1, 3, '2023-11-11 00:28:14', '0000-00-00 00:00:00'),
(4, 1, 'Sản phẩm', 'cpanel/product/index', 'product', '<i class=\"fas fa-user-shield\"></i>', 1, 4, '2023-11-11 00:29:23', '0000-00-00 00:00:00'),
(5, 0, 'Quản lý admin', 'cpanel/admin/index', 'admin', '<i class=\"fas fa-user-shield\"></i>', 1, 5, '2023-11-11 00:31:14', '0000-00-00 00:00:00'),
(6, 0, 'Quản lý menu', 'cpanel/menu/index', 'menu', '<i class=\"fas fa-user-shield\"></i>', 1, 6, '2023-11-11 00:31:38', '0000-00-00 00:00:00'),
(7, 0, 'Quản lý đơn hàng', 'cpanel/order/index', 'order', '<i class=\"fas fa-user-shield\"></i>', 1, 7, '2023-11-13 21:49:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `accountId`, `address`, `phone`, `email`, `note`, `total`, `created_at`) VALUES
(58, 21, '15 Trần Văn Trà, Q7, HCM', '0327367159', 'pcrongvang@gmail.com', 'Chốt', 1920000, '2024-07-12 21:00:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `orderId`, `productId`, `price`, `qty`) VALUES
(75, 58, 32, 200000, 4),
(76, 58, 19, 280000, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productID` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `uuid`, `image`, `thumb`, `productID`, `created_at`) VALUES
(1, '5963fd94-7ed0-482a-baef-84dd2c209b86', 'public/uploads/images/product/detail/5963fd94-7ed0-482a-baef-84dd2c209b86-XS4VMrtmBJTFZiDsjf2HRzhQPy0du5aDNE8L1Ogwoklc6eq9nAU7CY3bKxGvW.jpg', 'public/uploads/images/product/detail/thumb/5963fd94-7ed0-482a-baef-84dd2c209b86-i5wHWClSUzFRYXg4NuBGesEmxVyQ6JfLcP2vkr81ZajqDn9A3TMo0DdhbKOt7.jpg', 1, '2023-11-11 00:44:08'),
(2, '03d077c6-36f1-429a-b162-42ec29593a25', 'public/uploads/images/product/detail/03d077c6-36f1-429a-b162-42ec29593a25-mDdKysq51nX6ae0SJrN8FLfvtkcO9gWPEDGbVuhR7CZ3AzwBoTMl4jUQ2YxHi.jpg', 'public/uploads/images/product/detail/thumb/03d077c6-36f1-429a-b162-42ec29593a25-fPgik9A4KE21Ld0VOhmDRByQUYXsquSrnWc3GaN6TDxewM8jHlZzt7FvoJC5b.jpg', 2, '2023-11-11 00:51:04'),
(3, '1a9f77f6-027d-4f98-b62f-22190ac318e6', 'public/uploads/images/product/detail/1a9f77f6-027d-4f98-b62f-22190ac318e6-Mng7oz24TmDerHxyaASiVuQ6EDK9swb1cCkXULB5OJ8N3vqZFt0WfldhGRjYP.jpg', 'public/uploads/images/product/detail/thumb/1a9f77f6-027d-4f98-b62f-22190ac318e6-sMZDPVdlX18bq3EQBungSi9aYFfGxHJUmLNezoCRjt5wAD24ky6hvOWr0K7cT.jpg', 2, '2023-11-11 00:51:05'),
(4, 'bc910c6d-cae5-44a9-982f-59306ada3294', 'public/uploads/images/product/detail/bc910c6d-cae5-44a9-982f-59306ada3294-AfMVrdmhQGz3WvE9gPiZ5KxDuCe16lb8qSoNHUaYj7RDOT04tJc2wByLXnkFs.jpg', 'public/uploads/images/product/detail/thumb/bc910c6d-cae5-44a9-982f-59306ada3294-x3UQoEkeaCv9Pm8r1TYz6Wl7nDMuSdtj5G4s2Bw0KcAVhZNHFRgiOqLJbyXfD.jpg', 3, '2023-11-11 00:57:06'),
(5, '82318cfe-2428-4d74-9c47-487ae2095e4a', 'public/uploads/images/product/detail/82318cfe-2428-4d74-9c47-487ae2095e4a-5zR1uKd4leH0qEY9rC2fLA7kn3gQJv6hZoxV8jFwUcbBytPSmNiOsGTDWaDMX.jpg', 'public/uploads/images/product/detail/thumb/82318cfe-2428-4d74-9c47-487ae2095e4a-DqwDPmsykVaOUu2fojZt4gS7HWCB9QMYlhdi0XNGTKbJ8Ae5LRznF3vrExc16.jpg', 3, '2023-11-11 00:57:11'),
(6, 'c071398e-4214-4a42-9dee-38707ae57290', 'public/uploads/images/product/detail/c071398e-4214-4a42-9dee-38707ae57290-DNe6vZWoHf3CgT9t4lqm0b8PjsLrnhGY5zUSMAkuaRJEXyi7QcKxOB2dDwF1V.png', 'public/uploads/images/product/detail/thumb/c071398e-4214-4a42-9dee-38707ae57290-BbYPox8UsOj7e4Z6DGucwSNg0mahTfk1KdE92JRAVLFWl5HqzQM3nivryXtDC.png', 4, '2023-11-11 00:57:51'),
(7, 'c999b47c-63f0-48e0-b2e4-b4a3da636005', 'public/uploads/images/product/detail/c999b47c-63f0-48e0-b2e4-b4a3da636005-2Oa7stT8RN5Zqhl3y6wzGrEnJoAmHeKixDWBvCDugYQ9M04UjF1cSPVXdbfLk.jpg', 'public/uploads/images/product/detail/thumb/c999b47c-63f0-48e0-b2e4-b4a3da636005-9deBlVMrYT0zEN1gGiJ2FUQxL57AC6tmoDPfbyhSXW4HDkv8RZjsuwOncKqa3.jpg', 4, '2023-11-11 00:58:02'),
(8, '2a8e11d5-c803-4d67-9c53-98b76fbb4a23', 'public/uploads/images/product/detail/2a8e11d5-c803-4d67-9c53-98b76fbb4a23-PyDL90Mco3zHGJ6kuU4VmYvb5FOr8Aj2SwNnXlKxhtdBfqEiD7QW1aTZsgeRC.png', 'public/uploads/images/product/detail/thumb/2a8e11d5-c803-4d67-9c53-98b76fbb4a23-3BSjiY1Eu9NaHULKqXotD0xJWcR5OMzwTr7ynCAs6bGmPvfQgl4eFkD82dhVZ.png', 4, '2023-11-11 00:58:02'),
(9, '52ece38c-76a6-410f-9e7b-cbd324038ab1', 'public/uploads/images/product/detail/52ece38c-76a6-410f-9e7b-cbd324038ab1-z8OtJA7wr9ciLaqKHMFSDek6ZBRWn4x1lV0fdouTXENhGQsU5vDjbPm3y2CYg.jpg', 'public/uploads/images/product/detail/thumb/52ece38c-76a6-410f-9e7b-cbd324038ab1-B58MukCalSAreUQYtoJ6Z4dvyPWDXcqmHV1nh0iDz37bK2LsxwRjgOfTFG9NE.jpg', 5, '2023-11-11 00:58:48'),
(10, '50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7', 'public/uploads/images/product/detail/50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7-Kk9z5CZbYU71NtceBwnG8yMuaL3VhFQijJPrOoAW0qED6vgd2THXR4mlsSfDx.jpg', 'public/uploads/images/product/detail/thumb/50c1e64a-1ffd-47a6-ac84-d3c9813ad2b7-YNS4zEkqDHTFQ2Zx9Wrg7GjPoaheCmisDOyvR1VlXBfdUuLMJw53bnAtKc806.jpg', 6, '2023-11-11 01:00:35'),
(13, '6095c361-1456-429e-af0d-84fecac50fa8', 'public/uploads/images/product/detail/6095c361-1456-429e-af0d-84fecac50fa8-UGFj5u79TblJQofAzD1iZ2ncCsDw0BM6VRmarqdvtK43WhSgPeNkLyYHXxO8E.jpg', 'public/uploads/images/product/detail/thumb/6095c361-1456-429e-af0d-84fecac50fa8-MFTBt3yZUgHwVdvjGQ64YSEr7L9sOKuNkblfqAn5DP2z1DCmo0Ji8ecRhxWXa.jpg', 7, '2023-11-11 01:05:04'),
(14, '108649dc-381e-4e2a-af9d-b2bad267e1f0', 'public/uploads/images/product/detail/108649dc-381e-4e2a-af9d-b2bad267e1f0-ngX14EWMjDO5NrPDyZGzbC6QAaFV8tdviw03kB9RcxmKsuHohql7SeULYT2Jf.jpg', 'public/uploads/images/product/detail/thumb/108649dc-381e-4e2a-af9d-b2bad267e1f0-Dr5zTdLOWQmH3VgnGba4fJtMAqsUl7YxBNPv0FC16yRXuS2EDw8choZeKji9k.jpg', 8, '2023-11-12 22:12:42'),
(15, '7ad8736c-4b36-4b27-93a1-b217361da768', 'public/uploads/images/product/detail/7ad8736c-4b36-4b27-93a1-b217361da768-DgJLrGjWsRia3Qz9XTUvAK8lymYFqkZ7Hoe2uwtOP1Nh40BSVbD6MfxnCdE5c.jpg', 'public/uploads/images/product/detail/thumb/7ad8736c-4b36-4b27-93a1-b217361da768-ag8E5JTCQBiz3Zlh7VPqSU9XjsM0tRDdwAHNybmLvoKOukDnFYcW61fe24Grx.jpg', 8, '2023-11-12 22:12:42'),
(16, 'b4c7ebae-b5f6-493a-b436-c8b2c91d2a24', 'public/uploads/images/product/detail/b4c7ebae-b5f6-493a-b436-c8b2c91d2a24-CJXlh3qFTy0dgmsHb6OUvfYA8SxWwQEr1NkDKjPDaMnGZ2R4VioB9L7ztc5eu.jpg', 'public/uploads/images/product/detail/thumb/b4c7ebae-b5f6-493a-b436-c8b2c91d2a24-41yE2zBeHDXdCV9WUDRZkurlvm3PwQcfoJnai7AS0jtLbYq8KgO56MNsGxFhT.jpg', 8, '2023-11-12 22:12:42'),
(17, '4e31f2ea-4abe-4ce6-adb4-c92ad63fe430', 'public/uploads/images/product/detail/4e31f2ea-4abe-4ce6-adb4-c92ad63fe430-eOWxhP1tygJBXLbCZ0NrmASDUERzHDiQGqlwd9oMKkafs82cTVjFu7n3Y6v54.jpg', 'public/uploads/images/product/detail/thumb/4e31f2ea-4abe-4ce6-adb4-c92ad63fe430-1Q8LAabOUFN9MmyDJZwSPrvdslGuh4zXWqV2E5txCRnHekgBc3KioY76T0jfD.jpg', 8, '2023-11-12 22:12:42'),
(18, 'c495e7f8-736e-4dd8-bd5a-52d8b109307f', 'public/uploads/images/product/detail/c495e7f8-736e-4dd8-bd5a-52d8b109307f-m12Eg6YcySbDACnJoW3hZQfRxFG50derUPqNvTzXwHKiau8DVBMltOs4k7L9j.jpg', 'public/uploads/images/product/detail/thumb/c495e7f8-736e-4dd8-bd5a-52d8b109307f-DYg5vPDkiULC6WQfAN3Em19Zdyr08bOsBntoSH2McluxwRKXhaGF7eJzjV4qT.jpg', 9, '2023-11-12 22:27:08'),
(19, '3a54473a-d446-4541-aa88-9a5303d60600', 'public/uploads/images/product/detail/3a54473a-d446-4541-aa88-9a5303d60600-fwsdLQ7zaXg0lqDDPvEeoNSuiAcWFCh1Rnt34B9m5YGMbZrT2jyJ8KUxVOHk6.jpg', 'public/uploads/images/product/detail/thumb/3a54473a-d446-4541-aa88-9a5303d60600-vzFWgAUyR63jV72XwbEPMum41eQBOTdfDohaZNrJ0K589lxDYiqknHCsSGctL.jpg', 9, '2023-11-12 22:27:08'),
(20, '9994457e-2f6f-4b27-a1a0-a9e68b329ddc', 'public/uploads/images/product/detail/9994457e-2f6f-4b27-a1a0-a9e68b329ddc-CXPg2Ue6bwJltFHMq4EVjdD8ZSnsv3Qa5zNWoLurAycRBGOTiD1h9mY7fx0kK.jpg', 'public/uploads/images/product/detail/thumb/9994457e-2f6f-4b27-a1a0-a9e68b329ddc-n7GbM0eRuxUtEF2AX6C3OTV4vrLKgykBwijsSHDcoqJl95hPNzfZYaW18QdmD.jpg', 9, '2023-11-12 22:27:08'),
(21, '56520d6a-9325-4ed4-83e8-596a3abb89a5', 'public/uploads/images/product/detail/56520d6a-9325-4ed4-83e8-596a3abb89a5-Lg8jY1M5zRiG0WJb6ckFXtNDSseQqOlK7PrA9hUCnuawEH4T2yBVfvDo3dxZm.jpg', 'public/uploads/images/product/detail/thumb/56520d6a-9325-4ed4-83e8-596a3abb89a5-qJAWPHkyK8sgUECB034ubeT16VvcOFazxjo2G57mD9dMLnSrXRQNYwlfZDith.jpg', 9, '2023-11-12 22:27:08'),
(22, '8df20220-374d-494c-80cd-b829f1abe6f4', 'public/uploads/images/product/detail/8df20220-374d-494c-80cd-b829f1abe6f4-0D8MjALY1QmngXDHEcZaBuf2Sd37NvUwC5Vzr9bGlhtKs6x4PFROoyekWqJiT.jpg', 'public/uploads/images/product/detail/thumb/8df20220-374d-494c-80cd-b829f1abe6f4-67Db4hRdXyzZ8L2EkHa0CMBqD5rWtUsFQloVASf3PxOjeGiTuJvmwKY9cnN1g.jpg', 10, '2023-11-12 22:31:32'),
(23, '993cfa09-86fd-47b8-96c8-31c3eae494c2', 'public/uploads/images/product/detail/993cfa09-86fd-47b8-96c8-31c3eae494c2-2fadomUiw3l5cGYSChAJ6EXV8POWK4TvbZnzkgBq9LDuts7Qyjr1HxRDMF0eN.jpg', 'public/uploads/images/product/detail/thumb/993cfa09-86fd-47b8-96c8-31c3eae494c2-Oo3MhurkgbvcDdZFwjfY6yJXiC7K5sPU42VSQGl9W1qnxTeNDAHatBLzE08mR.jpg', 10, '2023-11-12 22:31:32'),
(24, 'c57c5411-8cf6-406d-8d7e-4228440b16fa', 'public/uploads/images/product/detail/c57c5411-8cf6-406d-8d7e-4228440b16fa-SKVbBrQuDFkJmhROEgC596l7PdLiyjYv23ocwHNz8XDTxUZqAtGsaWn01eM4f.jpg', 'public/uploads/images/product/detail/thumb/c57c5411-8cf6-406d-8d7e-4228440b16fa-GYqjWiUrHzDNVtsu7nvcOEXxk43eDb0RSoF62dP5TK8CyMQhglZwaL9BJfmA1.jpg', 10, '2023-11-12 22:31:33'),
(25, '2622c9ce-0106-408a-aaf9-456727cf5be4', 'public/uploads/images/product/detail/2622c9ce-0106-408a-aaf9-456727cf5be4-sVNxOmJ7KFCT5cSEw803huR6DHLlyjMY9d1ofDWnBqtiGAzvrkZg2ebUXQP4a.jpg', 'public/uploads/images/product/detail/thumb/2622c9ce-0106-408a-aaf9-456727cf5be4-3qlLU4TzrCO8P7DkeF0B6RnEu2cXh9KNW1moVgdwSAyjDiQM5HxtfZavGJYbs.jpg', 10, '2023-11-12 22:31:33'),
(26, '3ffccede-437e-470f-9800-6832bb5f0ea2', 'public/uploads/images/product/detail/3ffccede-437e-470f-9800-6832bb5f0ea2-D0w9x1sNRqB2UTCudD4flyHG7ajKZXVre6hSnPgY5it8MkWmLcJFbO3ozvEQA.jpg', 'public/uploads/images/product/detail/thumb/3ffccede-437e-470f-9800-6832bb5f0ea2-UiuD6hsEkCrOM0d7gFKmAcGL1l2ZyRwPzQX38BnJbxfSVHtov4jDaYeWN5q9T.jpg', 11, '2023-11-12 22:34:56'),
(27, '8bb7e7b2-be8d-4706-9004-2d8fd8eb2205', 'public/uploads/images/product/detail/8bb7e7b2-be8d-4706-9004-2d8fd8eb2205-4iWAyxqanCwKjJBoDbsktOHSZGFQ982EufzlNMevdrVYP6L0371XDhmUcR5Tg.jpg', 'public/uploads/images/product/detail/thumb/8bb7e7b2-be8d-4706-9004-2d8fd8eb2205-iV0AHbXSz7r12UMwNK93dZf4uyEODmksvYlCLnaPGthj8QTBDWgRF5eqoc6Jx.jpg', 11, '2023-11-12 22:34:56'),
(28, '579e8d55-1e2a-494c-bda1-a9cb6faa32ac', 'public/uploads/images/product/detail/579e8d55-1e2a-494c-bda1-a9cb6faa32ac-DVMWjtEsTQbwhLX3RlraGze4YydPcqDBn69gmA0k1vf25Juo7OZ8SHKiUCNxF.jpg', 'public/uploads/images/product/detail/thumb/579e8d55-1e2a-494c-bda1-a9cb6faa32ac-n6hF2lWKEoX1k4dsce3i5Gga9NquSBxzDbLQDtvTMr0HfYARJUPVwCm8yOjZ7.jpg', 11, '2023-11-12 22:34:56'),
(29, 'ae1d5207-e750-4bc2-8d39-886278cd493a', 'public/uploads/images/product/detail/ae1d5207-e750-4bc2-8d39-886278cd493a-vLRdU0AHwkCKl8hz6FZfsQEueXPDmNg5D2yWi4qBTr3bxGMO7jn9tYcoaSJ1V.jpg', 'public/uploads/images/product/detail/thumb/ae1d5207-e750-4bc2-8d39-886278cd493a-1zwsjGA8uqZ6OcKeU50FVlYtdDMgHDJxL9Qv2iWoXay3r4EfRCPkb7NSTmhBn.jpg', 12, '2023-11-12 22:37:09'),
(30, '6f7f74de-7d22-4ad2-90b5-7e8694b280d7', 'public/uploads/images/product/detail/6f7f74de-7d22-4ad2-90b5-7e8694b280d7-O28sbRENWFzVlerutd0oUMS51c9X6JxyGmLDZjYwvfkP4K7QgiTBqn3AahHCD.jpg', 'public/uploads/images/product/detail/thumb/6f7f74de-7d22-4ad2-90b5-7e8694b280d7-id5DsAkBjfrl7GgactM02NY96LhFqSRKWwzumJ8ynVoZeQ3Xv1OHPDET4xUCb.jpg', 12, '2023-11-12 22:37:09'),
(31, '461af873-866c-49ea-910d-5d9efc9133b0', 'public/uploads/images/product/detail/461af873-866c-49ea-910d-5d9efc9133b0-bQJg8Ykfx2NSMiC1sTUdqVmt6XDhuLB3G59rlOPwRj7EHce0WD4aFoyAnKZvz.jpg', 'public/uploads/images/product/detail/thumb/461af873-866c-49ea-910d-5d9efc9133b0-ThgCE1OurcMoRlvGLZAWFUH3PV45DjqD96xSns2eYim078KNbzkyaBtwQXdJf.jpg', 12, '2023-11-12 22:37:10'),
(32, 'fc755205-556f-4944-9d06-6b4bf7b0bc83', 'public/uploads/images/product/detail/fc755205-556f-4944-9d06-6b4bf7b0bc83-LnGrClzyFDvDJ04BwAdhKQcbEmZXutMokYSx6sj8OeHUg2V3q5NfaTRP9W1i7.jpg', 'public/uploads/images/product/detail/thumb/fc755205-556f-4944-9d06-6b4bf7b0bc83-SVLR4fo03cTPEK62GuDbXsYh7te1lOvUkndQJHxrZWMw9aDAiB5Ng8qjmzCFy.jpg', 12, '2023-11-12 22:37:10'),
(33, '5339a381-41a4-4c4a-b952-2385c6c940ff', 'public/uploads/images/product/detail/5339a381-41a4-4c4a-b952-2385c6c940ff-fqK9kVOCuLWHD4nr6NP8tcAvRJiD1SjlXobx7dUmYZwQzT5haE2seBGy30gMF.jpg', 'public/uploads/images/product/detail/thumb/5339a381-41a4-4c4a-b952-2385c6c940ff-zr1an9dCtwVUxvMWJQEXl45FDfZiLSAY6gD3K8eBTOkbRcPGjo0H2hyNsmuq7.jpg', 12, '2023-11-12 22:37:10'),
(34, 'b98585fa-340b-47e9-ae6d-93592f7203a3', 'public/uploads/images/product/detail/b98585fa-340b-47e9-ae6d-93592f7203a3-RZbMJq04cTjPGS3EilkuKNyYmUVWrHwaL9Cv7Q6OF1DgodfDztneX5As28xBh.jpg', 'public/uploads/images/product/detail/thumb/b98585fa-340b-47e9-ae6d-93592f7203a3-PjMXYGo1HJzdv3lQ4fUagEx9DqFsRryKT0Z2mDOcti5N8B6WuhLVbekn7CAwS.jpg', 13, '2023-11-12 22:40:24'),
(35, '4a2b7d2a-b4c6-4539-9063-e303a46b8271', 'public/uploads/images/product/detail/4a2b7d2a-b4c6-4539-9063-e303a46b8271-HNbUzyQFJ4D2VMxsWXtlwTOei6nhdqGo95Rj170BSPEf8A3ucLgvZKDYCrkma.jpg', 'public/uploads/images/product/detail/thumb/4a2b7d2a-b4c6-4539-9063-e303a46b8271-TMjqaVmxLz71YgAy5trEBbSPRKd049DOskcvQilwGCenNhu62UFZW8DJ3fXoH.jpg', 13, '2023-11-12 22:40:24'),
(36, 'ae7f6be1-1417-410a-926b-7bf61e026e71', 'public/uploads/images/product/detail/ae7f6be1-1417-410a-926b-7bf61e026e71-jDusKTgERty734aHYGCbiPO9xJnvUQ5f1e6czrdoXwVkDZWLqSBFlN8MhAm20.jpg', 'public/uploads/images/product/detail/thumb/ae7f6be1-1417-410a-926b-7bf61e026e71-3L650GuXwEevcgz2ojsyRHrVW4xKmdh1nBZ87JbPMYDkClq9OfStFaQNUTDAi.jpg', 14, '2023-11-12 22:43:30'),
(37, '7e6c5a5f-baaa-45ba-a112-090b8d831c61', 'public/uploads/images/product/detail/7e6c5a5f-baaa-45ba-a112-090b8d831c61-igePDjnvyuH9b0aV7FYGsDMRoB5x812c3UKhzXSEANCwkt4WZqdLOlrQTfmJ6.jpg', 'public/uploads/images/product/detail/thumb/7e6c5a5f-baaa-45ba-a112-090b8d831c61-9Na4m7RbM1HL683ovxQVXGgdhkY2EKjJi0ulqDswzCteZfPcUFrOS5ADTyWBn.jpg', 14, '2023-11-12 22:43:30'),
(38, 'd3f09257-678a-424d-9a77-972575e50aeb', 'public/uploads/images/product/detail/d3f09257-678a-424d-9a77-972575e50aeb-qBdvCbtamXYfQ41DgFKZP90DoH5Az6eVniMNjlWw7OsTxhuEcrR3yLUS2kGJ8.jpg', 'public/uploads/images/product/detail/thumb/d3f09257-678a-424d-9a77-972575e50aeb-aBgeslkFyxmNX2iDjJ1WRhoTPvr0ZAbVcKfUznOHdCY475D8QG63EtSuwMq9L.jpg', 14, '2023-11-12 22:43:30'),
(39, '3014c300-3dc6-4dea-bd49-e73087fc35a7', 'public/uploads/images/product/detail/3014c300-3dc6-4dea-bd49-e73087fc35a7-Em36D8iXqtMsjA7rVYl1NbkvRJZ4uDnz0TC52eKyd9GBWUPQhaxOFcLfwHgSo.jpg', 'public/uploads/images/product/detail/thumb/3014c300-3dc6-4dea-bd49-e73087fc35a7-PDLQE0Uxiuh5ycl8vrZSsKj9TYOGBwDatCAV1N64Mz2dfkHR3Fnb7mJWeXoqg.jpg', 15, '2023-11-12 22:50:49'),
(40, 'dfd0bd14-9672-423e-b806-2445df9c8801', 'public/uploads/images/product/detail/dfd0bd14-9672-423e-b806-2445df9c8801-Jfa6zNjhvCM7wDyK3sd92SePOViUF0lxBHYEZqGR5mTrc4o8WQX1bDkALntug.jpg', 'public/uploads/images/product/detail/thumb/dfd0bd14-9672-423e-b806-2445df9c8801-fXqaO7ljQmWTAyJEYcw0uNknixKVHv45g8PZhCGFUdbBo36ReMS12tsDr9zDL.jpg', 15, '2023-11-12 22:50:49'),
(41, '3468d588-d683-4997-9404-55f0a1d39433', 'public/uploads/images/product/detail/3468d588-d683-4997-9404-55f0a1d39433-56UtelymzZwjH9R8G0XW4FB2JPinfuVdDqrTbSY7Kc1xgQAECN3aMOLDshokv.jpg', 'public/uploads/images/product/detail/thumb/3468d588-d683-4997-9404-55f0a1d39433-boW1eydDKNBfSV2aYrlxFnT04A6ztq9QkwgRZXsLmjG7MEDJ8H5UOchivP3uC.jpg', 15, '2023-11-12 22:50:49'),
(42, '6267a678-0903-42ab-85d2-e3577c1359ad', 'public/uploads/images/product/detail/6267a678-0903-42ab-85d2-e3577c1359ad-8Li7SzglouWjDmnd16KEMUchxfXakqbQtCeROZGNvHwB0sT2FDJV4A59rYyP3.jpg', 'public/uploads/images/product/detail/thumb/6267a678-0903-42ab-85d2-e3577c1359ad-iWXg4rqlsQODmHVTUhaL5C2t09jKbP6SMuZox1yndvecwGkF8YBN3zJADEfR7.jpg', 15, '2023-11-12 22:50:49'),
(43, 'eff9659e-4522-4938-91d8-4747a2a2bd47', 'public/uploads/images/product/detail/eff9659e-4522-4938-91d8-4747a2a2bd47-BKaxXyTu0iHvdDoznf1ZbV2gA8FYr7lU5qhE4Ce3kP9jSLOMDcsNwm6WJGQtR.jpg', 'public/uploads/images/product/detail/thumb/eff9659e-4522-4938-91d8-4747a2a2bd47-2G7sendhkF8WTOj9US3yrQZPJDwm4ifB1uqVg0DvYCHbKLxcNla5RAM6XzEot.jpg', 16, '2023-11-12 22:52:58'),
(44, 'aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb', 'public/uploads/images/product/detail/aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb-DEjXitclYhw7UQHdWe15GnP6DBSx2C4oJazusM0gFOLRk8K9fZmbrv3AyqVTN.jpg', 'public/uploads/images/product/detail/thumb/aa2f2ef0-2e35-478b-bbcb-a76ed8fbf0cb-ORFYAD6VeJcyntPHwfvl17EKXB4TWMsS2m8q53C9aDijguGdbxkzoQLU0NZrh.jpg', 16, '2023-11-12 22:52:58'),
(45, 'df7e3a44-6628-4f72-8689-93a4f16dce51', 'public/uploads/images/product/detail/df7e3a44-6628-4f72-8689-93a4f16dce51-o6zFEC3c01DsnXU9e2mORi7WAK4vthYbH8xdBDNGPZTuj5qyLrSMQgJakVlwf.jpg', 'public/uploads/images/product/detail/thumb/df7e3a44-6628-4f72-8689-93a4f16dce51-QrGwf3juB17kcYhN4DHCnXF98qsg5SmEVJM0zZO6tlLxaURyPeAvoDTWi2Kdb.jpg', 16, '2023-11-12 22:52:58'),
(46, 'c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8', 'public/uploads/images/product/detail/c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8-EDcSTbtCxV45yWoDjeGRfF1w3BdYhQJPXlrk0OZ6igq92s8uzmAvaKHLn7NMU.jpg', 'public/uploads/images/product/detail/thumb/c3b7f9aa-f44c-41e8-8965-4e4c8f0f44d8-TklMRKtYDVWj2iObhx03sHJzwFcNGZ6BroU45gEQAunmLvqyeaXSdfD91PC87.jpg', 16, '2023-11-12 22:52:59'),
(47, 'cf89e051-6a36-43f0-8b34-c2eeca60dd39', 'public/uploads/images/product/detail/cf89e051-6a36-43f0-8b34-c2eeca60dd39-vXHbK10Nr8QycTS6DOJAVtGxdiRh9Zla7j4UfqsgBCwY2LnkMP3zoeDEmuWF5.jpg', 'public/uploads/images/product/detail/thumb/cf89e051-6a36-43f0-8b34-c2eeca60dd39-0F1M3WetaVufqBGoS9LXRE2PJsN4ndrwCKhHD7QZAmi6YDc8kylOxU5bgvjzT.jpg', 17, '2023-11-12 22:54:42'),
(48, 'ea1264a4-cacd-4a90-bebb-5ded350e2e4e', 'public/uploads/images/product/detail/ea1264a4-cacd-4a90-bebb-5ded350e2e4e-4Sx61GFlTebUot0hjWgCPKs9c2VrH3uJBydkQXAaiNmD758zOMqEwYLfZDvRn.jpg', 'public/uploads/images/product/detail/thumb/ea1264a4-cacd-4a90-bebb-5ded350e2e4e-qCDy82A7FUZVHsYJzNOm4EjQK0xl9egRG31okw6hvDMtX5LucnirbPWSdBfTa.jpg', 17, '2023-11-12 22:54:42'),
(49, '13a10a23-c2d1-437a-95f7-88d766020ee5', 'public/uploads/images/product/detail/13a10a23-c2d1-437a-95f7-88d766020ee5-blivDO2Unhf4cH3BW81T6CtKLVMoAXqwPRQ07EzjyYJZsaDxd9mg5eGNukFSr.jpg', 'public/uploads/images/product/detail/thumb/13a10a23-c2d1-437a-95f7-88d766020ee5-VA9yw6aKet7uhiHk0D1OS4Jsl5dCmLvUEWZGYoxbz382rXMfDRTNPFBcnqgQj.jpg', 17, '2023-11-12 22:54:42'),
(53, '599a28ce-5964-45b6-8808-c46194001371', 'public/uploads/images/product/detail/599a28ce-5964-45b6-8808-c46194001371-5OG6Mv7Cg4QbKlf3B01zwmno8YDEaUHer2htRcNXSZjAPuqsdJ9VkiLWTxDyF.png', 'public/uploads/images/product/detail/thumb/599a28ce-5964-45b6-8808-c46194001371-SHDG5lgVN1wiTRuLhJ2zDX8oa9YmyBvEQs4f3e6jqxUW0CrPknZOFAtb7dMcK.png', 19, '2024-07-12 17:24:52'),
(54, '90c42cec-b0a5-4fa7-99eb-6812acd43d73', 'public/uploads/images/product/detail/90c42cec-b0a5-4fa7-99eb-6812acd43d73-35AS6vM8jnP1xBdotUHQhqL9mgcR0fDGaWwXliVybD7zreOFZ2YCuk4sJTNKE.png', 'public/uploads/images/product/detail/thumb/90c42cec-b0a5-4fa7-99eb-6812acd43d73-ydHxL5cWaDPt9JRlnOX7b6ogV2UDu01hMZENSjYrFGsQv3mf8w4ACzTKBikeq.png', 20, '2024-07-12 17:28:18'),
(55, 'e4750772-ba6d-4d40-965f-8ddfda1cbe48', 'public/uploads/images/product/detail/e4750772-ba6d-4d40-965f-8ddfda1cbe48-CfdajKFwY1RU6D4vxVtyNnzcru7DiJmH9Z3GLSgl28hEXbPAT0e5oQskWqMBO.png', 'public/uploads/images/product/detail/thumb/e4750772-ba6d-4d40-965f-8ddfda1cbe48-xGtMfbiCXLjAUFKRzdY3VHnDo5Eq8WDeO29w70JQ4kumSlcBvNTsg16arZPyh.png', 21, '2024-07-12 17:30:19'),
(56, '37e56ba6-ac83-41c6-b1c3-28f59c0fdc8c', 'public/uploads/images/product/detail/37e56ba6-ac83-41c6-b1c3-28f59c0fdc8c-8JBcsnbWetP1v57mwQfENlDazXk3xYK2SdDgFuyMUiC9Ah4GZ6OLTVH0jrqRo.png', 'public/uploads/images/product/detail/thumb/37e56ba6-ac83-41c6-b1c3-28f59c0fdc8c-CJgUrP3Y5Dds8OlkD19VuanGLmbHTqofRSievME2jXwQthFxzWN70KB4AyZ6c.png', 22, '2024-07-12 17:33:00'),
(57, 'a6d61399-96a1-48b4-ac47-b18db899df83', 'public/uploads/images/product/detail/a6d61399-96a1-48b4-ac47-b18db899df83-fB0i1lCNjAkU9GTPwzcuvMX3trZSh6JxnD45ObYV7geDqoL8Ey2KdFsWmQaRH.png', 'public/uploads/images/product/detail/thumb/a6d61399-96a1-48b4-ac47-b18db899df83-V3TbNZm6Dd49Ost5KYSWRc7lJrqhA1CFwP2MHvUGkeBnzLEuoQXa8Dgyif0jx.png', 23, '2024-07-12 18:27:52'),
(58, '5a90bdb4-9bc7-474e-a61c-1e5a27a6f644', 'public/uploads/images/product/detail/5a90bdb4-9bc7-474e-a61c-1e5a27a6f644-vKZhG4dOWj5Qaf0icmDMAqzBD2XtbVoHneE3uU9gT1wRPryJYFsC68Nkx7lSL.png', 'public/uploads/images/product/detail/thumb/5a90bdb4-9bc7-474e-a61c-1e5a27a6f644-FVRj2AkgKvW3DdlNOtza45nXCemYx9JcG7yHoQDULbhBifwMETSs0P186rquZ.png', 25, '2024-07-12 18:33:13'),
(59, 'f3889dec-2c5c-474a-aee5-ae61ce39b20e', 'public/uploads/images/product/detail/f3889dec-2c5c-474a-aee5-ae61ce39b20e-DcoSml6xk5hTFu2wYWA9X3CBVOzt17MgydaRnZPUJqivef4LKsQDrHbj0NE8G.png', 'public/uploads/images/product/detail/thumb/f3889dec-2c5c-474a-aee5-ae61ce39b20e-TBs13D7vDrRUqmKgkyW0QXCfdi8LFuJMzSZnNAeH5Pho9bG62OclEwjYxaV4t.png', 26, '2024-07-12 18:35:56'),
(60, '58239169-af1e-4b53-9f28-9b3db4afcbad', 'public/uploads/images/product/detail/58239169-af1e-4b53-9f28-9b3db4afcbad-Bo3MYm4nKars1ZDR6FHGAfiOtuwxV9TEJXglSNPD72yW5d0QjLeCvcbUzhqk8.png', 'public/uploads/images/product/detail/thumb/58239169-af1e-4b53-9f28-9b3db4afcbad-7hvNyY0n9t2r34AqRJmcHaDEVxXedwf8MKol1OsGCkUgWLTjPiZFDbQS5Bzu6.png', 27, '2024-07-12 18:36:51'),
(61, '7cedfc4f-bca3-4360-9565-b3b182c22393', 'public/uploads/images/product/detail/7cedfc4f-bca3-4360-9565-b3b182c22393-uY3ltTc1fG84BWgwPbr56jSNQZkm0CRLqh7DvO9sDndeFAVHKUEXMi2azyJox.png', 'public/uploads/images/product/detail/thumb/7cedfc4f-bca3-4360-9565-b3b182c22393-X6bJUOn4P7oajgN31VCWMDArzmuSYL2ETtGQsDxw9vKchRHFlyZqeik5Bd0f8.png', 27, '2024-07-12 18:36:51'),
(62, '416ea689-c36d-4e45-9881-1659b9f388c1', 'public/uploads/images/product/detail/416ea689-c36d-4e45-9881-1659b9f388c1-a2lmwrWbAfenY3VCD7TUMZ6qSdiD5NvgGoxQ0O8BLtuRK4sHXF1PJ9Eyzcjkh.png', 'public/uploads/images/product/detail/thumb/416ea689-c36d-4e45-9881-1659b9f388c1-NEhgXbACac1lmW4kn8sV2LYOZTURwMjD7xqPueovB9FD06QyHfriJdS5Kzt3G.png', 28, '2024-07-12 18:37:35'),
(63, '861652b8-1aaf-4275-9057-9d967c3a0844', 'public/uploads/images/product/detail/861652b8-1aaf-4275-9057-9d967c3a0844-rBZCebtcKkoSqWNsX98yuTz64AODvPxw0REa5gDiMUnhl1JmjL2GYHfV73QFd.png', 'public/uploads/images/product/detail/thumb/861652b8-1aaf-4275-9057-9d967c3a0844-9rzXENyAKMu7QODewf3UHvRjD48TWcFibhl5dsoqxZnSVJgGaBmLC2tPY1k60.png', 29, '2024-07-12 18:38:49'),
(64, 'c116f6df-20c9-4789-8331-d9f66e476d67', 'public/uploads/images/product/detail/c116f6df-20c9-4789-8331-d9f66e476d67-T3xHfnF0qz2kELDP9CWKV7vGtJ8QhbSRmUjuBerdyDYZcwM6NO45a1iloXgsA.png', 'public/uploads/images/product/detail/thumb/c116f6df-20c9-4789-8331-d9f66e476d67-FT1a2gDoViMuWDnLmArvbNt6XlYH3OByhfUj70qQRxk5ZJ9w4PCeSEd8cKszG.png', 30, '2024-07-12 18:40:36'),
(65, 'bf0b571b-d35a-41ad-8350-85b786d8b652', 'public/uploads/images/product/detail/bf0b571b-d35a-41ad-8350-85b786d8b652-AanWquYFSyTZNfL7sXhOgB5DHx80diEQb9K4DVzreMwt1vJGUjCkRl3cmoP26.png', 'public/uploads/images/product/detail/thumb/bf0b571b-d35a-41ad-8350-85b786d8b652-Qvjce1NTSPVnDfCzFOEsUaiKR4u2GdX0LtAm9HxrJD5687lyWZwgqMbkY3hoB.png', 31, '2024-07-12 18:41:24'),
(66, '20548abb-246c-4986-b323-4f6e7608a352', 'public/uploads/images/product/detail/20548abb-246c-4986-b323-4f6e7608a352-Lb6fqDEhDPAOUTaZWHsKlVCX47rgNk5oGY1u2ndw8iy3RS9vMFQmBJjxe0tcz.png', 'public/uploads/images/product/detail/thumb/20548abb-246c-4986-b323-4f6e7608a352-cL6TFdbPftnArqE5CmuyJhaDGS3jZxWwQesi8U72l9V0DN4OYHKMvoB1zRXgk.png', 34, '2024-07-12 18:43:51'),
(67, '3f4d30dc-d133-4ae4-9af9-b7d2b4af2ce6', 'public/uploads/images/product/detail/3f4d30dc-d133-4ae4-9af9-b7d2b4af2ce6-oWTCtrDvz8EaucHfPsKDYw3N1QOXGUbLSlZ967ji5hxF4MygRenJq0dBmVk2A.png', 'public/uploads/images/product/detail/thumb/3f4d30dc-d133-4ae4-9af9-b7d2b4af2ce6-Ub3MHho2im7JWnjPTBf4FZt6GcVgvqKOR1dCsaxeuYDN5kD9rl8wEA0zSyXLQ.png', 35, '2024-07-12 18:46:13'),
(68, '6d56085b-7130-4571-9886-4368eebb96a9', 'public/uploads/images/product/detail/6d56085b-7130-4571-9886-4368eebb96a9-Ji5bSGs1gEhkQldZaOj9ceDftnHWL7Y6FNyBruADvRM0VKxPXUm2C8z4wq3To.png', 'public/uploads/images/product/detail/thumb/6d56085b-7130-4571-9886-4368eebb96a9-GzEDqoACeNlr82KhH97P5yM63k4sWTcOFJdLDnx1ZXS0wVvfUatjBRguYibQm.png', 36, '2024-07-12 18:47:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cateID` int(11) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL,
  `contents` longtext COLLATE utf8_unicode_ci NOT NULL,
  `properties` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `slug`, `cateID`, `price`, `image`, `thumb`, `publish`, `contents`, `properties`, `created_at`, `updated_at`) VALUES
(19, 'Áo Thể Thao Trắng', 'ao-the-thao-trang', 1, 280000, 'public/uploads/images/product/669105069ab0a-qW3miKeFUoRS2JtDTyZdrsHvg90bl7x8XYcChwGkn5zfOaP1BEQjuV64MLNAD.png', 'public/uploads/images/product/thumb/669105069ab0a-KnNob4TDgHD6auAMBmfCryRj0GU1O79X3zxsdQLcYFZlS85kqVWwtveJh2EiP.png', 1, '<p>&Aacute;o thể thao tập gym m&agrave;u đỏ l&agrave; một lựa chọn ho&agrave;n hảo cho những ai y&ecirc;u th&iacute;ch phong c&aacute;ch năng động v&agrave; c&aacute; t&iacute;nh. Với chất liệu vải thấm h&uacute;t mồ h&ocirc;i tốt, &aacute;o thể thao gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i trong suốt buổi tập luyện. M&agrave;u đỏ tươi s&aacute;ng kh&ocirc;ng chỉ nổi bật m&agrave; c&ograve;n gi&uacute;p bạn tr&ocirc;ng khỏe khoắn v&agrave; tr&agrave;n đầy năng lượng.</p>\r\n\r\n<p>Thiết kế &aacute;o thể thao tập gym thường ch&uacute; trọng đến sự linh hoạt v&agrave; thoải m&aacute;i. Với kiểu d&aacute;ng &ocirc;m s&aacute;t cơ thể, &aacute;o gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng v&agrave; hỗ trợ tốt cho c&aacute;c hoạt động thể thao. Đường may chắc chắn v&agrave; chi tiết ho&agrave;n thiện tinh tế gi&uacute;p &aacute;o bền bỉ v&agrave; đẹp mắt qua thời gian.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sự lựa chọn l&yacute; tưởng cho c&aacute;c buổi tập gym, chạy bộ, yoga hay c&aacute;c hoạt động thể thao kh&aacute;c, gi&uacute;p bạn lu&ocirc;n tự tin v&agrave; thoải m&aacute;i trong từng động t&aacute;c.</p>\r\n', '[{\"name\":\"H\\u1ea3ng sx\",\"value\":\"Adidas\"},{\"name\":\"Xu\\u1ea5t x\\u1ee9\",\"value\":\"Vi\\u1ec7t Nam\"},{\"name\":\"Ch\\u1ea5t Li\\u1ec7u\",\"value\":\"V\\u1ea3i Cotton\"},{\"name\":\"\\u0110\\u1ed9 Tu\\u1ed5i\",\"value\":\"12 Tu\\u1ed5i Tr\\u1edf L\\u00ean\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"G\\u1ecdn nh\\u1eb9\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 17:27:18', '2024-07-12'),
(20, 'Áo Thể Thao Gym Đỏ', 'ao-the-thao-gym-do', 1, 280000, 'public/uploads/images/product/669105809e664-cbrytJ69lDBYKRz8NgqDShe0nMiOjdQfZsHPuxUmL53FWCkEGwX741aVT2vAo.png', 'public/uploads/images/product/thumb/669105809e664-NBO8uDbSVmxCz6QPX0ekvf5sl9aAY7UTciJEHh2K4nyMWRGo1tjq3DdFwrgZL.png', 1, '<p>&Aacute;o thể thao tập gym m&agrave;u đỏ l&agrave; một lựa chọn ho&agrave;n hảo cho những ai y&ecirc;u th&iacute;ch phong c&aacute;ch năng động v&agrave; c&aacute; t&iacute;nh. Với chất liệu vải thấm h&uacute;t mồ h&ocirc;i tốt, &aacute;o thể thao gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i trong suốt buổi tập luyện. M&agrave;u đỏ tươi s&aacute;ng kh&ocirc;ng chỉ nổi bật m&agrave; c&ograve;n gi&uacute;p bạn tr&ocirc;ng khỏe khoắn v&agrave; tr&agrave;n đầy năng lượng.</p>\r\n\r\n<p>Thiết kế &aacute;o thể thao tập gym thường ch&uacute; trọng đến sự linh hoạt v&agrave; thoải m&aacute;i. Với kiểu d&aacute;ng &ocirc;m s&aacute;t cơ thể, &aacute;o gi&uacute;p t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng v&agrave; hỗ trợ tốt cho c&aacute;c hoạt động thể thao. Đường may chắc chắn v&agrave; chi tiết ho&agrave;n thiện tinh tế gi&uacute;p &aacute;o bền bỉ v&agrave; đẹp mắt qua thời gian.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sự lựa chọn l&yacute; tưởng cho c&aacute;c buổi tập gym, chạy bộ, yoga hay c&aacute;c hoạt động thể thao kh&aacute;c, gi&uacute;p bạn lu&ocirc;n tự tin v&agrave; thoải m&aacute;i trong từng động t&aacute;c.</p>\r\n', '[{\"name\":\"Xu\\u1ea5t X\\u1ee9\",\"value\":\"Vi\\u1ec7t Nam\"},{\"name\":\"H\\u1ea3ng sx\",\"value\":\"Adidas\"},{\"name\":\"Ch\\u1ea5t Li\\u1ec7u\",\"value\":\"V\\u1ea3i Cotton\"},{\"name\":\"L\\u1ee9a Tu\\u1ed5i\",\"value\":\"Tr\\u1ebb trung\"},{\"name\":\"T\\u00ednh n\\u0103ng \\u0111\\u1eb7c bi\\u1ec7t\",\"value\":\"Tho\\u00e1n Kh\\u00ed\"},{\"name\":\"M\\u00e0u S\\u1eafc\",\"value\":\"\\u0110\\u1ecf\"}]', '2024-07-12 17:29:20', '2024-07-12'),
(21, 'Quần Thể Thao', 'quan-the-thao-6691063bd1084', 2, 200000, 'public/uploads/images/product/6691063bce50b-cijrvmwbfD6sDxR2qWhHtg51NoG0SBVT78PdJ3Ak4nueLXYCQMZEyOFUlKa9z.png', 'public/uploads/images/product/thumb/6691063bce50b-8biTOqG3125gC6adxNvAMHJnQsLUw0DlW9BVzSFZkXY4cmjure7EPDyfoRKht.png', 1, '<p>Quần thể thao l&agrave; một loại trang phục được thiết kế đặc biệt để sử dụng trong c&aacute;c hoạt động thể thao v&agrave; thể dục. Ch&uacute;ng thường được l&agrave;m từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; v&agrave; h&uacute;t ẩm tốt như polyester, spandex, nylon hoặc cotton pha trộn, nhằm tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; linh hoạt cho người mặc trong qu&aacute; tr&igrave;nh vận động. Dưới đ&acirc;y l&agrave; một số điểm nổi bật về quần thể thao:</p>\r\n\r\n<p>1. **Chất liệu**: Quần thể thao thường được l&agrave;m từ c&aacute;c loại vải c&oacute; t&iacute;nh năng co gi&atilde;n v&agrave; tho&aacute;ng kh&iacute;, gi&uacute;p người mặc cảm thấy dễ chịu v&agrave; kh&ocirc;ng bị b&iacute; b&aacute;ch khi vận động. Một số loại vải c&ograve;n c&oacute; khả năng h&uacute;t ẩm v&agrave; kh&ocirc; nhanh, gi&uacute;p giữ cho cơ thể lu&ocirc;n kh&ocirc; r&aacute;o.</p>\r\n\r\n<p>2. **Thiết kế**: Quần thể thao c&oacute; nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc kh&aacute;c nhau, ph&ugrave; hợp với nhiều m&ocirc;n thể thao v&agrave; phong c&aacute;ch c&aacute; nh&acirc;n. Ch&uacute;ng c&oacute; thể c&oacute; d&acirc;y r&uacute;t, đai lưng co gi&atilde;n, t&uacute;i, v&agrave; c&aacute;c chi tiết phản quang để tăng t&iacute;nh an to&agrave;n khi tập luyện v&agrave;o buổi tối.</p>\r\n\r\n<p>3. **C&ocirc;ng nghệ**: Nhiều loại quần thể thao hiện nay được t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến như kh&aacute;ng khuẩn, chống tia UV, v&agrave; khả năng co gi&atilde;n 4 chiều, gi&uacute;p cải thiện hiệu suất tập luyện v&agrave; bảo vệ sức khỏe người mặc.</p>\r\n\r\n<p>4. **Sự đa dụng**: Quần thể thao kh&ocirc;ng chỉ d&agrave;nh cho c&aacute;c hoạt động thể thao m&agrave; c&ograve;n c&oacute; thể được sử dụng trong c&aacute;c hoạt động h&agrave;ng ng&agrave;y như đi dạo, mua sắm, hay thậm ch&iacute; l&agrave; l&agrave;m việc từ xa nhờ v&agrave;o t&iacute;nh năng thoải m&aacute;i v&agrave; thời trang của ch&uacute;ng.</p>\r\n\r\n<p>5. **Thương hiệu**: Nhiều thương hiệu nổi tiếng như Nike, Adidas, Puma, Under Armour, v&agrave; Lululemon đều c&oacute; c&aacute;c d&ograve;ng sản phẩm quần thể thao chất lượng cao, đ&aacute;p ứng nhu cầu đa dạng của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Quần thể thao l&agrave; một phần quan trọng trong tủ đồ của bất kỳ ai y&ecirc;u th&iacute;ch vận động v&agrave; thể dục, gi&uacute;p cải thiện hiệu suất tập luyện v&agrave; mang lại sự thoải m&aacute;i tối đa.</p>\r\n', '[{\"name\":\"H\\u1ea3ng sx\",\"value\":\"Adidas\"},{\"name\":\"Ch\\u1ea5t Li\\u1ec7u\",\"value\":\"V\\u1ea3i Cotton\"},{\"name\":\"Xu\\u1ea5t X\\u1ee9 \",\"value\":\"Vi\\u1ec7t Nam\"},{\"name\":\"D\\u1ecbp\",\"value\":\"Th\\u1ec3 Thao\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"G\\u1ecdn nh\\u1eb9\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 17:32:27', '2024-07-12'),
(22, 'Quần Bóng Rổ', 'quan-bong-ro', 2, 200000, 'public/uploads/images/product/6691068e04f30-56ui0ZPkJA9elDWOBjthUK2QXgDmG1nvRSwxcaT8LVzyMq4odCbEfYrFNHs37.png', 'public/uploads/images/product/thumb/6691068e04f30-8MzZKbsNYldDhHe69DkaOtgxryq3uXWGcmJVLiCSA0ToQUnwjFv7251E4PBRf.png', 1, '<p>Quần thể thao l&agrave; một loại trang phục được thiết kế đặc biệt để sử dụng trong c&aacute;c hoạt động thể thao v&agrave; thể dục. Ch&uacute;ng thường được l&agrave;m từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; v&agrave; h&uacute;t ẩm tốt như polyester, spandex, nylon hoặc cotton pha trộn, nhằm tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; linh hoạt cho người mặc trong qu&aacute; tr&igrave;nh vận động. Dưới đ&acirc;y l&agrave; một số điểm nổi bật về quần thể thao:</p>\r\n\r\n<p>1. **Chất liệu**: Quần thể thao thường được l&agrave;m từ c&aacute;c loại vải c&oacute; t&iacute;nh năng co gi&atilde;n v&agrave; tho&aacute;ng kh&iacute;, gi&uacute;p người mặc cảm thấy dễ chịu v&agrave; kh&ocirc;ng bị b&iacute; b&aacute;ch khi vận động. Một số loại vải c&ograve;n c&oacute; khả năng h&uacute;t ẩm v&agrave; kh&ocirc; nhanh, gi&uacute;p giữ cho cơ thể lu&ocirc;n kh&ocirc; r&aacute;o.</p>\r\n\r\n<p>2. **Thiết kế**: Quần thể thao c&oacute; nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc kh&aacute;c nhau, ph&ugrave; hợp với nhiều m&ocirc;n thể thao v&agrave; phong c&aacute;ch c&aacute; nh&acirc;n. Ch&uacute;ng c&oacute; thể c&oacute; d&acirc;y r&uacute;t, đai lưng co gi&atilde;n, t&uacute;i, v&agrave; c&aacute;c chi tiết phản quang để tăng t&iacute;nh an to&agrave;n khi tập luyện v&agrave;o buổi tối.</p>\r\n\r\n<p>3. **C&ocirc;ng nghệ**: Nhiều loại quần thể thao hiện nay được t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến như kh&aacute;ng khuẩn, chống tia UV, v&agrave; khả năng co gi&atilde;n 4 chiều, gi&uacute;p cải thiện hiệu suất tập luyện v&agrave; bảo vệ sức khỏe người mặc.</p>\r\n\r\n<p>4. **Sự đa dụng**: Quần thể thao kh&ocirc;ng chỉ d&agrave;nh cho c&aacute;c hoạt động thể thao m&agrave; c&ograve;n c&oacute; thể được sử dụng trong c&aacute;c hoạt động h&agrave;ng ng&agrave;y như đi dạo, mua sắm, hay thậm ch&iacute; l&agrave; l&agrave;m việc từ xa nhờ v&agrave;o t&iacute;nh năng thoải m&aacute;i v&agrave; thời trang của ch&uacute;ng.</p>\r\n\r\n<p>5. **Thương hiệu**: Nhiều thương hiệu nổi tiếng như Nike, Adidas, Puma, Under Armour, v&agrave; Lululemon đều c&oacute; c&aacute;c d&ograve;ng sản phẩm quần thể thao chất lượng cao, đ&aacute;p ứng nhu cầu đa dạng của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Quần thể thao l&agrave; một phần quan trọng trong tủ đồ của bất kỳ ai y&ecirc;u th&iacute;ch vận động v&agrave; thể dục, gi&uacute;p cải thiện hiệu suất tập luyện v&agrave; mang lại sự thoải m&aacute;i tối đa.</p>\r\n', '[{\"name\":\"\\u0110\\u1eb7t t\\u00ednh\",\"value\":\"Tho\\u00e1n M\\u00e1t\"},{\"name\":\"Ch\\u1ea5t Li\\u1ec7u\",\"value\":\"Cotton\"},{\"name\":\"Xu\\u1ea5t X\\u1ee9\",\"value\":\"Vi\\u1ec7t Nam\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"G\\u1ecdn nh\\u1eb9\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 17:33:50', '2024-07-12'),
(23, 'Nón Đá Bóng', 'non-da-bong', 3, 150000, 'public/uploads/images/product/669113f4ba415-9lJqNCDEzniA6R0uSG1dr8cW4BOexgw5kZMUjfsPHohv7XFDLyYaK3mQbtTV2.png', 'public/uploads/images/product/thumb/669113f4ba415-m9T7nGDyoxqf4aj0dZghAFRDkPHNuS8isLwKv2zcXCUY361beMOVQ5BErJWtl.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Che n\\u1eafng, gi\\u1eef \\u1ea5m, trang tr\\u00ed\"}]', '2024-07-12 18:31:00', '0000-00-00'),
(24, 'Nón Bóng Rổ', 'non-bong-ro', 3, 150000, 'public/uploads/images/product/66911460d8e69-35LDhvUutRQrWTYKfAoFkyPzq6ZOm4e7C8l1aswjSnd9MBbNHXcEi2V0GgDxJ.png', 'public/uploads/images/product/thumb/66911460d8e69-5o7KXDaJnwZSrTubVxNeL2RH3MOqCiQ8B0EjmtkhDgldzfyAP9YU1vcGF64sW.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Che n\\u1eafng, gi\\u1eef \\u1ea5m, trang tr\\u00ed\"}]', '2024-07-12 18:32:48', '0000-00-00'),
(25, 'Nón Cầu Long', 'non-cau-long', 3, 150000, 'public/uploads/images/product/6691148eb5f10-UiRS0LamX54N6ZKEtjnsvQrMhxC1PguFkT3qVJH82bAcGoBWDY9ODlfwzyed7.png', 'public/uploads/images/product/thumb/6691148eb5f10-5fgBERlDHkn29MLWvsFud4XYU3jrbyO7eDc1ZV08hJtoKaTSG6CxNqPzQmiwA.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Che n\\u1eafng, gi\\u1eef \\u1ea5m, trang tr\\u00ed\"}]', '2024-07-12 18:33:34', '0000-00-00'),
(26, 'Nón Cầu Long', 'non-cau-long-66911537ed3da', 3, 150000, 'public/uploads/images/product/66911537e9e35-DHrLbuOoiFVQ5mXfSzxZv12EWdY8AkM9B6gy3RaTqeDNl40thjwnPGJCscKU7.png', 'public/uploads/images/product/thumb/66911537e9e35-HgAUOYWdMJeTFNaBhxvkDGPfXjzuZrimyRlqQDbE98L51VSc76Kt0C2on4sw3.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Che n\\u1eafng, gi\\u1eef \\u1ea5m, trang tr\\u00ed\"}]', '2024-07-12 18:36:23', '0000-00-00'),
(27, 'Nón Bóng Rổ', 'non-bong-ro-66911569361e1', 3, 150000, 'public/uploads/images/product/6691156932958-m4U3e6NY8Q5WFDLHsGk01XwDacbJolj7VPuZTngEyhOArCMSv9dBxKqRiftz2.png', 'public/uploads/images/product/thumb/6691156932958-aCLQiUf5YlcMTe8v2rtbA07JdnV9OykxH3WFoXmZDh61PjGwuBsSKRNDgzEq4.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 18:37:13', '0000-00-00'),
(28, 'Nón Đá Bóng', 'non-da-bong-66911593d8241', 3, 150000, 'public/uploads/images/product/66911593cd138-YvGW0Aa7t2XSuRj8LMJHNBwUTqh45Fc9KsVy6C3rDzZfOPedmQDlik1gEbnxo.png', 'public/uploads/images/product/thumb/66911593cd138-arRVcSijlFGmgN5oDyYuhzKtCbUXPE2ZLkBx7MeJqDvsAn63QHWO10T9df84w.png', 1, '<p>N&oacute;n thể thao l&agrave; phụ kiện phổ biến d&agrave;nh cho c&aacute;c hoạt động thể thao v&agrave; d&atilde; ngoại. Ch&uacute;ng được thiết kế để bảo vệ đầu khỏi t&aacute;c động của nắng, mưa, v&agrave; gi&oacute;, đồng thời gi&uacute;p thấm h&uacute;t mồ h&ocirc;i hiệu quả. N&oacute;n thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, tho&aacute;ng kh&iacute; như polyester, cotton, hoặc vải lưới, đảm bảo sự thoải m&aacute;i v&agrave; tiện lợi cho người sử dụng. Ngo&agrave;i ra, n&oacute;n thể thao c&ograve;n c&oacute; thiết kế thời trang, đa dạng về m&agrave;u sắc v&agrave; kiểu d&aacute;ng, ph&ugrave; hợp với nhiều phong c&aacute;ch v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"N\\u00f3n l\\u01b0\\u1ee1i trai\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"M\\u0169 c\\u00f3 v\\u00e0nh, m\\u0169 kh\\u00f4ng v\\u00e0nh, c\\u00f3 n\\u01a1, c\\u00f3 h\\u1ecda ti\\u1ebft, c\\u00f3 ch\\u1eef th\\u00eau, in \\u1ea5n.\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Che n\\u1eafng, gi\\u1eef \\u1ea5m, trang tr\\u00ed\"}]', '2024-07-12 18:37:55', '0000-00-00'),
(29, 'Quần Bóng Đá', 'quan-bong-da', 2, 200000, 'public/uploads/images/product/6691161e33161-Vu1LnlQd5J4r6Eb9iOk0UWyZaSHCBwToDhA2zg7jKcFsMPtNvYmDRG3fe8qxX.png', 'public/uploads/images/product/thumb/6691161e33161-vT9uch5znyZ20DLUkJaKCoglNi7eODjQPHMs4dYtmWbVEqFxA6S8RwX1Br3fG.png', 1, '<p>Quần thể thao l&agrave; trang phục chuy&ecirc;n dụng cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng được thiết kế từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p người mặc cảm thấy thoải m&aacute;i v&agrave; dễ d&agrave;ng di chuyển. Quần thể thao thường c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o trong suốt qu&aacute; tr&igrave;nh luyện tập. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, quần thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu về chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; khỏe khoắn.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i denim, cotton, linen, polyester, wool\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"qu\\u1ea7n th\\u1ec3 thao, qu\\u1ea7n short\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en, Xanh\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u1ea1p cao, c\\u1ea1p th\\u1ea5p, c\\u1ea1p v\\u1eeba, d\\u00e1ng \\u00f4m, d\\u00e1ng r\\u1ed9ng\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"T\\u00fai, kh\\u00f3a k\\u00e9o, c\\u00fac, h\\u1ecda ti\\u1ebft th\\u00eau, in \\u1ea5n\"}]', '2024-07-12 18:40:14', '0000-00-00'),
(30, 'Quần Bóng Đá', 'quan-bong-da-6691164f0ed29', 2, 200000, 'public/uploads/images/product/6691164f0b7dd-fNGiErbcLAMqlTYV4oJyX7jk8PuUds3hF1OveBw5D0a2xtWngKDRHZ6mz9QCS.png', 'public/uploads/images/product/thumb/6691164f0b7dd-0zoxudCDjb6qV1mnR9MXSPFyaJlBZtWseYNGQK82HvL35wrEifcD4h7gUTAOk.png', 1, '<p>Quần thể thao l&agrave; trang phục chuy&ecirc;n dụng cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng được thiết kế từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p người mặc cảm thấy thoải m&aacute;i v&agrave; dễ d&agrave;ng di chuyển. Quần thể thao thường c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o trong suốt qu&aacute; tr&igrave;nh luyện tập. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, quần thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu về chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; khỏe khoắn.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i denim, cotton, linen, polyester, wool\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"qu\\u1ea7n th\\u1ec3 thao, qu\\u1ea7n short\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110\\u1ecf\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u1ea1p cao, c\\u1ea1p th\\u1ea5p, c\\u1ea1p v\\u1eeba, d\\u00e1ng \\u00f4m, d\\u00e1ng r\\u1ed9ng\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"T\\u00fai, kh\\u00f3a k\\u00e9o, c\\u00fac, h\\u1ecda ti\\u1ebft th\\u00eau, in \\u1ea5n\"}]', '2024-07-12 18:41:03', '0000-00-00'),
(31, 'Quần Bóng Rổ', 'quan-bong-ro-669116826d422', 2, 200000, 'public/uploads/images/product/669116826adaa-C2LVvljNn9h37fSYKkzbRDFUTe186toBDgJQMuHAcsXdmEyri40xGOq5awPZW.png', 'public/uploads/images/product/thumb/669116826adaa-OVtPThsvlcok72a8SiXMmA9gZECDrGYnUeD10KwufxLFyB4jNzJd5RHWQ36bq.png', 1, '<p>Quần thể thao l&agrave; trang phục chuy&ecirc;n dụng cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng được thiết kế từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p người mặc cảm thấy thoải m&aacute;i v&agrave; dễ d&agrave;ng di chuyển. Quần thể thao thường c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o trong suốt qu&aacute; tr&igrave;nh luyện tập. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, quần thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu về chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; khỏe khoắn.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, polyester\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"qu\\u1ea7n th\\u1ec3 thao, qu\\u1ea7n short\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en, Xanh\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u1ea1p cao, c\\u1ea1p th\\u1ea5p, c\\u1ea1p v\\u1eeba, d\\u00e1ng \\u00f4m, d\\u00e1ng r\\u1ed9ng\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"T\\u00fai, kh\\u00f3a k\\u00e9o, c\\u00fac, h\\u1ecda ti\\u1ebft th\\u00eau, in \\u1ea5n\"}]', '2024-07-12 18:41:54', '0000-00-00'),
(32, 'Quần Cầu Long', 'quan-cau-long', 2, 200000, 'public/uploads/images/product/669116b1efaa4-6MxrRPKQDhd0XSzCm9Lw5ao1kY2nuNqTBscAEHF8ylZJi47gDGetUOVbWf3jv.png', 'public/uploads/images/product/thumb/669116b1efaa4-Munmf7PSWQ9JVaK6HcirYCdAjxtU2wRDLyvZh8E1bGF5qN0TsOBXo3Dekl4zg.png', 1, '<p>Quần thể thao l&agrave; trang phục chuy&ecirc;n dụng cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng được thiết kế từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p người mặc cảm thấy thoải m&aacute;i v&agrave; dễ d&agrave;ng di chuyển. Quần thể thao thường c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o trong suốt qu&aacute; tr&igrave;nh luyện tập. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, quần thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu về chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; khỏe khoắn.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i denim, cotton, linen, polyester, wool\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"qu\\u1ea7n th\\u1ec3 thao, qu\\u1ea7n short\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en, Xanh\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u1ea1p cao, c\\u1ea1p th\\u1ea5p, c\\u1ea1p v\\u1eeba, d\\u00e1ng \\u00f4m, d\\u00e1ng r\\u1ed9ng\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"T\\u00fai, kh\\u00f3a k\\u00e9o, c\\u00fac, h\\u1ecda ti\\u1ebft th\\u00eau, in \\u1ea5n\"}]', '2024-07-12 18:42:42', '0000-00-00'),
(33, 'Quần Cầu Long', 'quan-cau-long-669116e19c7d9', 2, 150000, 'public/uploads/images/product/669116e19926c-3VPyZD1FXc6dYzruwNCa5J7xlikjs0bnmBvW8SOfG9ReKLotHAgqUh4QDET2M.png', 'public/uploads/images/product/thumb/669116e19926c-5XUwuvaKD1iLFsAkQgztSORo2YW3xE047l9qDjnMfhydNCmr6HGPJbVcT8eZB.png', 1, '<p>Quần thể thao l&agrave; trang phục chuy&ecirc;n dụng cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng được thiết kế từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p người mặc cảm thấy thoải m&aacute;i v&agrave; dễ d&agrave;ng di chuyển. Quần thể thao thường c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p giữ cơ thể kh&ocirc; r&aacute;o trong suốt qu&aacute; tr&igrave;nh luyện tập. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, quần thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu về chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; khỏe khoắn.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i denim, cotton, linen, polyester, wool\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"qu\\u1ea7n th\\u1ec3 thao, qu\\u1ea7n short\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110en, Xanh\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"G\\u1ecdn nh\\u1eb9\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 18:43:29', '0000-00-00'),
(34, 'Áo Bóng Rổ', 'ao-bong-ro', 1, 250000, 'public/uploads/images/product/66911771cef9a-W8CfbV1lrRdEa75L6o9XvxhctiGSwjB0sO4yUzDqHeJNDAnTuFPg2mK3YMkZQ.png', 'public/uploads/images/product/thumb/66911771cef9a-6SLklM1YuC5VeOEhciZ8rym3U7KDHqtndBRjWfNgQb2s4FvDJXaozxATP0wG9.png', 1, '<p>&Aacute;o thể thao l&agrave; trang phục được thiết kế đặc biệt cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng thường được l&agrave;m từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p h&uacute;t ẩm v&agrave; giữ cơ thể kh&ocirc; r&aacute;o. &Aacute;o thể thao c&oacute; kiểu d&aacute;ng đa dạng, từ &aacute;o thun, &aacute;o ba lỗ đến &aacute;o d&agrave;i tay, ph&ugrave; hợp với nhiều m&ocirc;n thể thao kh&aacute;c nhau. Ngo&agrave;i ra, &aacute;o thể thao c&ograve;n mang t&iacute;nh thời trang với nhiều m&agrave;u sắc v&agrave; họa tiết, tạo n&ecirc;n vẻ ngo&agrave;i năng động v&agrave; khỏe khoắn cho người mặc.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, linen, polyester, wool, denim, silk\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"\\u00c1o s\\u01a1 mi, \\u00e1o thun\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"C\\u00e1c m\\u00e0u \\u0111\\u01a1n s\\u1eafc, m\\u00e0u s\\u1eafc ph\\u1ed1i h\\u1ee3p, hoa v\\u0103n, h\\u1ecda ti\\u1ebft\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u00f3 c\\u1ed5, kh\\u00f4ng c\\u00f3 c\\u1ed5, c\\u1ed5 tr\\u1ee5, c\\u1ed5 ch\\u1eef V, ki\\u1ec3u d\\u00e1ng slim fit, regular fit\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"C\\u00f3 c\\u1ed5, kh\\u00f4ng c\\u00f3 c\\u1ed5, c\\u1ed5 tr\\u1ee5, c\\u1ed5 ch\\u1eef V, ki\\u1ec3u d\\u00e1ng slim fit, regular fit\"}]', '2024-07-12 18:45:53', '0000-00-00'),
(35, 'Áo Bóng Rổ', 'ao-bong-ro-669117acc08b8', 1, 250000, 'public/uploads/images/product/669117acbd0f5-lcL54YrE8uUwQzR3WseyhmxATZSOC0voJNdXbDfPj9DtF6KaHingV2kM7q1BG.png', 'public/uploads/images/product/thumb/669117acbd0f5-h2OVysedzqBJkUgLPCc8XKDfYWQanSv7Miu3oTjZFRE9tAr51w6GH4bDN0lxm.png', 1, '<p>&Aacute;o thể thao l&agrave; trang phục được thiết kế đặc biệt cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng thường được l&agrave;m từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p h&uacute;t ẩm v&agrave; giữ cơ thể kh&ocirc; r&aacute;o. &Aacute;o thể thao c&oacute; kiểu d&aacute;ng đa dạng, từ &aacute;o thun, &aacute;o ba lỗ đến &aacute;o d&agrave;i tay, ph&ugrave; hợp với nhiều m&ocirc;n thể thao kh&aacute;c nhau. Ngo&agrave;i ra, &aacute;o thể thao c&ograve;n mang t&iacute;nh thời trang với nhiều m&agrave;u sắc v&agrave; họa tiết, tạo n&ecirc;n vẻ ngo&agrave;i năng động v&agrave; khỏe khoắn cho người mặc.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, linen, polyester, wool, denim, silk\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"\\u00e1o thun\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"C\\u00e1c m\\u00e0u \\u0111\\u01a1n s\\u1eafc, m\\u00e0u s\\u1eafc ph\\u1ed1i h\\u1ee3p, hoa v\\u0103n, h\\u1ecda ti\\u1ebft\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u00f3 c\\u1ed5, kh\\u00f4ng c\\u00f3 c\\u1ed5, c\\u1ed5 tr\\u1ee5, c\\u1ed5 ch\\u1eef V, ki\\u1ec3u d\\u00e1ng slim fit, regular fit\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 18:46:52', '0000-00-00'),
(36, 'Áo Bóng Đá Tay Dài', 'ao-bong-da-tay-dai', 1, 250000, 'public/uploads/images/product/669117e6a3bc3-5m0nhqzTY6WDMlNDLuc4ZwX7bAaVtk2OosP98ediGK1fEFBxyvgCHrSQUJRj3.png', 'public/uploads/images/product/thumb/669117e6a3bc3-64L7rn9lkjm5bQSuMeUaNTcJty3EDVdHqsvYfG1ZxXOwFh2KioWPz0A8BRCDg.png', 1, '<p>&Aacute;o thể thao l&agrave; trang phục được thiết kế đặc biệt cho c&aacute;c hoạt động vận động v&agrave; thể dục thể thao. Ch&uacute;ng thường được l&agrave;m từ c&aacute;c chất liệu co gi&atilde;n, tho&aacute;ng kh&iacute; như polyester, spandex, hoặc cotton, gi&uacute;p h&uacute;t ẩm v&agrave; giữ cơ thể kh&ocirc; r&aacute;o. &Aacute;o thể thao c&oacute; kiểu d&aacute;ng đa dạng, từ &aacute;o thun, &aacute;o ba lỗ đến &aacute;o d&agrave;i tay, ph&ugrave; hợp với nhiều m&ocirc;n thể thao kh&aacute;c nhau. Ngo&agrave;i ra, &aacute;o thể thao c&ograve;n mang t&iacute;nh thời trang với nhiều m&agrave;u sắc v&agrave; họa tiết, tạo n&ecirc;n vẻ ngo&agrave;i năng động v&agrave; khỏe khoắn cho người mặc.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"V\\u1ea3i cotton, linen, polyester, wool, denim, silk\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"\\u00c1o D\\u00e0i Tay\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110\\u1ecf\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"C\\u00f3 c\\u1ed5, kh\\u00f4ng c\\u00f3 c\\u1ed5, c\\u1ed5 tr\\u1ee5, c\\u1ed5 ch\\u1eef V, ki\\u1ec3u d\\u00e1ng slim fit, regular fit\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 18:47:50', '2024-07-12'),
(37, 'Giày Thể Thao', 'giay-the-thao-66911a4c5d9e7', 4, 250000, 'public/uploads/images/product/66911a4c53f9f-DXzhVbiWfwJNdy7t9vLo0guKR1aZPsmxq4D2lOGAQrEF5cTk3eMj6HUCYSB8n.png', 'public/uploads/images/product/thumb/66911a4c53f9f-tdJl6yB9CVFkOAhsHv1MQuxncUTKZrfD5YPg8j3ERb72qLSeaiWG4Nwz0oDmX.png', 1, '<p>Gi&agrave;y thể thao l&agrave; phụ kiện kh&ocirc;ng thể thiếu cho c&aacute;c hoạt động vận động v&agrave; thể thao. Ch&uacute;ng được thiết kế để cung cấp sự hỗ trợ, thoải m&aacute;i v&agrave; bảo vệ cho đ&ocirc;i ch&acirc;n trong qu&aacute; tr&igrave;nh tập luyện v&agrave; thi đấu. Gi&agrave;y thể thao thường l&agrave;m từ c&aacute;c chất liệu nhẹ, bền bỉ v&agrave; tho&aacute;ng kh&iacute; như da, vải lưới, v&agrave; cao su, gi&uacute;p giảm thiểu chấn thương v&agrave; tăng cường hiệu suất vận động. Đế gi&agrave;y c&oacute; độ đ&agrave;n hồi v&agrave; độ b&aacute;m tốt, đảm bảo sự ổn định v&agrave; an to&agrave;n tr&ecirc;n nhiều loại bề mặt. Với nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc đa dạng, gi&agrave;y thể thao kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu chức năng m&agrave; c&ograve;n mang lại phong c&aacute;ch thời trang năng động v&agrave; hiện đại.</p>\r\n', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u\",\"value\":\"Da, V\\u1ea3i Cotton\"},{\"name\":\"Ki\\u1ec3u d\\u00e1ng\",\"value\":\"Gi\\u00e0y th\\u1ec3 thao\"},{\"name\":\"M\\u00e0u s\\u1eafc\",\"value\":\"\\u0110\\u1ecf, \\u0110en\"},{\"name\":\"K\\u00edch c\\u1ee1\",\"value\":\"K\\u00edch c\\u1ee1 v\\u1eeba, nh\\u1ecf, l\\u1edbn, ho\\u1eb7c \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c b\\u1eb1ng d\\u00e2y k\\u00e9o ho\\u1eb7c c\\u00fac.\"},{\"name\":\"Thi\\u1ebft k\\u1ebf\",\"value\":\"\\u0110\\u1ebf b\\u00e1m, \\u0111\\u1ebf ch\\u1ed1ng tr\\u01a1n tr\\u01b0\\u1ee3t\"},{\"name\":\"Chi ti\\u1ebft\",\"value\":\"Tho\\u00e1n M\\u00e1t\"}]', '2024-07-12 18:58:04', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slug`
--

CREATE TABLE `tbl_slug` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slug`
--

INSERT INTO `tbl_slug` (`id`, `name`, `type`) VALUES
(1, 'ao-the-thao', 1),
(8, 'quan-the-thao', 1),
(20, 'xiaomi', 1),
(22, 'ao-the-thao-trang', 2),
(23, 'ao-the-thao-gym-do', 2),
(24, 'quan-the-thao-6691063bd1084', 2),
(25, 'quan-bong-ro', 2),
(26, 'non-da-bong', 2),
(27, 'non-bong-ro', 2),
(28, 'non-cau-long', 2),
(29, 'non-cau-long-66911537ed3da', 2),
(30, 'non-bong-ro-66911569361e1', 2),
(31, 'non-da-bong-66911593d8241', 2),
(32, 'quan-bong-da', 2),
(33, 'quan-bong-da-6691164f0ed29', 2),
(34, 'quan-bong-ro-669116826d422', 2),
(35, 'quan-cau-long', 2),
(36, 'quan-cau-long-669116e19c7d9', 2),
(37, 'ao-bong-ro', 2),
(38, 'ao-bong-ro-669117acc08b8', 2),
(39, 'ao-bong-da-tay-dai', 2),
(40, 'giay-the-thao', 1),
(41, 'giay-the-thao-66911a4c5d9e7', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slug`
--
ALTER TABLE `tbl_slug`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_slug`
--
ALTER TABLE `tbl_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
