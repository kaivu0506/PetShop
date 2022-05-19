-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2022 lúc 01:18 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Kai', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(2, 'Mod đz', 'mod@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Pet Shop', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Thức ăn cho mèo', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Vệ sinh cho mèo', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Phụ kiện cho mèo và đồ trang trí', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'Hạt bình dân ', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Hạt cao cấp', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Pate, xúc xích, súp thưởng', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Thức phẩm bổ sung và thuốc', '', 7, 4, '2017-04-22 09:09:14'),
(15, 'Cát vệ sinh bình dân', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Cát vệ sinh cao cấp', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Chậu vệ sinh, xẻng xúc cát', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'Sữa tắm cho mèo', '', 8, 4, '2017-04-22 09:23:57'),
(19, 'Đồ chơi cho mèo', '', 9, 1, '2017-04-22 09:25:55'),
(20, 'Quần áo thời trang cho mèo, vòng cổ', '', 9, 2, '2017-04-22 09:26:21'),
(21, 'Đồ trang trí', '', 9, 4, '2017-04-22 09:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0),
(16, 13, 70, 1, '120000.00', 0),
(17, 14, 72, 1, '95000.00', 0),
(18, 15, 66, 1, '25000.00', 0),
(19, 15, 23, 1, '50000.00', 0),
(20, 16, 16, 1, '30000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(1, 16, 'Cát cao cấp World’s Best Cat Litter 8L', '<p>Tr&ecirc;n thị trường thế giới th&igrave; World&rsquo;s Best được đ&aacute;nh gi&aacute; l&agrave; sản phẩm c&aacute;t m&egrave;o cho chất lượng vượt trội &amp; tốt nhất.&nbsp; Bạn c&oacute; thể kiểm chứng điều n&agrave;y khi t&igrave;m kiếm tr&ecirc;n google, kết quả trả về từ những trang web đầu ti&ecirc;n đều xếp hạng nhất cho&nbsp;World&rsquo;s Best Cat Litter.</p>\r\n\r\n<p>World&rsquo;s Best tập trung chủ lực v&agrave;o sản phẩm c&aacute;t hữu cơ từ ng&ocirc;. V&igrave; thế sản phẩm ho&agrave;n to&agrave;n kh&ocirc;ng bụi, cho khả năng thấm h&uacute;t tốt, v&oacute;n cục tốt &amp; an to&agrave;n cho m&egrave;o.</p>\r\n\r\n<p>Tuy nhi&ecirc;n do gi&aacute; th&agrave;nh khi quy đổi ra tiền Việt của sản phẩm n&agrave;y kh&aacute; cao n&ecirc;n kh&ocirc;ng thực sự phổ biến ở Việt Nam. V&igrave; vậy bạn dư dả về vấn đề t&agrave;i ch&iacute;nh th&igrave; n&ecirc;n mua c&aacute;t m&egrave;o&nbsp;World&rsquo;s Best Cat Litter cho m&egrave;o nh&agrave; m&igrave;nh.</p>\r\n', '240000.00', 20000, 'wol1.jpg', '[\"wol2.jpg\"]', 26, 1, 14, 3, 1493983674),
(70, 16, 'Cát đậu nành Cature 6L', '<p><strong>M&Ocirc; TẢ</strong></p>\r\n\r\n<p><strong>C&aacute;t đậu phụ Cature Natural</strong>, C&aacute;t đậu phụ xả bồn cầu được l&agrave;m từ 100% đậu n&agrave;nh tự nhi&ecirc;n, tuyệt đối an to&agrave;n đến mức m&egrave;o c&oacute; thể ăn được. Kh&ocirc;ng giống như c&aacute;t vệ sinh th&ocirc;ng thường kh&aacute;c C&aacute;t đậu phụ Cature Natural, C&aacute;t xả bồn cầu c&oacute; rất &iacute;t bụi, gi&uacute;p ngăn ngừa c&aacute;c bệnh về đường h&ocirc; hấp cho m&egrave;o v&agrave; cả người nu&ocirc;i. Đặc biệt nếu gia đ&igrave;nh bạn c&oacute; em b&eacute;.</p>\r\n\r\n<hr />\r\n<p><strong>ĐẶT ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p>- Sản phẩm th&acirc;n thiện với m&ocirc;i trường, Bentonite tự nhi&ecirc;n 100%&nbsp;</p>\r\n\r\n<p>- Than hoạt t&iacute;nh lưu hương gi&uacute;p khử m&ugrave;i tốt hơn, giữ m&ugrave;i thơm được nguy&ecirc;n vẹn m&agrave; kh&ocirc;ng bị ảnh hưởng bởi m&ugrave;i của nước tiểu v&agrave; ph&acirc;n m&egrave;o..&nbsp;</p>\r\n\r\n<p>- Hạn chế được trường hợp đ&oacute;ng mảng bự dưới đ&aacute;y khay với lượng nước tiểu lớn.&nbsp;</p>\r\n\r\n<p>-&nbsp;M&ugrave;i hương thơm l&acirc;u, kh&ocirc;ng bị mất m&ugrave;i nếu để l&acirc;u trong bịch.&nbsp;</p>\r\n\r\n<p>-&nbsp;Kh&ocirc;ng bụi 99% gi&uacute;p bảo vệ sức khỏe đường h&ocirc; hấp cho m&egrave;o v&agrave; Sen hiệu quả.</p>\r\n\r\n<hr />\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong></p>\r\n\r\n<p>Đổ c&aacute;t v&agrave; trải đều trong bồn cầu m&egrave;o, độ d&agrave;y khoảng 5 &ndash; 6cm Sau khi m&egrave;o đi tiểu, nước được hấp thụ v&agrave; trở l&ecirc;n đ&ocirc;ng cứng v&agrave; v&oacute;n cục. Vứt bỏ c&aacute;t đậu phụ đ&ocirc;ng cứng bằng xẻng c&aacute;t (c&oacute; thể đổ trực tiếp xuống bồn cầu)</p>\r\n', '120000.00', 0, 'cature1.jpg', '[\"cature2.jpg\"]', 1, 1, 4, 1, 1652786646),
(2, 16, 'Cát vệ sinh thủy tinh KitCat 4L', '<p>C&aacute;t vệ sinh ch&iacute;nh l&agrave; sản phẩm gi&uacute;p c&ocirc;ng việc dọn dẹp vệ sinh cho m&egrave;o dễ d&agrave;ng hơn. C&aacute;c loại c&aacute;t vệ sinh kh&ocirc;ng chỉ sạch sẽ, hợp vệ sinh m&agrave; c&ograve;n lu&ocirc;n c&oacute; m&ugrave;i hương dễ chịu, thơm tho. Ch&iacute;nh v&igrave; vậy, chọn c&aacute;t vệ sinh cho m&egrave;o nh&agrave; m&igrave;nh ch&iacute;nh l&agrave; c&aacute;ch nhiều &quot;sen&quot; đang l&agrave;m. Giữa h&agrave;ng chục sản phẩm th&igrave;&nbsp;<strong>c</strong><strong>&aacute;t thuỷ tinh KitCat&nbsp;</strong>đ&atilde; &quot;chinh phục&quot; nhiều người!</p>\r\n\r\n<p><strong>C&aacute;t thuỷ tinh KitCat</strong>&nbsp;c&oacute; hương thơm đặc trưng, tạo cảm gi&aacute;c dễ chịu, m&ugrave;i thơm nhẹ nh&agrave;ng. C&ocirc;ng dụng ch&iacute;nh của sản phẩm l&agrave; giữ vệ sinh khu vực m&egrave;o sinh hoạt. B&ecirc;n cạnh đ&oacute; c&ograve;n loại bỏ m&ugrave;i h&ocirc;i từ chất thải của m&egrave;o.&nbsp;<strong>C&aacute;t thuỷ tinh KitCat</strong>&nbsp;l&agrave; 1 d&ograve;ng sản phẩm của KitCat. Đ&acirc;y l&agrave; thương hiệu đến từ Singapore, thuộc sở hữu của c&ocirc;ng ty TNHH KitCat. C&ocirc;ng ty n&agrave;y chuy&ecirc;n sản xuất c&aacute;c sản phẩm thức ăn cho m&egrave;o. Tuy kh&ocirc;ng quen thuộc ở thị trường Việt Nam, nhưng c&aacute;c loại c&aacute;t vệ sinh cho m&egrave;o của KitCat th&igrave; nhiều &quot;sen&quot; đ&atilde; quen mặt!. Với hơn 6 năm kinh nghiệm trong sản xuất c&aacute;c sản phẩm chăm s&oacute;c m&egrave;o, bạn ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m v&agrave;o chất lượng của&nbsp;<strong>c</strong><strong>&aacute;t thuỷ tinh KitCat</strong>.</p>\r\n\r\n<p><strong>Điểm nổi bật của sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>C&aacute;t thuỷ tinh KitCat</strong>&nbsp;kh&ocirc;ng c&oacute; chất phụ gia h&oacute;a học v&agrave; kh&ocirc;ng g&acirc;y hại cho vật nu&ocirc;i.</li>\r\n	<li>Kiểm so&aacute;t m&ugrave;i tối đa. Đồng thời c&ograve;n đem lại hương oải hương thơm ng&aacute;t. Giữ cho ng&ocirc;i nh&agrave; của bạn lu&ocirc;n thơm tho, sạch sẽ.</li>\r\n	<li>Tăng cường với hạt h&uacute;t ẩm Silica. Dạng Silica khiến sản phẩm trọng lượng nhẹ, kh&ocirc;ng bụi v&agrave; mềm tr&ecirc;n m&oacute;ng của m&egrave;o, tốt cho cả m&egrave;o con.</li>\r\n	<li>99% kh&ocirc;ng bụi v&agrave; d&iacute;nh bẩn.</li>\r\n	<li>Hấp thụ tuyệt vời. Chỉ cần tiếp x&uacute;c với chất thải l&agrave; sẽ tự động v&oacute;n cục, khiến việc dọn dẹp vệ sinh cho m&egrave;o trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết. Khả năng v&oacute;n cục của sản phẩm cực nhanh!</li>\r\n	<li>H&uacute;t nhanh thấm mạnh v&agrave; giữ khay lu&ocirc;n kh&ocirc; r&aacute;o, vệ sinh.</li>\r\n	<li>Kh&ocirc;ng d&iacute;nh ch&acirc;n, d&iacute;nh l&ocirc;ng, kh&ocirc;ng c&oacute; bụi, giữ cho nh&agrave; bạn lu&ocirc;n sạch.</li>\r\n	<li>Kh&ocirc;ng độc hại &amp; th&acirc;n thiện với m&ocirc;i trường an to&agrave;n.</li>\r\n	<li>Mỗi g&oacute;i&nbsp;<strong>c</strong><strong>&aacute;t thuỷ tinh KitCat&nbsp;</strong>c&oacute; thể d&ugrave;ng được đến 40 ng&agrave;y.</li>\r\n</ul>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Đổ&nbsp;<strong>c</strong><strong>&aacute;t thuỷ tinh KitCat&nbsp;</strong>v&agrave;o khay vệ sinh của m&egrave;o.</li>\r\n	<li><strong>C&aacute;t thuỷ tinh KitCat</strong>&nbsp;được thiết kế đặc biệt. Khi c&oacute; chất lỏng chạm v&agrave;o n&oacute; sẽ tạo th&agrave;nh một khối rắn. Bạn chỉ việc loại bỏ c&aacute;c khối rắn h&agrave;ng ng&agrave;y để khay vệ sinh cho m&egrave;o lu&ocirc;n sạch sẽ.</li>\r\n	<li>Vệ sinh sạch sẽ to&agrave;n bộ khay c&aacute;t h&agrave;ng th&aacute;ng.</li>\r\n</ul>\r\n', '125000.00', 15000, 'kicat0.jpg', '[\"kitcat.jpg\"]', 4, 1, 4, 1, 1493983674),
(3, 16, 'Cát cao cấp Gagette 10L', '<p>C&aacute;t Vệ Sinh Cho M&egrave;o Cao Cấp Gagette 10L l&agrave; sản phẩm được sản xuất ho&agrave;n to&agrave;n 100% từ đất sodium bentonite theo quy tr&igrave;nh hiện đại. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm chất lượng cao với c&aacute;c t&iacute;nh năng vượt trội:</p>\r\n\r\n<p>1. Si&ecirc;u thấm h&uacute;t, kết d&iacute;nh nhanh, độ v&oacute;n tốt, x&uacute;c bỏ dễ d&agrave;ng.</p>\r\n\r\n<p>C&aacute;t Vệ Sinh Cho M&egrave;o Cao Cấp Gagette 10L được cấu tạo từ 100% nguy&ecirc;n liệu đất s&eacute;t sodium bentonite theo quy tr&igrave;nh c&ocirc;ng nghệ hiện đại, c&aacute;c hạt c&aacute;t vệ sinh c&oacute; h&igrave;nh dạng tr&ograve;n, nhờ đ&oacute; c&aacute;t kết &iacute;nh cực nhanh với chất thải của m&egrave;o, thẩm thấu tốt, sử dụng TIẾT KIỆM hơn rất nhiều so với những sản phẩm th&ocirc;ng thường kh&aacute;c.</p>\r\n\r\n<p>2. Chống ẩm tối đa, khử m&ugrave;i hiệu quả, hương thơm lan tỏa dễ chịu.</p>\r\n\r\n<p>&Aacute;p dụng c&ocirc;ng nghệ hiện đại gi&uacute;p hạt c&aacute;t c&oacute; hương nh&agrave;i thơm dễ chịu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho người v&agrave; vật nu&ocirc;i. Đặc biệt, sản phẩm c&oacute; khả năng khử m&ugrave;i cực kỳ hiệu quả, lưu giữ hương thơm d&agrave;i l&acirc;u.</p>\r\n\r\n<p>3. Giảm 99,9% bụi, TUYỆT ĐỐI AN TO&Agrave;N cho người v&agrave; th&uacute; cưng.</p>\r\n\r\n<p>Sản phẩm với c&ocirc;ng nghệ khử bụi hiệu quả, qu&aacute; tr&igrave;nh tiệt tr&ugrave;ng bằng nhiệt độ cao, chắt lọc những th&agrave;nh phần đất s&eacute;t sodium bentonite tinh khiết nhất, mang đến sự an to&agrave;n cho sức khỏe của bạn.</p>\r\n\r\n<p>4. Nguồn gốc thi&ecirc;n nhi&ecirc;n, th&acirc;n thiện với m&ocirc;i trường</p>\r\n\r\n<p>+ Dung t&iacute;ch : 10L</p>\r\n\r\n<p>+ Quy c&aacute;ch đ&oacute;ng g&oacute;i : 3 t&uacute;i/ tải</p>\r\n', '120000.00', 0, 'gagette.jpg', '[\"gagette.jpg\"]', 42, 4, 11, 3, 1493983674),
(4, 18, 'Sữa tắm Trixie chai 250ml', '<p>Dầu tắm m&egrave;o Trixie c&oacute; nguồn gốc từ Đức với th&agrave;nh phần c&oacute; bổ sung th&ecirc;m tinh dầu,&nbsp;<strong>gi&uacute;p l&ocirc;ng m&egrave;o mềm mượt, dưỡng ẩm, giảm rụng l&ocirc;ng</strong>, c&oacute; t&aacute;c dụng hiệu quả trong việc ngăn ngừa nhiễm k&yacute; sinh tr&ugrave;ng g&acirc;y hại.</p>\r\n', '140000.00', 0, 'trixie.jpg', '[\"trixie2.jpg\"]', 16, 7, 18, 4, 1493983674),
(68, 18, 'Sữa tắm Bio Lovely Pets chai 200ml', '<p>Sản phẩm thuộc thương hiệu Perfect Kare&nbsp;<strong>c&oacute; xuất xứ từ Th&aacute;i Lan</strong>, sản phẩm c&oacute; chứa những th&agrave;nh phần tự nhi&ecirc;n như: Chiết xuất hạnh nh&acirc;n,&nbsp;<a href=\"https://www.bachhoaxanh.com/cu/nha-dam-tui-300g\" target=\"_blank\">nha đam</a>,&nbsp;<a href=\"https://www.bachhoaxanh.com/kinh-nghiem-hay/vitamin-b5-hay-axit-pantothenic-la-gi-999847\" target=\"_blank\">vitamin B5</a>, collagen, nước hoa,...&nbsp;<strong>gi&uacute;p l&agrave;m sạch v&agrave; dưỡng ẩm cho l&ocirc;ng b&oacute;ng mượt</strong>. Với c&ocirc;ng thức c&acirc;n bằng&nbsp;<a href=\"https://www.bachhoaxanh.com/kinh-nghiem-hay/do-ph-la-gi-va-vai-tro-than-thanh-cua-ph-doi-voi-lan-da-chung-ta-1137113\" target=\"_blank\">độ pH</a>&nbsp;v&ocirc; c&ugrave;ng an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n', '80000.00', 5000, 'Bio-Lovely-pet(1).jpg', '[\"Sua-tam-Bio-Lovely-pets-dua-da-cho-cho-cho-meo.jpg\"]', 2, 0, 4, 1, 1652785518),
(6, 18, 'Sữa tắm SOS chai 350ml', '<p>Sữa tắm SOS l&agrave; một thương hiệu đến từ Đ&agrave;i Loan, l&agrave; loại được ưa chuộng nhất hiện nay bởi c&oacute; nhiều loại để lựa chọn v&agrave; gi&aacute; cả hợp l&yacute;. Th&agrave;nh phần chủ yếu l&agrave; thảo dược n&ecirc;n l&agrave;nh t&iacute;nh v&agrave; an to&agrave;n với vật nu&ocirc;i. D&ograve;ng sữa tắm n&agrave;y&nbsp;<strong>c&oacute; m&ugrave;i thơm dễ chịu v&agrave; khả năng lưu hương cũng kh&aacute; l&acirc;u</strong>. Sữa tắm SOS m&agrave;u trắng l&agrave; loại d&agrave;nh ri&ecirc;ng cho m&egrave;o, gi&uacute;p l&ocirc;ng m&egrave;o mượt m&agrave; v&agrave; đẹp hơn nh&eacute;!</p>\r\n', '100000.00', 10000, 'suatamsos.jpg', '[\"suatamsos.jpg\"]', 3, 1, 4, 1, 1493983674),
(9, 15, 'Cát vệ sinh Maneki Neko 5L', '<p><strong>Maneki Neko</strong>&nbsp;l&agrave; loại c&aacute;t c&oacute;&nbsp;<strong>xuất xứ từ Nhật Bản</strong>&nbsp;v&agrave; cũng d&ugrave;ng để vệ sinh cho m&egrave;o Nhật Bản. Loại c&aacute;t n&agrave;y<strong>&nbsp;c&oacute; rất nhiều m&ugrave;i hương kh&aacute;c nhau</strong>&nbsp;để bạn lựa chọn như: Ng&ocirc;, hoa anh đ&agrave;o, c&agrave; ph&ecirc; Mocha, chuối, &hellip;</p>\r\n\r\n<p>Loại c&aacute;t n&agrave;y sở hữu ưu điểm đ&oacute; l&agrave;<strong>&nbsp;khử m&ugrave;i rất tốt, th&agrave;nh phần tự nhi&ecirc;n n&ecirc;n an to&agrave;n</strong>&nbsp;cho ch&uacute; m&egrave;o nh&agrave; bạn đồng thời n&oacute; h&uacute;t ẩm tốt, diệt khuẩn v&agrave; ngăn chặn vi khuẩn ph&aacute;t triển.</p>\r\n', '60000.00', 0, 'mana1.jpg', '[\"mana2.jpg\"]', 4, 1, 4, 1, 1493983674),
(11, 15, 'Cát vệ sinh Secret 5L', '<p><strong>C&aacute;t Secret 5L</strong>&nbsp;l&agrave; sản phẩm c&aacute;t vệ sinh cho m&egrave;o được nhiều gia đ&igrave;nh lựa chọn hiện nay&nbsp;<strong>với nhiều m&ugrave;i kh&aacute;c nhau như: T&aacute;o, c&agrave; ph&ecirc;, tr&agrave; xanh, hoa oải hương,&hellip;</strong></p>\r\n\r\n<p>Sản phẩm n&agrave;y được&nbsp;<strong>sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ Nhật Bản</strong>, với c&aacute;c<strong>&nbsp;hạt silica thơm gi&uacute;p khử m&ugrave;i ph&acirc;n m&egrave;o cực kỳ hiệu quả.</strong>&nbsp;Ngo&agrave;i ra sản phẩm c&ograve;n c&oacute; chất h&uacute;t ẩm nhanh, với 100% Bentonite tự nhi&ecirc;n, an to&agrave;n tuyệt đối cho m&egrave;o y&ecirc;u nh&agrave; bạn.</p>\r\n', '55000.00', 5000, 'secret1.jpg', '[\"secret2.jpg\"]', 37, 3, 5, 1, 1493983674),
(67, 15, 'Cát vệ sinh Cat Like 8L', '<p><strong>Th&ocirc;ng tin sản phẩm :</strong></p>\r\n\r\n<p>- C&aacute;t vệ sinh cho m&egrave;o catlike l&agrave; d&ograve;ng sản phẩm cao cấp nhưng gi&aacute; th&agrave;nh lại rất b&igrave;nh d&acirc;n .</p>\r\n\r\n<p>- M&ugrave;i hương : c&agrave; ph&ecirc; , t&aacute;o , chanh , lavender, hoa hồng</p>\r\n\r\n<p>- Trong lượng : bao 8 l&iacute;t hoặc bao 15 lit - C&aacute;t được l&agrave;m từ 100% bentonite tự nhi&ecirc;n , an to&agrave;n cho chủ v&agrave; vật nu&ocirc;i,&nbsp;khi sử dụng catlike chắc chắn c&aacute;c bạn kh&ocirc;ng muốn t&igrave;m kiếm th&ecirc;m loại c&aacute;t kh&aacute;c nữa v&igrave; catlike đ&atilde; l&agrave;m h&agrave;i l&ograve;ng sen v&agrave; boss .</p>\r\n\r\n<p>- Đặc biệt khử m&ugrave;i rất tốt , như c&aacute;c bạn đ&atilde; biết c&agrave; ph&ecirc; c&oacute; khả năng h&uacute;t ẩm v&agrave; khử m&ugrave;i rất tốt cho n&ecirc;n c&aacute;t hương c&agrave; ph&ecirc; khử m&ugrave;i tốt nhất trong c&aacute;c m&ugrave;i c&ograve;n lại . Tuy nhi&ecirc;n nếu c&aacute;c sen nu&ocirc;i &iacute;t m&egrave;o th&igrave; c&oacute; thể lựa chọn c&aacute;c m&ugrave;i kh&aacute;c , tuy m&ugrave;i thơm nhẹ hơn nhưng khử m&ugrave;i vẫn rất ok đi v&agrave;o nh&agrave; l&uacute;c n&agrave;o cũng c&oacute; m&ugrave;i thơm nhẹ .</p>\r\n\r\n<p>- V&oacute;n cục nhanh v&agrave; cứng gi&uacute;p sen dọn dẹp nhanh ch&oacute;ng , tiết kiệm c&aacute;t v&agrave; tiết kiệm thời gian.</p>\r\n\r\n<p>- Lượng bụi trong c&aacute;t thấp n&ecirc;n kh&ocirc;ng ảnh hưởng đến sen v&agrave; boss C&aacute;t vệ sinh cho m&egrave;o Catlike l&agrave; một trong những d&ograve;ng sản phẩm sử dụng cho m&egrave;o đi vệ sinh với những t&iacute;nh năng cơ bản như: Khử m&ugrave;i h&ocirc;i, v&oacute;n cục, kh&ocirc;ng bụi, kh&ocirc;ng d&iacute;nh chất m&egrave;o gi&uacute;p tiết kiệm về thời gian, kinh tế v&agrave; đặc bi&ecirc;t th&acirc;n thiện với m&ocirc;i trường y&ecirc;n t&acirc;m về sức khỏe cho th&uacute; cưng v&agrave; những người th&acirc;n trong gia đ&igrave;nh.</p>\r\n', '50000.00', 5000, 'catlike1.jpg', '[\"catlike2.jpg\"]', 2, 0, 4, 1, 1652784221),
(10, 15, 'Cát vệ sinh đậu phụ Acro Pet 5L', '<p>Một trong những loại c&aacute;t rẻ tiền m&agrave; mang lại hiệu quả khử m&ugrave;i ph&acirc;n m&egrave;o cực kỳ hiệu quả đ&oacute; ch&iacute;nh l&agrave; c&aacute;t đậu phụ Acro Pet, sản phẩm xuất xứ từ H&agrave;n Quốc.&nbsp;<strong>Sản phẩm n&agrave;y cũng c&oacute; nhiều m&ugrave;i để bạn lựa chọn</strong>&nbsp;như: Ca cao, c&agrave; ph&ecirc;, t&aacute;o, chanh, oải hương,&hellip;</p>\r\n\r\n<p>Sản phẩm<strong>&nbsp;được l&agrave;m từ 100% từ đậu n&agrave;nh tự nhi&ecirc;n n&ecirc;n an to&agrave;n cho m&egrave;o đồng thời kh&ocirc;ng c&oacute; bụi mịn</strong>&nbsp;n&ecirc;n kh&ocirc;ng g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;, ngăn ngừa nguy cơ m&egrave;o bị mắc bệnh về đường h&ocirc; hấp đồng thời sản phẩm n&agrave;y<strong>&nbsp;c&oacute; khả năng hấp thụ độ ẩm nhanh, hạn chế m&ugrave;i rất tốt, diệt khuẩn.</strong></p>\r\n', '110000.00', 10000, 'dauphu1.jpg', '[\"dauphu2.jpg\"]', 11, 2, 9, 2, 1493983674),
(14, 17, 'Xẻng xúc cát', '<p>- K&iacute;ch thước: Xẻng c&aacute;n thẳng: 25 x 10cm</p>\r\n\r\n<p>Xẻng x&uacute;c c&aacute;t vệ sinh cho m&egrave;o được l&agrave;m bằng nhựa cứng, c&oacute; những lỗ lọc những hạt c&aacute;t chưa sử dụng. Gi&uacute;p bạn vệ sinh cho m&egrave;o gọn g&agrave;ng sạch sẽ v&agrave; tiện dụng:</p>\r\n\r\n<p>- Trọng lượng nhẹ</p>\r\n\r\n<p>- Thuận tiện</p>\r\n\r\n<p>- Vứt bỏ chất thải đ&uacute;ng c&aacute;ch</p>\r\n\r\n<p>- Dễ d&agrave;ng sử dụng bằng một tay</p>\r\n\r\n<p>-&nbsp;Đ&aacute;p ứng nhu cầu của bạn vật nu&ocirc;i</p>\r\n', '15000.00', 0, 'xeng1.jpg', '[\"xeng1.jpg\"]', 3, 2, 4, 1, 1493983674),
(15, 17, 'Chậu vệ sinh cho mèo bằng nhựa', '<p>Khay đựng c&aacute;t vệ sinh cho m&egrave;o được l&agrave;m bằng chất nhựa đẹp, d&agrave;y dặn, c&oacute; nắp v&ograve;m bao xung quanh khay gi&uacute;p hạn chế c&aacute;t văng ra ngo&agrave;i khi m&egrave;o hất c&aacute;t, nắp v&ograve;m n&agrave;y c&oacute; thể gỡ ra để dễ vệ sinh hơn. Khay được thiết kế theo tỉ lệ hợp l&iacute; để kh&ocirc;ng bị lật khi m&egrave;o đứng l&ecirc;n. M&agrave;u sắc lại rất đa dạng tha hồ lựa chọn n&egrave;. Thay v&igrave; chọn đại 1 c&aacute;i thau chậu đựng c&aacute;t h&atilde;y sử dụng 1 khay vệ sinh chuy&ecirc;n dụng cho m&egrave;o để cả m&egrave;o v&agrave; bạn chủ đều cảm thấy thoải m&aacute;i khi nhắc đến vấn đề vệ sinh cho m&egrave;o.</p>\r\n\r\n<p>- K&iacute;ch thước khay c&aacute;t vệ sinh cho m&egrave;o: 46 x 36 x 11 cm</p>\r\n\r\n<p>- Trọng Lượng khay c&aacute;t vệ sinh cho m&egrave;o: 430g</p>\r\n\r\n<p>- M&agrave;u: Xanh, V&agrave;ng, Hồng</p>\r\n', '12000.00', 0, 'chau1.jpg', '[\"chau2.jpg\"]', 4, 1, 4, 1, 1493983674),
(16, 19, 'Nhà giấy Carton cho mèo', '<p><strong><a href=\"http://aothun24h.vn/san-pham/170/Ao-gia-dinh.html\" target=\"_blank\">&Aacute;o gia đ&igrave;nh</a>&nbsp;kẻ sọc ngang</strong>&nbsp;rất được ưa chuộng hiện nay, d&ugrave; l&agrave; ở lứa tuổi n&agrave;o th&igrave; thời trang kẻ sọc cũng lu&ocirc;n mang đ&ecirc;n cho người mặc một phong c&aacute;ch trẻ trung năng động v&agrave; c&aacute; t&iacute;nh.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng mặc sọc ngang từ đầu đến ch&acirc;n l&agrave; b&iacute; quyết gia đ&igrave;nh bạn n&ecirc;n biết.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chọn chất liệu mềm v&agrave; phom d&aacute;ng su&ocirc;n rộng để che khuyết điểm.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chọn sọc kẻ ngang vừa phải, kh&ocirc;ng đụng tới sọc to.</p>\r\n', '30000.00', 0, 'catton.jpg', '[\"catton2.jpg\"]', 4, 3, 13, 3, 1493983674),
(49, 19, 'Hạt giống cỏ mèo', '<p>- Set hạt giống cỏ trồng cho m&egrave;o l&agrave; bộ sản phẩm bao gồm 1 hộp nhựa + đất trồng + 5 t&uacute;i hạt giống cỏ m&egrave;o.</p>\r\n\r\n<p>- Set hạt giống cỏ trồng cho m&egrave;o c&oacute; trọng lượng 50g</p>\r\n\r\n<p>- Lợi &iacute;ch của việc cho m&egrave;o ăn cỏ m&egrave;o:</p>\r\n\r\n<ul>\r\n	<li>Gi&uacute;p m&egrave;o nhổ c&aacute;c b&uacute;i l&ocirc;ng t&iacute;ch trữ dạ d&agrave;y ra ngo&agrave;i, c&aacute;c vi khuẩn c&oacute; hại c&ugrave;ng c&aacute;c chất độc b&eacute; ăn.</li>\r\n	<li>Bổ xung c&aacute;c chất dinh dưỡng, vitamin, chất xơ.</li>\r\n</ul>\r\n\r\n<p>- C&aacute;ch trồng:</p>\r\n\r\n<ul>\r\n	<li>Đổ hạt v&agrave;o t&ocirc; v&agrave; ng&acirc;m c&aacute;c hạt giống (phủ nước) phủ một lớp giấy ăn ướt với khe 5mm v&agrave; để hạt ở nơi ấm khoảng 12 giờ;</li>\r\n	<li>12 giờ sau khi hạt được lấy ra, rắc đều trong đất với chậu hoặc b&aacute;t(c&oacute; thể d&ugrave;ng đất b&igrave;nh thường hoặc đất m&ugrave;n, đất d&agrave;y hơn 1,5 cm), v&agrave; sau đ&oacute; phủ một lớp mỏng Đất , sau đ&oacute; tưới nước.</li>\r\n	<li>Đặt n&oacute; trong một khu vực c&oacute; &aacute;nh mặt trời, tưới nước một lần mỗi ng&agrave;y sau đ&oacute;, nảy mầm trong khoảng 2-3 ng&agrave;y v&agrave; ph&aacute;t triển trong 7-8 ng&agrave;y để cho m&egrave;o ăn.</li>\r\n</ul>\r\n\r\n<p>- C&aacute;ch cho m&egrave;o ăn:</p>\r\n\r\n<ul>\r\n	<li>Cho m&egrave;o ăn trực tiếp</li>\r\n	<li>Cắt ra b&aacute;t cho m&egrave;o ăn hoặc trộn với thức ăn</li>\r\n</ul>\r\n', '30000.00', 0, 'comeo.png', '[]', 0, 0, 4, 1, 1652777752),
(17, 19, 'Cần câu mèo', '<p>Đồ chơi cần c&acirc;u M&egrave;o bằng th&eacute;p gắn l&ocirc;ng d&agrave;nh cho m&egrave;o</p>\r\n\r\n<p>- Cần với chất liệu th&eacute;p dẻo bền, c&oacute; thể uốn cong m&agrave; kh&ocirc;ng g&acirc;y g&atilde;y.</p>\r\n\r\n<p>- Th&eacute;p dẻo tạo độ chuyển động tự nhi&ecirc;n k&iacute;ch th&iacute;ch m&egrave;o của bạn chơi đ&ugrave;a vận động.</p>\r\n\r\n<p>Đồ chơi cho m&egrave;o cần c&acirc;u m&egrave;o c&oacute; t&aacute;c dụng k&iacute;ch th&iacute;ch vận động ở m&egrave;o, gi&uacute;p ch&uacute;ng giải tỏa căng thẳng, mệt mỏi, từ đ&oacute; gi&uacute;p ph&aacute;t triển sức khỏe cũng như n&atilde;o bộ.</p>\r\n\r\n<p>Đối với những ch&uacute; m&egrave;o nghịch ngợm th&igrave; swing cat c&ograve;n c&oacute; sức h&uacute;t k&eacute;o ch&uacute;ng khỏi việc c&agrave;o cắn đồ đạc trong nh&agrave;.</p>\r\n\r\n<p>K&iacute;ch thước:</p>\r\n\r\n<p>- Chiều d&agrave;i d&acirc;y th&eacute;p: 95cm</p>\r\n\r\n<p>- Chiều d&agrave;i phần mồi c&acirc;u: 12cm</p>\r\n\r\n<p>- Chất liệu: nhựa, sợi th&eacute;p v&agrave; l&ocirc;ng nh&acirc;n tạo.</p>\r\n', '25000.00', 0, 'cancau1.jpg', '[\"cancau2.jpg\"]', 37, 1, 14, 4, 1493983674),
(18, 20, 'Váy xinh in hoa cho bé mèo', '<p>Váy thú cưng in hoa cực xinh</p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n sản phẩm: V&aacute;y cho th&uacute; cưng</li>\r\n	<li>Chất liệu: Cotton</li>\r\n	<li>M&ugrave;a: M&ugrave;a h&egrave;</li>\r\n	<li>Phong c&aacute;ch: thường ng&agrave;y</li>\r\n	<li>Giới t&iacute;nh: Unisex</li>\r\n</ul>\r\n\r\n<p>C&aacute;c t&iacute;nh năng: in hoa, tho&aacute;ng kh&iacute;, thời trang</p>\r\n', '80000.00', 10000, 'vaymeo1.png', '[\"vaymeo2.png\"]', 2, 1, 5, 1, 0),
(51, 20, 'Áo hoodie khủng long', '<p>Áo hoodie khủng long cực xinh cho bé mèo</p>\r\n\r\n<ul>\r\n	<li>Được l&agrave;m từ chất liệu l&ocirc;ng cừu mềm mại, quần &aacute;o Hoodie cho th&uacute; cưng n&agrave;y ấm &aacute;p, thoải m&aacute;i v&agrave; th&acirc;n thiện với da.</li>\r\n	<li>Thiết kế họa tiết khủng long si&ecirc;u đẹp v&agrave; dễ thương l&agrave;m cho th&uacute; cưng của bạn tr&ocirc;ng dễ thương v&agrave; đ&aacute;ng y&ecirc;u.</li>\r\n	<li>Thiết kế n&uacute;t đ&oacute;ng, c&ograve;ng đ&agrave;n hồi, rất dễ d&agrave;ng để mặc v&agrave; cởi ra.</li>\r\n	<li>T&ecirc;n sản phẩm: Quần &aacute;o cho m&egrave;o</li>\r\n	<li>Chất liệu: L&ocirc;ng cừu san h&ocirc;</li>\r\n</ul>\r\n\r\n<p>Đặc điểm: Th&acirc;n thiện với da v&agrave; mềm mại, biến h&igrave;nh khủng long, tr&ugrave;m đầu</p>\r\n', '120000.00', 0, 'aomeo.png', '[]', 0, 0, 4, 1, 1652778590),
(55, 10, 'Hạt Homecat loại 5kg', '<h3>&nbsp;</h3>\r\n\r\n<p>Homecat cũng l&agrave; sự lựa chọn kh&aacute; hợp l&yacute; trong d&ograve;ng hạt H&agrave;n gi&aacute; b&igrave;nh d&acirc;n. D&ograve;ng hạt n&agrave;y được quảng c&aacute;o l&agrave; sử dụng những nguy&ecirc;n liệu cao cấp nhưng vẫn l&agrave; thức ăn hạt gi&aacute; rẻ cho m&egrave;o để tiết kiệm cho sen. Về chất lượng th&igrave; Homecat v&agrave; Cateye cũng một 9 một 10, bạn c&oacute; thể lựa chọn t&ugrave;y theo sở th&iacute;ch của boss nh&eacute;!</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>M&ugrave;i hạt Homecat kh&ocirc;ng thơm bằng Cat Eye v&agrave; nồng hơn một ch&uacute;t theo cảm nhận của nhiều sen, nhưng boss th&igrave; vẫn ăn tuốt tuồn tuột nếu m&ugrave;i Homecat đ&uacute;ng với sở th&iacute;ch của m&igrave;nh.</li>\r\n	<li>Cũng nằm trong d&ograve;ng c&aacute;c loại hạt c&oacute; xuất xứ từ H&agrave;n Quốc n&ecirc;n Homecat cũng c&oacute; những đặc điểm tương tự như hạt Cat Eye. Loại hạt n&agrave;y gi&uacute;p m&egrave;o nhanh ch&oacute;ng tăng k&yacute; (nh&agrave; sản xuất c&oacute; đề cập th&ecirc;m c&ocirc;ng dụng hạn chế b&uacute;i l&ocirc;ng nhưng rất kh&oacute; kiểm chứng c&ocirc;ng dụng n&agrave;y). Boss mũm mĩm như sở th&iacute;ch của c&aacute;c sen.</li>\r\n	<li>Homecat cũng l&agrave; một loại thức ăn dễ ti&ecirc;u h&oacute;a v&agrave; hiếm khi xảy ra trường hợp gặp vấn đề về ti&ecirc;u h&oacute;a khi sử dụng thức ăn n&agrave;y.</li>\r\n</ul>\r\n\r\n<p>Đối tượng sử dụng: m&egrave;o tr&ecirc;n 5 th&aacute;ng tuổi, sử dụng để ngừa b&uacute;i l&ocirc;ng cho m&egrave;o.</p>\r\n', '400000.00', 0, 'homecat1.jpg', '[\"homecat3.jpg\"]', 0, 0, 4, 1, 1652779864),
(54, 10, 'Hạt Cat Eye loại 1kg', '<h3>&nbsp;</h3>\r\n\r\n<p>Thuộc d&ograve;ng hạt H&agrave;n c&oacute; gi&aacute; kh&aacute; b&igrave;nh d&acirc;n n&ecirc;n hạt Cat Eye rất được ưa chuộng v&agrave; Tuy gi&aacute; l&agrave; thức ăn hạt gi&aacute; rẻ cho m&egrave;o nhưng loại hạt n&agrave;y cực kỳ chất lượng nha. Ngo&agrave;i c&ocirc;ng dụng nổi bật l&agrave; giảm h&igrave;nh th&agrave;nh b&uacute;i l&ocirc;ng trong ruột m&egrave;o, những ch&uacute; m&egrave;o ăn hạt n&agrave;y c&ograve;n tăng c&acirc;n đều đặn v&agrave; kh&aacute; mũm mĩm đ&aacute;ng y&ecirc;u đ&uacute;ng như &yacute; sen.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>M&ugrave;i thơm chỉ đứng sau hạt Catsrang trong d&ograve;ng hạt H&agrave;n. M&egrave;o vẫn ăn Cat Eye nhưng kh&ocirc;ng qu&aacute; hấp dẫn. Hạt h&igrave;nh con c&aacute; m&agrave;u n&acirc;u đậm c&oacute; k&iacute;ch thước vừa nhưng hơi to so với m&egrave;o con v&igrave; loại n&agrave;y d&ugrave;ng chung cho cả m&egrave;o con v&agrave; m&egrave;o trưởng th&agrave;nh.</li>\r\n	<li>D&ograve;ng hạt n&agrave;y thường gi&uacute;p m&egrave;o tăng c&acirc;n ổn định (ngo&agrave;i ra, c&ograve;n được nh&agrave; sản xuất đề cập c&ocirc;ng dụng ngăn ngừa h&igrave;nh th&agrave;nh b&uacute;i l&ocirc;ng nhưng rất kh&oacute; kiểm chứng t&aacute;c dụng n&agrave;y tr&ecirc;n thực tế).</li>\r\n	<li>C&ocirc;ng thức tăng cường chất xơ n&ecirc;n Cat Eye rất dễ ti&ecirc;u h&oacute;a v&agrave; ổn định đường ruột. &Iacute;t khi xảy ra ti&ecirc;u chảy hay bất thường khi sử dụng.</li>\r\n</ul>\r\n\r\n<p>Đối tượng sử dụng: m&egrave;o con, m&egrave;o trưởng th&agrave;nh, d&ugrave;ng cho những b&eacute; m&egrave;o muốn ngừa b&uacute;i l&ocirc;ng cho boss hoặc những bạn m&egrave;o hay t&aacute;o b&oacute;n (v&igrave; c&ocirc;ng thức c&oacute; nhiều chất xơ).</p>\r\n', '70000.00', 0, 'cateye1.jpg', '[\"cateye2.jpg\"]', 0, 0, 4, 1, 1652779792),
(22, 21, 'Hộp quà lưu niệm trong suốt', '<p>Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>- K&iacute;ch thước size : 17&times;17&times;12cm</p>\r\n\r\n<p>- Trọng lượng: 200gram</p>\r\n\r\n<p>- Bộ bao gồm : t&uacute;i qu&agrave; tặng , gấu b&ocirc;ng k&egrave;m than hoạt t&iacute;nh , thiệp sinh nhật , đ&egrave;n led nhỏ m&agrave;u v&agrave;ng , hộp qu&agrave; nhựa trong suốt k&egrave;m nơ thắt.</p>\r\n\r\n<p>- H&igrave;nh d&aacute;ng ưu nh&igrave;n th&iacute;ch hợp với mọi lứa tuổi l&agrave;m qu&agrave; tặng sinh nhật , đồ trang tr&iacute; decor ph&ograve;ng ngủ,..</p>\r\n\r\n<p>- C&oacute; than hoạt t&iacute;nh gi&uacute;p khử m&ugrave;i , diệt vi khuẩn th&iacute;ch hợp để ph&ograve;ng ngủ , ph&ograve;ng l&agrave;m việc</p>\r\n', '200000.00', 20000, 'hopqua1.png', '[\"hopqua2.png\"]', 2, 1, 4, 1, 1493983674),
(23, 21, 'Mô hình mèo nhiều biểu cảm', '<p>TH&Ocirc;NG TIN SẢN PHẨM:</p>\r\n\r\n<p>- Chất liệu: Nhựa th&ocirc;ng an to&agrave;n</p>\r\n\r\n<p>- M&agrave;u sắc tươi s&aacute;ng, thủ c&ocirc;ng tinh xảo v&agrave; đẹp mắt</p>\r\n\r\n<p>- K&iacute;ch thước: như h&igrave;nh m&ocirc; tả, khoảng 6cm</p>\r\n\r\n<p>C&Ocirc;NG DỤNG SẢN PHẨM:</p>\r\n\r\n<p>- Những ch&uacute; m&egrave;o với thiết kế xinh xắn, nhiều biểu cảm, h&agrave;nh động đ&aacute;ng y&ecirc;u, th&iacute;ch hợp l&agrave;m qu&agrave; tặng sinh nhật, kỷ niệm, đồ trang tr&iacute;,...</p>\r\n', '50000.00', 0, 'mohinh1.png', '[\"mohinh2.png\",\"mohinh3.png\"]', 20, 8, 22, 5, 1493983674),
(24, 11, 'Hạt Nutri Souce loại 3kg', '<p><strong>Nutri Source l&agrave; d&ograve;ng thức ăn hạt cao cấp d&agrave;nh cho ch&oacute; m&egrave;o đến từ Hoa Kỳ</strong>, thuộc tập đo&agrave;n Tuffy&rsquo;s Pet Foods. Với nguồn nguy&ecirc;n liệu được tuyển chọn kỹ lưỡng c&ugrave;ng c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến, hiện đại, Nutri Source đạt ti&ecirc;u chuẩn cung cấp cho th&uacute; nu&ocirc;i tr&ecirc;n to&agrave;n cầu.</p>\r\n\r\n<p>Th&agrave;nh phần chủ yếu từ c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n như bột đậu H&agrave; Lan, bột củ cải kh&ocirc;, yến mạch, nấm men, c&ugrave;ng với Canxi v&agrave; Vi kho&aacute;ng hữu cơ Selen gi&uacute;p tạo ra một sản phẩm đầy đủ dinh dưỡng cần thiết cho cơ thể.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Vi kho&aacute;ng Selen gi&uacute;p hỗ trợ chức năng sinh sản</li>\r\n	<li>Gi&uacute;p m&egrave;o dễ hấp thụ dinh dưỡng, ti&ecirc;u h&oacute;a tốt, giảm thiểu m&ugrave;i ph&acirc;n</li>\r\n	<li>Ph&aacute;t triển một khung xương khỏe mạnh to&agrave;n diện</li>\r\n</ul>\r\n', '420000.00', 0, 'nutri1.jpg', '[\"nutri21.jpg\",\"nutri3.png\"]', 37, 1, 9, 2, 1493983674),
(60, 11, 'Hạt Royal Canin loại 1kg', '<p><strong>Royal Canin l&agrave; thương hiệu thức ăn cho ch&oacute; m&egrave;o đến từ Ph&aacute;p</strong> được th&agrave;nh lập hơn 40 năm nay. Thức ăn Royal Canin đặc biệt được y&ecirc;u th&iacute;ch bởi sự ph&acirc;n chia tỷ lệ dinh dưỡng hợp l&yacute; v&agrave; sự ưu ti&ecirc;n h&agrave;ng đầu cho chất lượng sản phẩm.</p>\r\n\r\n<p>Th&agrave;nh phần chủ yếu gồm Canxi v&agrave; Photpho, Omega 3 v&agrave; 6, sự kết hợp c&acirc;n bằng giữa Protein, chất xơ v&agrave; Vitamin đảm bảo th&iacute;ch hợp với sự ph&aacute;t triển của một ch&uacute; m&egrave;o trong mọi độ tuổi.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Hỗ trợ xương khớp khỏe mạnh, cứng c&aacute;p</li>\r\n	<li>C&acirc;n bằng đường ruột, cải thiện hệ ti&ecirc;u h&oacute;a v&agrave; hệ miễn dịch</li>\r\n	<li>Omega 3 v&agrave; 6 gi&uacute;p l&ocirc;ng th&ecirc;m &oacute;ng mượt, chắc khỏe</li>\r\n</ul>\r\n', '150000.00', 0, 'royal1.jpg', '[\"royal2.png\"]', 0, 0, 4, 1, 1652780948),
(25, 11, 'Hạt Iskhan loại 2.5kg', '<p>Iskhan l&agrave; thương hiệu thức ăn hạt kh&ocirc; cho th&uacute; cưng <strong>thuộc c&ocirc;ng ty Daehan Feed của H&agrave;n Quốc</strong>. Hiện nay tr&ecirc;n thị trường thực phẩm cho ch&oacute; m&egrave;o, Iskhan chiếm một phần quan trọng v&agrave; đang ng&agrave;y c&agrave;ng được sự tin d&ugrave;ng của mọi người nu&ocirc;i ch&oacute; m&egrave;o.</p>\r\n\r\n<p>Th&agrave;nh phần chủ yếu gồm thịt c&aacute; hồi tươi, Omega 3, thảo mộc, c&agrave; chua v&agrave; nhiều tr&aacute;i c&acirc;y, rau củ quả tốt cho sức khỏe. Chất xơ, Glucosamine v&agrave; Chondroitin c&ugrave;ng h&ograve;a quyện lại tạo n&ecirc;n một sản phẩm đầy dinh dưỡng v&agrave; hiệu quả.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Hỗ trợ hệ miễn dịch v&agrave; tăng cường sức khỏe của xương</li>\r\n	<li>G&oacute;p phần chăm s&oacute;c tốt bộ l&ocirc;ng m&egrave;o th&ecirc;m su&ocirc;n mượt, &oacute;ng ả</li>\r\n	<li>Duy tr&igrave; đường ti&ecirc;u h&oacute;a khỏe mạnh nhờ c&oacute; th&agrave;nh phần rau củ quả tự nhi&ecirc;n</li>\r\n	<li>T&aacute;i tạo sụn khớp, gi&uacute;p m&egrave;o lu&ocirc;n năng động, tr&aacute;nh &ugrave; l&igrave;, mệt mỏi</li>\r\n</ul>\r\n', '350000.00', 0, 'iskhan2.png', '[\"iskhan1.jpg\"]', 2, 1, 9, 2, 1493983674),
(28, 13, 'Thuốc tiêu chảy cho mèo Bio', '<p><strong>Th&agrave;nh phần ghi tr&ecirc;n b&igrave; sản phẩm</strong></p>\r\n\r\n<p>- Gi&uacute;p ổn định hệ vi khuẩn c&oacute; lợi trong đường ruột.</p>\r\n\r\n<p>- Ngăn ngừa sự ph&aacute;t triển vi khuẩn c&oacute; hại, gi&uacute;p ph&ograve;ng ngừa vi&ecirc;m ruột, ti&ecirc;u chảy, ph&ugrave; đầu.</p>\r\n\r\n<p>- K&iacute;ch th&iacute;ch tăng tỉ lệ ti&ecirc;u h&oacute;a thức ăn, hỗ trợ ph&aacute;t triển, tr&aacute;nh đầy bụng</p>\r\n\r\n<p>-&nbsp;Men hỗ trợ ti&ecirc;u h&oacute;a&nbsp;ức chế vi khuẩn l&ecirc;n men thối, l&agrave;m giảm m&ugrave;i h&ocirc;i, nồng độ ammonia trong chuồng trại.</p>\r\n\r\n<p>C&aacute;ch d&ugrave;ng: 1,5g/ 1lit nước hoặc 3g/1kg thức ăn hay 1g/7-10kg thể trọng</p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; tho&aacute;ng, tr&aacute;nh nhiệt độ &gt;30 độ</p>\r\n', '10000.00', 0, 'tieuchaymeo.jpg', '[\"tieuchaymeo1.jpg\"]', 17, 1, 18, 4, 1493983674),
(29, 13, 'Viên bổ sung canxi cho chó, mèo', '<p>Canxi cho ch&oacute; m&egrave;o của h&atilde;ng PetAg ( Mỹ ) l&agrave; canxi h&agrave;ng đầu trong việc điều trị bệnh li&ecirc;n quan đến hệ thống khung xương của ch&oacute; m&egrave;o như sập b&agrave;n, hạ b&agrave;n, thiếu canxi, c&ograve;i xương v...v...</p>\r\n\r\n<p>- Với c&ocirc;ng thức c&acirc;n bằng kết hợp canxi h&agrave;m lượng cao với Phốt Pho v&agrave; Vitamin D trong c&ugrave;ng 1 vi&ecirc;n gi&uacute;p động vật c&oacute; thể hấp thụ canxi tối ưu để ph&aacute;t triển khung xương chắc khoẻ hoặc đ&aacute;p ứng nhu cầu canxi cho động vật đang trong thời k&igrave; sinh sản, mang thai.</p>\r\n\r\n<p>- Canxi Phốt pho dạng vi&ecirc;n n&eacute;n với m&ugrave;i vị hấp dẫn rất dễ sử dụng cho c&aacute;c loại động vật.</p>\r\n\r\n<p>Hướng dẫn sử dụng :</p>\r\n\r\n<p>+ Để bổ sung h&agrave;ng ng&agrave;y : d&ugrave;ng 1/4 vi&ecirc;n cho 2 kg trọng lượng cơ thể</p>\r\n\r\n<p>+ M&egrave;o điều trị thiếu canxi, liệt ch&acirc;n, m&egrave;o mẹ đang mang thai: 1/2 vi&ecirc;n cho 2 kg trọng lượng cơ thể. Ch&uacute; &yacute; : Kh&ocirc;ng được d&ugrave;ng qu&aacute; 1 vi&ecirc;n /ng&agrave;y</p>\r\n\r\n<p>- Lưu &yacute; khi sử dụng :</p>\r\n\r\n<p>+ N&ecirc;n cho d&ugrave;ng trước 10 giờ s&aacute;ng</p>\r\n\r\n<p>+ Vật nu&ocirc;i n&ecirc;n được tắm nắng h&agrave;ng ng&agrave;y hoặc nu&ocirc;i trong m&ocirc;i trường c&oacute; &aacute;nh s&aacute;ng mặt trời để cơ thể th&uacute; cưng tự tổng hợp được canxi, ph&aacute;t triển to&agrave;n diện.</p>\r\n\r\n<p>- Th&agrave;nh phần dinh dưỡng trong 1 vi&ecirc;n:</p>\r\n\r\n<p>+ Canxi .....360mg</p>\r\n\r\n<p>+ Photpho... 250mg</p>\r\n\r\n<p>+ Vitamin D3 .... 245IU</p>\r\n\r\n<p>- Bảo quản : để sản phẩm nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.</p>\r\n', '265000.00', 50000, 'canxi1.jpg', '[\"cu-cai-quan-kaki-thun-jogger-thoi-trang-mau-kem-qg06-1m4G3-3e0554_simg_d0daf0_800x1200_max.jpg\",\"cu-cai-quan-kaki-thun-jogger-thoi-trang-mau-kem-qg06-1m4G3-63841e_simg_d0daf0_800x1200_max.jpg\",\"cu-cai-quan-kaki-thun-jogger-thoi-trang-mau-kem-qg06-1m4G3-fd6df6_simg_d0daf0_800x1200_max.jpg\"]', 24, 1, 4, 1, 1493983674),
(50, 19, 'Bàn cào móng', '<pre>\r\n<strong>B&Agrave;N C&Agrave;O M&Oacute;NG M&Egrave;O CAO CẤP</strong>\r\n- Gi&uacute;p m&egrave;o giải tr&iacute;, l&agrave; nơi c&agrave;o cho sạch v&agrave; m&ograve;n bớt m&oacute;ng.\r\n- Gi&uacute;p m&oacute;ng m&egrave;o lu&ocirc;n trong t&igrave;nh trạng tốt\r\n- L&agrave;m bằng carton, gi&uacute;p cho bạn kh&ocirc;ng c&ograve;n lo m&oacute;ng m&egrave;o\r\nqu&aacute; sắc g&acirc;y đau cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.\r\n- M&egrave;o thường sử dụng m&oacute;ng vuốt để c&agrave;o đồ nội thất\r\nhoặc ghế sofa, khi c&oacute; m&oacute;n đồ chơi d&agrave;nh ri&ecirc;ng cho m&egrave;o\r\nch&uacute;ng ta kh&ocirc;ng cần lo lắng điều đ&oacute; nữa.\r\n- Di chuyển dễ d&agrave;ng, kh&ocirc;ng vương v&iacute;u.\r\nK&iacute;ch thước b&agrave;n c&agrave;o: 45cm x 21cm x 6cm ( d&agrave;i x rộng x cao )</pre>\r\n', '55000.00', 0, 'caomong2.jpg', '[\"caomong1.jpg\"]', 1, 0, 4, 1, 1652778226),
(52, 20, 'Yếm Thú Cưng', '<p>- T&ecirc;n sản phẩm: yếm cho th&uacute; cưng<br />\r\n- Chất liệu: Cotton Polyester<br />\r\n- M&agrave;u: V&agrave;ng<br />\r\n- T&iacute;nh năng: Phong c&aacute;ch c&ocirc;ng ch&uacute;a, chống bụi bẩn, thấm nước</p>\r\n\r\n<p>-Thắt nơ đẹp, m&agrave;u sắc tươi s&aacute;ng v&agrave; thiết kế ngọc trai ren l&agrave;m cho yếm th&uacute; cưng trở n&ecirc;n thanh lịch v&agrave; xinh đẹp, v&agrave; yếm th&uacute; cưng rất ph&ugrave; hợp để trang tr&iacute; cho th&uacute; cưng của bạn.<br />\r\n- Sử dụng vải mềm với sự kh&eacute;o l&eacute;o tuyệt vời, yếm th&uacute; cưng n&agrave;y bền v&agrave; thoải m&aacute;i cho th&uacute; cưng của bạn mặc, v&agrave; n&oacute; rất dễ giặt v&agrave; l&agrave;m kh&ocirc; n&oacute;.<br />\r\n- Được l&agrave;m từ chất liệu cotton polyester cao cấp, yếm cho th&uacute; cưng th&acirc;n thiện với da.<br />\r\n- C&oacute; 4 k&iacute;ch cỡ để lựa chọn: XS, S, M, L.<br />\r\n&nbsp;</p>\r\n', '75000.00', 0, 'yem.png', '[\"yem1.png\"]', 1, 0, 4, 1, 1652778816),
(53, 20, 'Vòng cổ phong cách', '<ul>\r\n	<li>T&ecirc;n sản phẩm: V&ograve;ng cổ c&oacute; chu&ocirc;ng chủ đề Nhật Bản</li>\r\n	<li>M&agrave;u sắc: Hoa đỏ, c&uacute;n trắng, c&uacute;n xanh dương T&acirc;y Tạng, m&egrave;o đỏ</li>\r\n	<li>Chất liệu: Nylon</li>\r\n	<li>D&agrave;nh cho: Mọi th&uacute; cưng</li>\r\n	<li>K&iacute;ch thước: S (20-25cm), M (25-30cm)</li>\r\n	<li>Đường k&iacute;nh d&acirc;y: 8mm</li>\r\n	<li>M&ugrave;a th&iacute;ch hợp: Tất cả c&aacute;c m&ugrave;a</li>\r\n	<li>Phong c&aacute;ch: Nhật Bản v&agrave; H&agrave;n Quốc</li>\r\n	<li>Trọng lượng: 13g</li>\r\n</ul>\r\n', '40000.00', 5000, 'vongcomeo1.png', '[\"vongco21.png\"]', 2, 0, 4, 1, 1652778909),
(56, 10, 'Hạt Catsrang loại 5kg', '<p>Một lựa chọn kinh tế kh&aacute;c cho sen c&oacute; xuất xứ từ H&agrave;n Quốc nữa l&agrave; hạt Catsrang. D&ograve;ng hạt n&agrave;y gi&aacute; tương đối mềm hơn c&aacute;c loại hạt H&agrave;n kh&aacute;c nhưng chất lượng cực kỳ thơm ngon, hấp dẫn. Hạt Catsrang c&oacute; 2 d&ograve;ng d&agrave;nh cho m&egrave;o con v&agrave; m&egrave;o trưởng th&agrave;nh. Gi&aacute; thức ăn cho m&egrave;o con th&igrave; hơi cao một ch&uacute;t nhưng loại phổ th&ocirc;ng cho m&egrave;o trưởng th&agrave;nh th&igrave; rất vừa t&uacute;i tiền v&agrave; tiết kiệm cho sen.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>Đ&acirc;y l&agrave; loại hạt c&oacute; m&ugrave;i thơm nhất trong d&ograve;ng hạt kh&ocirc; cho m&egrave;o từ Xứ Sở Kim Chi. Do m&ugrave;i thơm hấp dẫn m&egrave;o m&agrave; loại thức ăn hạt gi&aacute; rẻ cho m&egrave;o n&agrave;y rất được ưa chuộng.</li>\r\n	<li>Những boss sử dụng Catsrang c&oacute; phần tăng k&yacute; mạnh hơn so với c&aacute;c d&ograve;ng hạt H&agrave;n kh&aacute;c. C&oacute; thể v&igrave; h&agrave;m lượng đạm cao hơn một ch&uacute;t so với c&aacute;c loại hạt kh&aacute;c (31% trong khi c&aacute;c d&ograve;ng hạt kh&aacute;c l&agrave; 30%). Boss d&ugrave;ng hạt Catsrang thường tr&ograve;n trịa, mũm mĩm rất đ&aacute;ng y&ecirc;u.</li>\r\n	<li>Tuy nhi&ecirc;n, c&oacute; một vấn đề c&aacute;c boss m&egrave;o thường gặp phải khi ăn Catsrang ch&iacute;nh l&agrave; ti&ecirc;u h&oacute;a. Nhiều b&eacute; bụng yếu dễ bị ti&ecirc;u chảy khi mới sử dụng Catsrang.</li>\r\n</ul>\r\n\r\n<p>Đối tượng sử dụng: m&egrave;o con v&agrave; m&egrave;o lớn c&oacute; c&ocirc;ng thức hạt ri&ecirc;ng, th&iacute;ch hợp sử dụng h&agrave;ng ng&agrave;y.</p>\r\n', '350000.00', 15000, 'catrang.jpg', '[\"catrang2.jpg\"]', 1, 0, 9, 2, 1652779940),
(57, 10, 'Hạt Me-O loại 400g', '<p>Hạt Me-O l&agrave; một trong những loại thức ăn hạt gi&aacute; rẻ cho m&egrave;o thường xuất hiện tr&ecirc;n quầy h&agrave;ng của si&ecirc;u thị th&uacute; cưng v&agrave; ph&ograve;ng kh&aacute;m th&uacute; y. Kh&aacute;c với 3 loại ở tr&ecirc;n, Me-O xuất ph&aacute;t từ Th&aacute;i Lan v&agrave; sản xuất đa dạng c&aacute;c sản phẩm d&agrave;nh cho m&egrave;o.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>M&ugrave;i hạt Me-O rất đậm đ&ocirc;i khi l&agrave; hắc với c&aacute;c sen nhưng c&oacute; thể thu h&uacute;t m&egrave;o. Ngo&agrave;i ra, hạt Me-O c&oacute; nhiều m&agrave;u sắc tr&ocirc;ng cũng kh&aacute; hấp dẫn mặc d&ugrave; boss chỉ ăn hạt v&igrave; m&ugrave;i thơm chứ kh&ocirc;ng phải m&agrave;u sắc. Me-O cũng gi&uacute;p m&egrave;o l&ecirc;n c&acirc;n v&agrave; tr&ograve;n người hơn.</li>\r\n	<li>Nhiều trường hợp m&egrave;o bị ti&ecirc;u chảy hoặc &oacute;i khi chuyển sang d&ograve;ng hạt n&agrave;y. Tuy nhi&ecirc;n kh&ocirc;ng qu&aacute; nhiều, số đ&ocirc;ng m&egrave;o vẫn ti&ecirc;u h&oacute;a v&agrave; hấp thu kh&aacute; tốt.</li>\r\n</ul>\r\n\r\n<p>Đối tượng n&ecirc;n sử dụng: m&egrave;o con, m&egrave;o trưởng th&agrave;nh, m&egrave;o Ba Tư,...</p>\r\n', '50000.00', 5000, 'meoO.jpg', '[\"meoO1.jpg\",\"meoO3.jpg\"]', 1, 0, 4, 1, 1652780042),
(58, 10, 'Hạt Hello Cat loại 400g', '<p>Hạt Hello Cat cũng c&oacute; xuất xứ từ Th&aacute;i Lan. Tuy ra mắt chưa l&acirc;u nhưng cũng được kh&aacute; nhiều sen ưa chuộng v&agrave; cũng l&agrave; một loại thức ăn hạt gi&aacute; rẻ cho m&egrave;o m&agrave; bạn c&oacute; thể lựa chọn cho boss. C&aacute;ch đ&oacute;ng g&oacute;i thức ăn n&agrave;y vừa l&agrave; điểm cộng vừa l&agrave; điểm trừ cho sản phẩm. Hạt Hello Cat chỉ c&oacute; duy nhất 1 size 10kg n&ecirc;n một lần mua phải mua hẳn 10kg hoặc chia lại với bạn kh&aacute;c. Tuy nhi&ecirc;n, trong một bao 10kg l&agrave; c&aacute;c t&uacute;i nhỏ 400gram gi&uacute;p bạn bảo quản hạt tốt hơn, boss ăn l&acirc;u cũng kh&ocirc;ng lo bị mất m&ugrave;i.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>Hạt vị c&aacute; ngừ kh&ocirc;ng qu&aacute; đặc biệt nhưng kh&ocirc;ng bị hăng hay hắc, cũng tương tự như c&aacute;c loại hạt kh&ocirc; cho m&egrave;o kh&aacute;c. Tuy nhi&ecirc;n, do thơm m&ugrave;i c&aacute; n&ecirc;n c&aacute;c boss đều rất m&ecirc; (theo quảng c&aacute;o l&agrave; những b&eacute; m&egrave;o k&eacute;n ăn nhất cũng đều th&iacute;ch). M&agrave;u v&agrave;ng nhạt hơn so với c&aacute;c loại hạt kh&ocirc; kể tr&ecirc;n nhưng c&aacute;c boss vẫn kh&aacute; th&iacute;ch. K&iacute;ch thước hạt cũng nhỏ n&ecirc;n m&egrave;o dễ nhai.</li>\r\n	<li>C&aacute;c boss trung th&agrave;nh với Hello Cat cũng l&ecirc;n c&acirc;n đều đặn v&agrave; c&oacute; th&acirc;n h&igrave;nh như sen mong ước, tr&ograve;n trịa v&agrave; đ&aacute;ng y&ecirc;u.</li>\r\n	<li>Ngo&agrave;i ra, cũng chưa c&oacute; trường hợp n&agrave;o c&aacute;c boss bị ti&ecirc;u chảy khi sử dụng Hello Cat n&ecirc;n c&aacute;c sen c&oacute; thể y&ecirc;n t&acirc;m về khoản n&agrave;y nh&eacute;.</li>\r\n</ul>\r\n\r\n<p>Đối tượng sử dụng: m&egrave;o con v&agrave; m&egrave;o trưởng th&agrave;nh, những boss k&eacute;n ăn.</p>\r\n', '26000.00', 0, 'helocat.jpg', '[\"hellocat.jpg\"]', 0, 0, 4, 1, 1652780109),
(59, 10, 'Hạt Minino loại 1kg', '<p>+ Với h&agrave;m lượng dinh dưỡng vừa đủ gi&uacute;p m&egrave;o cưng ph&aacute;t triển ho&agrave;n thiện<br />\r\n+ Sản phẩm từ thịt c&aacute; ngừ.<br />\r\n+ Lượng vitamin thiết yếu.<br />\r\n+ L&uacute;a m&igrave;, rau củ sấy kh&ocirc;,&hellip;<br />\r\nGi&uacute;p k&iacute;ch th&iacute;ch ăn v&agrave; hấp thụ dinh dưỡng tốt</p>\r\n\r\n<p>H&igrave;nh d&aacute;ng thức ăn c&oacute; h&igrave;nh tr&ograve;n trụ giống hạt Canin Fit 32 ph&ugrave; hợp với c&aacute;c giống M&egrave;o</p>\r\n\r\n<p>L&agrave;m giảm l&ocirc;ng v&oacute;n cục trong hệ ti&ecirc;u h&oacute;a<br />\r\nTăng cường dưỡng chất bảo vệ cơ thể<br />\r\nGiảm hiện tượng bị giảm thị lực v&agrave; th&iacute;nh lực của M&egrave;o</p>\r\n', '40000.00', 0, 'mino.png', '[]', 0, 0, 4, 1, 1652780431),
(62, 11, 'Hạt Whiskas loại 1.2kg', '<p>Thương hiệu Whiskas trước đ&acirc;y c&ograve;n gọi l&agrave; Kal Kan chuy&ecirc;n cung cấp c&aacute;c sản phẩm dinh dưỡng cho m&egrave;o, được phổ biến tr&ecirc;n khắp thế giới, <strong>thuộc sở hữu tập đo&agrave;n Mỹ Mar Incorporated</strong>.</p>\r\n\r\n<p>Hạt Whiskas&nbsp;c&oacute; th&agrave;nh phần dinh dưỡng gồm c&oacute; DHA, Omega 3 v&agrave; 6, chất b&eacute;o, chất đạm, sắt, kẽm v&agrave; c&aacute;c kho&aacute;ng chất tốt cho sức khỏe.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Ph&aacute;t triển tối đa tr&iacute; n&atilde;o, thể lực</li>\r\n	<li>Tăng cường sức đề kh&aacute;ng, cải thiện hệ miễn dịch</li>\r\n	<li>Tăng khả năng ti&ecirc;u h&oacute;a v&agrave; hấp thu chất dinh dưỡng</li>\r\n	<li>Ngăn ngừa c&aacute;c bệnh l&yacute; về da v&agrave; l&ocirc;ng thường gặp ở m&egrave;o</li>\r\n</ul>\r\n', '150000.00', 5000, 'wkas1.jpg', '[\"wkas2.png\"]', 1, 0, 4, 1, 1652781206),
(63, 12, 'Pate Whiskas loại 85g', '<p><strong>Pate Whiskas cho m&egrave;o l&agrave; 1 loại thức ăn</strong>&nbsp;ngon tuyệt hảo, gi&agrave;u dưỡng chất gi&uacute;p m&egrave;o ăn ngon miệng, mau lớn.</p>\r\n\r\n<p>Whiskas với c&ocirc;ng thức cải tiến cung cấp chế độ&nbsp; &nbsp;dưỡng c&acirc;n bằng 100%.</p>\r\n\r\n<p><strong>Pate&nbsp; whiskas cho m&egrave;o</strong>&nbsp;với nhiều&nbsp;hương vị như&nbsp;thịt g&agrave;, c&aacute; hồi, c&aacute; thu, c&aacute; biển&nbsp;c&aacute; ngừ gi&uacute;p l&agrave;m h&agrave;i l&ograve;ng những ch&uacute; m&egrave;o nh&agrave; bạn, ngay cả những ch&uacute; m&egrave;o k&eacute;n ăn nhất.&nbsp;</p>\r\n\r\n<p>Gi&uacute;p l&agrave;m sạch răng của những ch&uacute; m&egrave;o nh&agrave; bạn.</p>\r\n\r\n<p>Bổ sung canxi cho những ch&uacute; m&egrave;o nh&agrave; bạn, gi&uacute;p răng v&agrave; xương chắc khỏe.</p>\r\n\r\n<p>Bổ sung DHA gi&uacute;p tr&iacute; n&atilde;o ph&aacute;t triển tốt.</p>\r\n\r\n<p><strong>TH&Agrave;NH PHẦN</strong></p>\r\n\r\n<p>C&aacute; ngừ, thịt g&agrave;, DHA, kho&aacute;ng chất, Vitamin...</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong></p>\r\n\r\n<ul>\r\n	<li>Bảo quản phần thức ăn chưa sử dụng hết trong tủ lạnh kh&ocirc;ng qu&aacute; 3 ng&agrave;y.</li>\r\n	<li>Khi sử dụng, h&acirc;m n&oacute;ng thức ăn rồi để nguội.</li>\r\n	<li>D&ugrave;ng được cho m&egrave;o mọi lứa tuổi.</li>\r\n</ul>\r\n\r\n<p>-Trọng lượng:&nbsp;g&oacute;i 85G</p>\r\n\r\n<p><strong>-Hướng Dẫn Sử Dụng</strong>: sử dụng ngay. Bảo quản phần thức ăn chưa sử dụng hết trong tủ lạnh kh&ocirc;ng qu&aacute; 3 ng&agrave;y. Khi sử dụng, h&acirc;m n&oacute;ng thức ăn rồi để nguội.</p>\r\n', '11000.00', 1000, 'patewk.jpg', '[\"patewk2.jpg\"]', 2, 0, 4, 1, 1652781439),
(65, 12, 'Xúc xích cho mèo đủ các vị gói 450g', '<p><em>Đồ ăn vặt x&uacute;c x&iacute;ch cho ch&oacute; m&egrave;o</em>&nbsp;&ndash; sản phẩm gi&agrave;u dinh dưỡng, an to&agrave;n thực phẩm. Được l&agrave;m từ những nguy&ecirc;n liệu sạch, tự nhi&ecirc;n rất an to&agrave;n khi sử dụng. Sản phẩm lu&ocirc;n được mọi nh&agrave; tin d&ugrave;ng. Bổ sung những chất c&ograve;n thiếu trong hạt ăn thường ng&agrave;y.</p>\r\n\r\n<p><strong>C&Ocirc;NG DỤNG</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>X&uacute;c x&iacute;ch cho ch&oacute; m&egrave;o</strong>&nbsp;sẽ gi&uacute;p cho th&uacute; cưng của bạn ăn ngon miệng</p>\r\n	</li>\r\n	<li>\r\n	<p>Cung cấp canxi&nbsp;v&agrave; kho&aacute;ng chất</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p th&uacute; cưng của bạn lu&ocirc;n vui vẻ, năng động</p>\r\n	</li>\r\n	<li>\r\n	<p>Đồ ăn vặt cho ch&oacute; sẽ hạn chế th&uacute; cưng cắn ph&aacute; đồ đạc trong nh&agrave;</p>\r\n	</li>\r\n</ul>\r\n', '30000.00', 0, 'xxmeo0.jpg', '[]', 0, 0, 4, 1, 1652782429),
(66, 12, 'Soup cho mèo Ciao Grilled Tuna', '<p><strong>M&ocirc; tả:</strong></p>\r\n\r\n<p>Soup cho m&egrave;o&nbsp;<a href=\"https://www.petmart.vn/thuong-hieu/ciao\">CIAO&nbsp;</a>&nbsp;Grilled Tuna vị c&aacute; ngừ nướng liền k&iacute;ch th&iacute;ch vị gi&aacute;c tiềm ẩn của m&egrave;o, gi&uacute;p m&egrave;o h&aacute;u ăn hơn v&agrave; cung cấp bổ sung th&ecirc;m c&aacute;c dưỡng chất tốt nhất cho m&egrave;o.</p>\r\n\r\n<p><strong>Th&agrave;nh phần dinh dưỡng:</strong></p>\r\n\r\n<p>Thịt c&aacute; ch&eacute;p 23%, tinh bột, lễ c&aacute; ch&eacute;p 1%, chất l&agrave;m thơm miệng c&aacute; ch&eacute;p, Collagen c&aacute; 0.1%, Vitamin E, chiết xuất tr&agrave; xanh 100mg/kg, men gạo đỏ&hellip; Gi&aacute; trị đảm bảo của th&agrave;nh phần sản phẩm dựa tr&ecirc;n chất kh&ocirc;, kh&ocirc;ng bao gồm độ ẩm.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>Sản phẩm l&agrave; dạng&nbsp;<a href=\"https://www.petmart.vn/danh-muc/meo/thuc-an-meo/sup-thuong-meo\">s&uacute;p thưởng cho m&egrave;o&nbsp;</a>&nbsp;/ pate cho m&egrave;o đ&atilde; say nhuyễn để ăn vặt v&agrave; bữa phụ. C&oacute; thể cho ăn tối thiểu 1 ng&agrave;y 2 lần, mỗi lần khoảng 2 đến 3 t&uacute;i. Hoặc điều chỉnh theo nhu cầu v&agrave; hoạt động thực tế của m&egrave;o. Hạn sử dụng xem ở ph&iacute;a sau của bao b&igrave;.</p>\r\n', '25000.00', 0, 'ciao1.jpg', '[\"ciao.jpg\"]', 0, 1, 4, 1, 1652782780),
(64, 12, 'Pate Me-O loại 80g', '<p>- Pate cho m&egrave;o Me-O&nbsp;&nbsp;l&agrave; dạng thức ăn ướt c&oacute; h&agrave;m lượng dinh dưỡng đầy đủ v&agrave; c&acirc;n bằng cho m&egrave;o. Sản phẩm được m&egrave;o y&ecirc;u th&iacute;ch bởi hương vị thơm ngon v&agrave; dễ ti&ecirc;u h&oacute;a</p>\r\n\r\n<p>- Thức ăn Pate cho m&egrave;o Me-O&nbsp;&nbsp;l&agrave; thức ăn cho m&egrave;o của h&atilde;ng Me-O đ&atilde; được Văn ph&ograve;ng kiểm định thức ăn vật nu&ocirc;i (AAFCO) v&agrave; Hội đồng Kiểm định quốc gia (NRC) của Mĩ chứng nhận đạt chuẩn chất lượng</p>\r\n\r\n<p>-ĐẶC ĐIỂM V&Agrave; LỢI &Iacute;CH</p>\r\n\r\n<ul>\r\n	<li>Gi&uacute;p l&agrave;m sạch răng của những ch&uacute; m&egrave;o nh&agrave; bạn.</li>\r\n	<li>Bổ sung canxi cho những ch&uacute; m&egrave;o nh&agrave; bạn, gi&uacute;p răng v&agrave; xương chắc khỏe.</li>\r\n	<li>Bổ sung DHA gi&uacute;p tr&iacute; n&atilde;o ph&aacute;t triển tốt.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '12000.00', 2000, 'patemeo.jpg', '[\"patemeo2.jpg\"]', 1, 0, 4, 1, 1652782138);
INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(69, 15, 'Cát vệ sinh Germany Cat Litter loại 5L', '<p>Bạn đ&atilde; chọn được loại c&aacute;t vệ sinh n&agrave;o cho b&eacute; m&egrave;o kh&ocirc;ng? Vậy th&igrave; d&ograve;ng c&aacute;t vệ sinh Đức cho m&egrave;o ch&iacute;nh l&agrave; sự lựa chọn rất hợp l&yacute; cho bạn đ&oacute; ạ!. Hiện tại<strong>&nbsp;</strong>sản phẩm<strong>&nbsp;c&aacute;t Germany</strong>&nbsp;đang nổi như cồn v&igrave; h&uacute;t tốt, kh&ocirc;ng b&aacute;m th&agrave;nh v&agrave; đặc trưng c&oacute; m&ugrave;i thơm l&acirc;u d&agrave;i. C&aacute;t được sản xuất từ d&acirc;y chuyền hiện đại c&ocirc;ng nghệ của Đức với kh&aacute; nhiều ưu điểm vượt trội. 98% bentonite tự nhi&ecirc;n + 2% Activated Carbon. C&ocirc;ng nghệ khử khuẩn an to&agrave;n tốt cho sức khỏe m&egrave;o y&ecirc;u. Th&acirc;n thiện m&ocirc;i trường.</p>\r\n\r\n<p><strong>Điểm nổi bật của sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li>Với 3 m&ugrave;i hương c&aacute;t thơm m&aacute;t l&agrave; tr&aacute;i c&acirc;y: t&aacute;o, chanh v&agrave; hạt c&agrave; ph&ecirc; - m&ugrave;i hương c&aacute;t Đức thơm l&acirc;u tới h&agrave;ng tuần kh&ocirc;ng giảm nhờ phương ph&aacute;p phun bột m&ugrave;i mới.</li>\r\n	<li>C&aacute;t l&aacute; mảnh, mịn m&agrave;ng, kh&ocirc;ng d&iacute;nh người v&agrave; kh&ocirc;ng tung bụi m&ugrave; mịt.</li>\r\n	<li>V&oacute;n cục nhanh.</li>\r\n	<li>Khử m&ugrave;i tốt hơn với th&agrave;nh phần than hoạt t&iacute;nh (2%) kết hợp với m&ugrave;i hương tươi mới.</li>\r\n	<li>C&aacute;t đổi m&agrave;u: Đổi th&agrave;nh m&agrave;u n&acirc;u đậm khi gặp ẩm - dễ d&agrave;ng thay rửa.</li>\r\n	<li>An to&agrave;n sử dụng.</li>\r\n	<li>C&aacute;t mở bao b&igrave; cả tuần cũng kh&ocirc;ng bay m&ugrave;i - hiếm c&oacute; kh&oacute; t&igrave;m so với chất lượng c&aacute;t đại tr&agrave; hiện tại.</li>\r\n	<li>C&aacute;t Đức mới kh&ocirc;ng l&agrave;m ảnh hưởng tới sức khỏe người d&ugrave;ng, an to&agrave;n khi sử dụng cho cả chủ v&agrave; m&egrave;o.</li>\r\n	<li>T&uacute;i d&agrave;y dặn.</li>\r\n</ul>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Xem tr&ecirc;n bao b&igrave; sản phẩm.</li>\r\n</ul>\r\n', '60000.00', 5000, 'ger1.jpg', '[\"ger2.jpg\"]', 1, 0, 4, 1, 1652786201),
(71, 10, 'Hạt Apro loại 500g', '<p><a href=\"https://azpet.vn/hat-apro-cho-meo\"><strong>Hạt Apro cho m&egrave;o</strong></a>&nbsp;gi&aacute; th&agrave;nh phải chăng v&agrave; l&agrave; sản phẩm c&oacute; th&agrave;nh phần dinh dưỡng cao. Ph&ugrave; hợp với qu&aacute; tr&igrave;nh tăng trưởng v&agrave; ph&aacute;t triển với m&egrave;o ở nhiều giai đoạn. Hạt apro cho m&egrave;o với nhiều ưu điểm như sau:</p>\r\n\r\n<p>&ndash; Đ&acirc;y l&agrave; sản phẩm c&oacute; hương vị đặc biệt v&ocirc; c&ugrave;ng hấp dẫn, k&iacute;ch th&iacute;ch thị gi&aacute;c của m&egrave;o gi&uacute;p m&egrave;o ăn ngon hơn ,nhiều hơn.</p>\r\n\r\n<p>&ndash; Hỗ trợ mượt l&ocirc;ng, m&agrave;u l&ocirc;ng s&aacute;ng, chống rụng l&ocirc;ng.</p>\r\n\r\n<p>&ndash; Cải thiện t&igrave;nh trạng chậm lớn, gi&uacute;p m&egrave;o tăng c&acirc;n hiệu quả.</p>\r\n\r\n<p>&ndash; Tăng cường chất xơ, kho&aacute;ng chất cải thiện hệ ti&ecirc;u h&oacute;a tối ưu</p>\r\n\r\n<p>&ndash; Dễ nhai, gi&uacute;p bảo vệ răng tốt hơn.</p>\r\n', '25000.00', 0, 'apro1.jpg', '[\"apro2.jpg\"]', 1, 0, 4, 1, 1652952170),
(72, 11, 'Hạt Fitmin loại 400g', '<p>Hạt fitmin cho m&egrave;o được biết đến l&agrave; sản phẩm thuộc ph&acirc;n kh&uacute;c cao cấp v&agrave; c&oacute; gi&aacute; tốt cho người mua. Xem c&ocirc;ng dụng hạt fitmin cho m&egrave;o dưới đ&acirc;y bạn sẽ biết được l&iacute; do tại sao đ&acirc;y l&agrave; loại hạt được mọi người tin tưởng lựa chọn cho boss nh&agrave; m&igrave;nh.</p>\r\n\r\n<p>&ndash; Sản phẩm c&oacute; chứa c&aacute;c vitain nh&oacute;m A, B, D v&agrave; kho&aacute;ng chất &ndash; đặc biệt l&agrave; iốt, rất cần thiết cho chức năng tuyến gi&aacute;p.</p>\r\n\r\n<p>&ndash; Nguồn cung cấp chất đạm, chất b&eacute;o c&oacute; gi&aacute; trị sinh học cao từ thịt c&aacute; tr&iacute;ch tươi.</p>\r\n\r\n<p>&ndash; Chống l&atilde;o h&oacute;a, giảm cholesterol, giảm nguy cơ đột qụy, tăng cường sức khỏe thị lực, tốt cho hệ ti&ecirc;u h&oacute;a nhờ h&agrave;m lượng đạm, axit b&eacute;o omega-3 v&agrave; vitamin D, Lycium (Goji) cao.</p>\r\n\r\n<p>&ndash;&nbsp; Hỗ trợ hệ miễn dịch chức năng gan v&agrave; hệ ti&ecirc;u h&oacute;a, gi&uacute;p giảm m&ugrave;i h&ocirc;i của ph&acirc;n v&agrave; nước tiểu.</p>\r\n\r\n<p>&ndash; Tăng hệ miễn dịch v&agrave; cải thiện thị lực của vật nu&ocirc;i.</p>\r\n\r\n<p>&ndash; Bảo vệ răng miệng , hệ ti&ecirc;u h&oacute;a trước sự tấn c&ocirc;ng của c&aacute;c vi khuẩn th&uacute;c đẩy sự ti&ecirc;u h&oacute;a nhờ c&aacute;c th&agrave;nh phần thực vật c&oacute; lợi trong sản phẩm.</p>\r\n', '100000.00', 5000, 'fitmin.jpg', '[\"fitmin1.jpg\"]', 1, 0, 4, 1, 1652952412),
(73, 15, 'Cát vệ sinh IRIS KFAG100 10L', '<p>C&aacute;t vệ sinh cho m&egrave;o si&ecirc;u v&oacute;n nh&atilde;n hiệu IRIS nổi tiếng nhập khẩu trực tiếp từ Nhật Bản. C&aacute;t đất vệ sinh si&ecirc;u v&oacute;n cho m&egrave;o &ndash; IRIS thuộc chủng loại c&aacute;t Bentonite (loại kho&aacute;ng s&eacute;t c&oacute; t&iacute;nh h&oacute;a keo cao).</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<p>&ndash; C&ocirc;ng dụng &ldquo;Nhanh v&oacute;n th&agrave;nh cục + khử m&ugrave;i h&ocirc;i&rdquo;: C&aacute;t vệ sinh cho m&egrave;o Bentonite nhanh v&oacute;n th&agrave;nh cục v&agrave; c&oacute; khả năng khử m&ugrave;i h&ocirc;i tối ưu đồng thời c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn tốt hơn rất nhiều so với c&aacute;c loại c&aacute;t m&egrave;o th&ocirc;ng thường gi&aacute; rẻ kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p>&ndash; C&aacute;t m&egrave;o IRIS c&oacute; chứa th&ecirc;m th&agrave;nh phần ion bạc kh&aacute;ng khuẩn khống chế được sự h&igrave;nh th&agrave;nh của vi khuẩn.</p>\r\n\r\n<p>&ndash; Lực h&uacute;t mạnh hơn rất nhiều lần so với c&aacute;c loại c&aacute;t th&ocirc;ng thường kh&aacute;c, sau khi gặp nước tiểu sẽ lập tức ngưng kết lại, tiết kiệm hơn, kinh tế hơn.</p>\r\n\r\n<p>&ndash; Loại bỏ m&ugrave;i h&ocirc;i từ ph&acirc;n v&agrave; nước tiểu của m&egrave;o hiệu quả r&otilde; rệt. Hợp chất Bentonite thấm h&uacute;t chất thải hiệu quả, loại bỏ m&ugrave;i h&ocirc;i, ngăn ngừa m&ugrave;i h&ocirc;i quay trở lại.</p>\r\n', '160000.00', 0, 'iris.jpg', '[]', 1, 0, 4, 1, 1652953104),
(74, 15, 'Cát vệ sinh Nhật Bản Maru 10L', '<p>C&aacute;t được l&agrave;m từ 100% Bentonite tự nhi&ecirc;n v&agrave; th&ecirc;m dược liệu thi&ecirc;n nhi&ecirc;n c&aacute;c m&ugrave;i thơm dễ chịu.</p>\r\n\r\n<p>X&oacute;a tan đi m&ugrave;i h&ocirc;i kh&oacute; chịu của ch&oacute; m&egrave;o mang đến cho bạn một m&ocirc;i trường dịu m&aacute;t với m&ugrave;i thơm của hương t&aacute;o.</p>\r\n\r\n<p>Được sản xuất tr&ecirc;n quy tr&igrave;nh ti&ecirc;u chuẩn nghi&ecirc;m ngặt của Nhật Bản. Bạn d&ugrave;ng c&oacute; thể y&ecirc;n t&acirc;m về chất lượng v&agrave; ti&ecirc;u chuẩn.</p>\r\n\r\n<p><strong>Ưu điểm:</strong></p>\r\n\r\n<p>&ndash; T&uacute;i lớn hơn gi&aacute; kh&ocirc;ng đổi.</p>\r\n\r\n<p>&ndash; Khử&nbsp;m&ugrave;i đặc biệt hiệu quả.</p>\r\n\r\n<p>&ndash; H&uacute;t nước ho&agrave;n to&agrave;n chất thải ph&acirc;n v&agrave; nước tiểu.</p>\r\n\r\n<p>&ndash; Si&ecirc;u v&oacute;n cục dễ d&agrave;ng dọn dẹp.</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng bụi bẩn v&agrave; d&iacute;nh ch&acirc;n th&uacute; cưng.</p>\r\n\r\n<p>&ndash; Kh&aacute;ng khuẩn cực mạnh an to&agrave;n cho bạn v&agrave; th&uacute; cưng.</p>\r\n\r\n<p>&ndash; C&oacute; c&aacute;c m&ugrave;i hương thơm tự nhi&ecirc;n: Cafe, T&aacute;o, Chanh, Lavender.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG:</strong></p>\r\n\r\n<p>&ndash; Đổ C&aacute;t Vệ Sinh v&agrave;o khay, chậu với độ d&agrave;y khoảng 5cm.</p>\r\n\r\n<p>&ndash; Khi gặp chất thải của Ch&oacute; hoặc M&egrave;o. C&aacute;t v&oacute;n th&agrave;nh cục kh&ocirc;ng bị vỡ v&agrave; bết.</p>\r\n\r\n<p>&ndash; D&ugrave;ng Xẻng dọn phần v&oacute;n cục cho v&agrave;o th&ugrave;ng r&aacute;c.</p>\r\n\r\n<p>&ndash; Bổ xung th&ecirc;m C&aacute;t Vệ Sinh v&agrave;o khay, chậu để duy tr&igrave; lượng C&aacute;t trong khay 5cm.</p>\r\n', '100000.00', 0, 'maru.jpg', '[]', 1, 0, 4, 1, 1652953409);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'slide1.png', 'http://localhost/sillycats/khuyen-mai', 1, '2017-04-25 15:24:43'),
(4, '2', 'slide2.jpg', 'http://localhost/sillycats/thuc-an-cho-meo-c7', 4, '2017-04-25 15:36:41'),
(5, '3', 'slide3.png', 'http://localhost/sillycats/product/view/57', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(13, 1, 0, 'Nguyễn Thị Trang', 'trangcute@gmail.com', '0566884774', 'Quảng Ninh', 'shop gói hàng cẩn thận giúp mình', '120000.00', '', 1652950551),
(14, 0, 8, 'Thuần Vũ', 'kaka@gmail.com', '0333888666', 'Hà Đông - Hà Nội', 'mong shop giao sớm ', '95000.00', '', 1652954175),
(15, 1, 8, 'Thuần Vũ', 'kaka@gmail.com', '0333888666', 'Hà Đông - Hà Nội', 'đóng gói cẩn thận giúp mình ạ', '75000.00', '', 1652954208),
(16, 0, 8, 'Thuần Vũ', 'kaka@gmail.com', '0333888666', 'Hà Đông - Hà Nội', 'ko biết nói gì', '30000.00', '', 1652955226);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(6, 'Trần Kiến Minh', 'kienminh99@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01201212222', 'Thủy Nguyên - Hải Phòng', 2147483647),
(8, 'Thuần Vũ', 'kaka@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0333888666', 'Hà Đông - Hà Nội', 2022),
(9, 'Nguyễn Thị Trang', 'trangcute@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '054879762', 'Nam Định', 2022);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
