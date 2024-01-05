-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 05, 2024 lúc 01:10 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_10_19_032857_create_tbl_admin_table', 1),
(5, '2023_11_04_120205_create_tbl_category_product', 2),
(6, '2023_11_06_115938_create_tbl_brand_product', 3),
(7, '2023_11_07_041501_create_tbl_product', 4),
(8, '2023_11_20_050926_tbl_customer', 5),
(9, '2023_11_20_153026_tbl_shipping', 6),
(10, '2023_11_21_153442_tbl_payment', 7),
(11, '2023_11_21_153501_tbl_order', 7),
(12, '2023_11_21_153529_tbl_order_details', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin Test1', '0123456789', '2023-10-30 08:07:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'GAN', 'Thương hiệu Rubik hàng đầu thế giới, nổi tiếng với các sản phẩm chất lượng cao, hiệu suất tốt và thiết kế độc đáo. C2', 0, NULL, NULL),
(2, 'MoYu', 'Thương hiệu Rubik lớn thứ hai thế giới, nổi tiếng với các sản phẩm giá cả phải chăng và chất lượng tốt.', 0, NULL, NULL),
(3, 'QiYi', 'Thương hiệu Rubik phổ biến, nổi tiếng với các sản phẩm đa dạng và nhiều tính năng.', 0, NULL, NULL),
(5, 'ZyO', 'Dù mới gia nhập sân chơi Rubik chưa lâu nhưng ZyO Rubik đã phát triển nhanh chóng và chạm đến lòng tin của khách hàng bằng những sản phẩm chất lượng, trải nghiệm mua sắm tối ưu và những giải đấu chuyên nghiệp với quy mô hàng đầu tại Việt Nam. ZyO Rubik không chỉ hướng đến chất lượng sản phẩm tốt nhất, nâng cao chất lượng dịch vụ chăm sóc khách hàng mà còn mong muốn phát triển cộng đồng Rubik tại Việt Nam ngày càng lớn mạnh.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Rubik phổ thông', 'Test 1-C', 0, NULL, NULL),
(2, 'Rubik biến thể', 'Test 2nd', 0, NULL, NULL),
(3, 'Rubik sưu tầm', 'Test 3', 0, NULL, NULL),
(5, 'Phụ kiện Rubik', 'Test 4-A', 0, NULL, NULL),
(7, 'Test', 'Demo thêm danh mục', 1, NULL, NULL),
(8, 'Demo 1', 'Demo admin', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(7, 'Phạm Hoàng Phát', 'ad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 1, '1817200.00', 'Đang chờ xử lý', NULL, NULL),
(2, 7, 5, 2, '1817200.00', 'Đang chờ xử lý', NULL, NULL),
(3, 7, 5, 3, '1817200.00', 'Đang chờ xử lý', NULL, NULL),
(4, 7, 5, 4, '1817200.00', 'Đang chờ xử lý', NULL, NULL),
(5, 7, 5, 5, '209000.00', 'Đang chờ xử lý', NULL, NULL),
(6, 7, 6, 6, '0.00', 'Đang chờ xử lý', NULL, NULL),
(7, 7, 11, 11, '1650000.00', 'Đang chờ xử lý', NULL, NULL),
(8, 7, 13, 12, '2310000.00', 'Đang chờ xử lý', NULL, NULL),
(9, 7, 14, 13, '330000.00', 'Đang chờ xử lý', NULL, NULL),
(10, 7, 15, 14, '3300000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_sale_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sale_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'GAN 14 MAGLEV UV', '1500000', 1, NULL, NULL),
(2, 2, 7, 'Rubik 2x2x2 GAN monster go Stickerless', '38000', 4, NULL, NULL),
(3, 3, 4, 'GAN 14 MAGLEV UV', '1500000', 1, NULL, NULL),
(4, 3, 7, 'Rubik 2x2x2 GAN monster go Stickerless', '38000', 4, NULL, NULL),
(5, 4, 4, 'GAN 14 MAGLEV UV', '1500000', 1, NULL, NULL),
(6, 4, 7, 'Rubik 2x2x2 GAN monster go Stickerless', '38000', 4, NULL, NULL),
(7, 5, 7, 'Rubik 2x2x2 GAN monster go Stickerless', '38000', 5, NULL, NULL),
(8, 7, 2, 'GAN 14 MAGLEV UV', '1500000', 1, NULL, NULL),
(9, 8, 22, 'Rubik QiYi Valk 3 Elite M 3x3 Black (Cao cấp có nam châm)', '700000', 3, NULL, NULL),
(10, 9, 11, 'Thảm kê Rubik GAN Timer Mat 30x30 cm', '150000', 2, NULL, NULL),
(11, 10, 12, 'MF8 TWINS CUBE (BLACK STICKERED)', '1000000', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '1', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '3', 'Đang chờ xử lý', NULL, NULL),
(5, '3', 'Đang chờ xử lý', NULL, NULL),
(6, '3', 'Đang chờ xử lý', NULL, NULL),
(7, '3', 'Đang chờ xử lý', NULL, NULL),
(8, '3', 'Đang chờ xử lý', NULL, NULL),
(9, '3', 'Đang chờ xử lý', NULL, NULL),
(10, '3', 'Đang chờ xử lý', NULL, NULL),
(11, '3', 'Đang chờ xử lý', NULL, NULL),
(12, '3', 'Đang chờ xử lý', NULL, NULL),
(13, '3', 'Đang chờ xử lý', NULL, NULL),
(14, '3', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(8, 'Dầu bôi trơn chuyên dụng', 5, 2, 'Màu sắc: Moyu Lube V1 màu sắc trong suốt đặc quánh, Moyu Lube V2 màu sắc trắng sữa dạng lỏng.\r\n- Hiệu quả: Moyu Lube V1 tác dụng lâu 1-2 giọt chơi được 1-2 tuần, Moyu Lube V2 tác dụng rất trơn ngay sau khi lube nhưng do dạng nước dễ bay hơi nên 1-2 giọt chỉ chơi được 2 ngày. \r\n- Có thể kết hợp cả 2 để hiệu quả cao nhất.\r\n- Tránh lube quá 2 giọt mỗi lần, kẻo bị overlube.\r\n- Dung tích: 5ml.\r\n- Kích thước: 45.0 * 20.0 * 20.0 (mm)\r\n- Thành phần: Silicon gốc nước cho V2, và gốc dầu cho V1.\r\n- Thông tin cảnh báo: Sản phẩm là chất lỏng chứa nhiều phụ gia công nghiệp, chỉ được lube trên bề mặt nhựa, không dùng trên kim loại và gây nguy hiểm nếu nuốt phải. \r\n- Năm sản xuất: 2021.\r\n- Sản xuất tại: Trung Quốc.', 'THÔNG TIN SẢN PHẨM\r\n- Rubik 3x3 là đồ chơi trí tuệ được giáo sư điêu khắc và kiến trúc sư người Hungary Erno Rubik sáng chế ra năm 1974 và đã trở thành món đồ chơi quen thuộc cho mọi người kể từ những năm 1980 đến nay. \r\n- Cách chơi: Rất đơn giản, người chơi chỉ cần xoay cho đến khi tất các mặt của rubik đều cùng 1 màu. \r\n\r\nCÔNG DỤNG SẢN PHẨM\r\n- Công dụng bôi trơn các dòng rubik.\r\n- Giúp làm nhanh tăng tốc độ cho Rubik.\r\n- Dạng lỏng.\r\n- Mỗi lần dùng 2-3 giọt tùy vào tình trạng của Rubik bạn.\r\n- Lưu ý: Màu sắc sản phẩm có thể khác biệt đôi chút theo từng lô hàng của nhà sản xuất.\r\n\r\nCAM KẾT\r\n- Sản phẩm y chang mô tả.\r\n- Số lượng tồn kho được cập nhật chính xác 100%.\r\n- Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.\r\n- Thời gian chuẩn bị hàng siêu tốc trong vòng 24h.', '20000', 'dauboitronMoYu26.JPG', 0, NULL, NULL),
(9, 'Gói làm ấm tay ZyO', 5, 5, 'Gói làm ấm tay dùng một lần chống cóng tay game thủ cuber\r\nGói làm ấm dùng một lần thường được gọi là \"gói ấm tay\" hoặc \"gói giữ nhiệt tự nhiên\". Đây là một sản phẩm phổ biến được sử dụng bởi nhiều người trong nhiều tình huống khác nhau, bao gồm cả game thủ. Dưới đây là một số tình huống mà game thủ và cuber có thể sử dụng gói làm ấm này:\r\n\r\n1. Thi Đấu Chung Kết hoặc Sự Kiện Lớn: Trong các sự kiện thể thao điện tử hoặc thi đấu Rubik trực tiếp, game thủ có thể sử dụng gói ấm tay để giữ ấm tay trong các cuộc đối đầu quan trọng.\r\n\r\n2. Chơi Trong Môi Trường Lạnh: Đặc biệt là trong mùa đông hoặc khi chơi tại các sự kiện ngoài trời, gói giữ nhiệt giúp bảo vệ tay game thủ Cuber khỏi lạnh.\r\n\r\n3.  Thi Đấu Các Loại Game Đòi Hỏi Nhiều Thao Tác Tay: Trong các thể loại game đòi hỏi nhiều thao tác tay như MOBA, game bắn súng hoặc Rubik, việc giữ tay ấm có thể cải thiện thành tích chơi vô cùng tốt.', 'THÔNG TIN SẢN PHẨM\r\nNóng ấm ~ 55 độ\r\nThời gian nóng lên đến 8h\r\nKích hoạt bằng không khí\r\nThân thiện môi trường\r\nGọn nhẹ, linh hoạt', '56000', 'goiamtayZiO52.JPG', 0, NULL, NULL),
(10, 'TUA VÍT MINI CHUYÊN DỤNG 2MM ĐẦU 4 CẠNH - 2 CẠNH', 5, 3, 'THÔNG TIN SẢN PHẨM\r\nKích thước: dài 45mm, đường kính 2mm\r\nChất liệu: Thép cứng 45#', 'MÔ TẢ\r\n \r\nĐÁNH GIÁ\r\nTua vít mini chuyên dụng 2mm đầu 4 cạnh - 2 cạnh\r\n🔧 Tự tin trải nghiệm với Tua vít mini chuyên dụng 2mm đầu 4 cạnh - 2 cạnh - một công cụ vô cùng tiện lợi cho việc bảo trì và tuỳ chỉnh mọi chi tiết nhỏ trên các sản phẩm.\r\n\r\n📏 Kích thước: dài 45mm, đường kính 2mm.\r\n\r\n⚙️ Mới 100% và chất lượng cao! Chất liệu chọn lọc: Thép cứng 45# - đảm bảo độ bền và độ chính xác trong mọi công việc.\r\n\r\n🔩 Sản phẩm phù hợp cho nhiều mục đích sử dụng:\r\n\r\nTháo lắp mô hình, đồ chơi.\r\nTuỳ chỉnh Rubik và các loại puzzle.\r\nThiết bị điện tử.\r\nĐồ gia dụng.\r\nĐồng hồ.\r\nMáy chơi game và nhiều sản phẩm khác.', '6000', 'tuavitQiYi46.JPG', 0, NULL, NULL),
(11, 'Thảm kê Rubik GAN Timer Mat 30x30 cm', 5, 1, 'Thảm kê Rubik GAN Timer Mat 30x30 cm sử dụng để kê rubik khi chơi, kết hợp với đồng hồ bấm giờ đo thời gian', 'Gan Mat - Thảm Kê Rubik GAN là chiếc thảm kê Rubik chính hãng của hãng GAN sản xuất. Thảm chất lượng cao làm từ đế cao su và mặt vải mịn, sử dụng cùng Timer Rubik giúp bảo vệ cube tránh bị va đập xuống bàn. Ngoài ra chiếc thảm này được in hình cấu trúc GAN 356 Air SM, kê lên bàn trang trí rất đẹp, dùng thay bàn di chuột,...', '150000', 'thamkeGAN73.JPG', 0, NULL, NULL),
(12, 'MF8 TWINS CUBE (BLACK STICKERED)', 3, 2, 'MF8 Twins Cube (Black Stickered) là một chiếc Skewby Copter với các đường cắt thêm để tăng độ khó lên hàng chục lần! Hãy thử cái này và xem bạn có thể đi được bao xa!', 'MF8 Twins Skewb là chiếc rubik rất đẹp và phức tạp đến từ hãng MoYu huyền thoại. Đây là chiếc biến thể dung hợp giữa Skewb và Copter Plus, kèm theo các đường cắt khác phức tạp hơn. Với cấu trúc phức tạp như thế, bạn có thể xoay nhiều trạng thái khác nhau, khiến việc giải chiếc rubik này trở thành một thử thách không hề đơn giản.\r\n\r\nMF8 Twins Skewb được hoàn thiện tốt, sticker sáng màu dai bền, chất nhựa xịn rất xứng đáng với giá tiền.', '1000000', 'Twin Cube MoYu45.JPG', 0, NULL, NULL),
(13, 'Rubik 3x3 Gan 13 Maglev Coloré Summer Limited Edition 2023', 3, 1, 'Rubik Gan 13 Maglev Limited Coloré Nam Châm Phiên Bản Giới Hạn Mùa Hè 2023 🔰\r\n \r\n📌 THÔNG TIN CHI TIẾT SẢN PHẨM\r\n\r\n ✅GAN 13 Limited Colore là phiên bản giới hạn đặc biệt mùa hè 2023, một kiệt tác màu xanh trong suốt, không chỉ sở hữu vẻ ngoài tuyệt đẹp, đây còn là một trong những rubik 3x3 tiên tiến nhất hiện nay\r\n\r\n ✅Phụ kiện đi kèm: Túi GAN, Hộp GAN Box V10, thẻ ID, 2 set sticker Full Bright, Dụng cụ chỉnh tension GAN, Sách hướng dẫn', '✅Công nghệ nam châm từ tính giúp rubik quay cực mượt, không rít\r\n\r\n ✅Công nghệ căn chỉnh core tự động 3.0 nâng cao giúp tăng trải nghiệm khi xoay rubik\r\n\r\n ✅Trang bị sẵn 88 viên nam châm. 6 nam châm cạnh cùng thiết kế mới\r\n\r\n ✅Hệ thống 6 mức điều chỉnh GTN\r\n\r\n ✅Tăng hiệu quả sử dụng lube với thiết kế mảnh dạng tổ ong, lưu hiệu quả lube lâu hơn\r\n\r\n ✅ Khối lượng: 71g\r\n\r\n ✅ Kích thước: 56.0mm x 56.0mm x 56.0mm\r\n\r\n ✅Màu sắc: Xanh trong suốt\r\n\r\n ✅Năm sản xuất: 2023\r\n\r\n ✅ Sản xuất tại: Trung Quốc.', '2000000', 'ganSuutam10.JPG', 0, NULL, NULL),
(14, 'Rubik QiYi Megaminx 2x2 Stickerless', 3, 3, 'QiYi Megaminx 2x2 Stickerless\r\n\r\n- Kilominx là một câu đố Megaminx đơn giản hóa bao gồm các phần góc và phần trung tâm. Nó còn được gọi là 2x2 megaminx.\r\n\r\n- Kilominx khác với các kilominx truyền thống do có các mũ ở giữa màu, vì vậy việc giải câu đố này giống như giải một megaminx truyền thống do các tâm cố định.', '- Các nhãn dán truyền thống đã được thay thế bằng vật liệu ABS nguyên bản và thân thiện với môi trường, có nghĩa là không bị phai màu, bong tróc! Đây là một khối bề mặt nhám, tạo cảm giác có nhiều kết cấu hơn và tránh bị trầy xước sau thời gian dài sử dụng. Màu sắc sống động mới giúp dễ dàng giải quyết hơn\r\n\r\nGiải câu đố và rèn luyện trí não là những hoạt động quan trọng để dạy trẻ làm việc chăm chỉ để giải quyết các vấn đề phức tạp, đồng thời thúc đẩy cảm giác về không gian và tăng cường trí nhớ của trẻ, đây sẽ là một món quà tuyệt vời cho con bạn', '120000', 'QiYisuutam5.JPG', 0, NULL, NULL),
(15, 'Mirror M Purple', 3, 5, 'Rubik Mirror Biến thể Mirror M Purple là mẫu Rubik Biến thể lục lăng độc đáo của hãng Gan cube đi kèm với lõi có mod nam châm đem lại cảm giác rất chắc chắn, Rubik  Mirror M Purple một trong những Rubik Mirror xịn nhất, đắt tiền nhất chính hãng', 'Rubik Mirror M Purple - Mẫu Rubik Mirror cao cấp\r\n\r\nRubik Mirror M Purple là một mẫu Rubik biến thể lục lăng độc đáo. Sản phẩm được mod sẵn từ nhà máy với 48 viên nam châm, mang lại cảm giác rất chắc chắn và ổn định. Rubik Mirror M Purple là một trong những mẫu Rubik Mirror xịn nhất, đắt tiền nhất trên thị trường hiện nay.\r\n\r\nThiết kế độc đáo\r\n\r\nRubik Mirror M Purple có thiết kế độc đáo với các mặt được phủ lớp nhựa mờ, tạo cảm giác như một tấm gương. Điều này khiến cho sản phẩm trở nên sang trọng và bắt mắt hơn.\r\n\r\nChất lượng cao cấp\r\n\r\nRubik Mirror M Purple được làm từ nhựa ABS cao cấp, có độ bền cao. Các chi tiết được gia công tỉ mỉ, đảm bảo độ chính xác và trơn tru khi xoay.\r\n\r\nHệ thống nam châm mạnh mẽ\r\n\r\nRubik Mirror M Purple được mod sẵn từ nhà máy với 48 viên nam châm. Hệ thống nam châm này giúp cho các mặt của Rubik dính chặt vào nhau, tạo cảm giác rất chắc chắn và ổn định. Điều này giúp cho người chơi có thể giải Rubik một cách dễ dàng và nhanh chóng hơn.\"', '500000', 'ZyOSuutam7.JPG', 0, NULL, NULL),
(16, 'Rubik MoYu Pandora', 2, 2, 'Chất liệu: nhựa ABS an toàn, không độc hại. - Màu Sắc: Stickerless - Chất liệu nhựa ABS an toàn, không độc hại - Xoay trơn - Quay tốc độ - Góc cạnh ...', '- Tên sản phẩm: Rubik Pandora Sticker\r\n- Thiết kế với cấu trúc mới giúp giải nhanh, giải tốc độ (thích hợp trong thi đấu).\r\n- Rubik Pandora Xoay trơn, không kẹt, không rít, độ bền cao\r\n- Chất liệu: nhựa ABS an toàn, không độc hại.\r\n- Kích thước: 56mm x 56mm x 56mm\r\n-Trọng lượng: 102g\r\n- Khối 3x3 Shaped-mod đặc biệt , rất hợp lí để đưa vào bộ sưu tập.', '300000', 'moyubienthe33.JPG', 0, NULL, NULL),
(17, 'Rubik Biến thể Tam giác YJ Pyraminx', 2, 5, 'Rubik YJ Petal Pyraminx Yulong Rubic Biến Thể Tam Giác Pyraminx Stickerless Đồ Chơi Trí Tuệ Trẻ Em Phát Triển Tư Duy\r\nMÔ TẢ SẢN PHẨM\r\n- Màu sắc: Stickerless.\r\n- Thiết kế với cấu trúc mới giúp giải nhanh, giải tốc độ (thích hợp trong thi đấu).  \r\n- Rubik xoay trơn, không kẹt, không rít.\r\n- Độ bền cao.\r\n- Chất liệu nhựa ABS an toàn, không độc hại.\r\n- Kích thước: 86.0mm x 86.0mm x 86.0mm.\r\n- Khối lượng: 107g.\r\n- Thông tin cảnh báo: Sản phẩm có các mảnh nhựa nhỏ có thể gây nguy hiểm nếu nuốt phải.\r\n- Năm sản xuất: 2021.\r\n- Sản xuất tại: Trung Quốc.', 'THÔNG TIN SẢN PHẨM\r\n- Rubik là đồ chơi trí tuệ được giáo sư điêu khắc và kiến trúc sư người Hungary Erno Rubik sáng chế ra năm 1974 và đã trở thành món đồ chơi quen thuộc cho mọi người kể từ những năm 1980 đến nay. \r\n- Cách chơi: Rất đơn giản, người chơi chỉ cần xoay cho đến khi tất các mặt của rubik đều cùng 1 màu.', '500000', 'ZyObienthe65.JPG', 0, NULL, NULL),
(18, 'Rubik biến thể QiYi 3x3 Windmill Black', 2, 3, 'Rubik biến thể QiYi 3x3 Windmill Black hiệu QiYi:\r\nThiết kế với cấu trúc mới giúp giải nhanh; giải tốc độ.\r\nRubik xoay trơn; không kẹt; không rít\r\nĐộ bền cao\r\nChất liệu nhựa ABS an toàn; không độc hại\r\nRèn luyện trí nhớ; sự thông minh; sáng tạo và khéo léo', 'An tâm mua sắm\r\nĐược mở hộp kiểm tra khi nhận hàng.\r\nĐược hoàn tiền 111% nếu là hàng giả.\r\nĐổi trả miễn phí tại nhà trong 30 ngày nếu sản phẩm lỗi.\r\nThương hiệu: QiYi\r\nXuất xứ thương hiệu: Trung Quốc\"', '450000', 'qiyibienthe88.JPG', 0, NULL, NULL),
(19, '[Rubik skewb] Rubik Biến thể Rubik Gan Skewb M Stickerless có nam châm sẵn', 2, 1, '🔰 [Rubik skewb] Rubik Biến thể Rubik Gan Skewb Stickerless có nam châm sẵn 🔰\r\n\r\nRubik Gan Skewb M Bản MOD Nam Châm là dòng Cao Cấp Flagship Rubic Stickerless Biến Thể Skewb', 'THÔNG TIN CHI TIẾT SẢN PHẨM\r\n\r\n✅ Gan Skewb là rubik biến thể skewb cao cấp nhất trên thị trường hiện nay với hệ thống core có thể thay đổi.\r\n✅ Được trang bị thêm nam châm giúp xoay kiểm soát tốt hơn và nhanh hơn.\r\n✅ Gồm 2 bản: bản Standard gồm 8 viên nam châm, và bản Enhanced gồm 32 viên nam châm.\r\n✅ Thiết kế với cấu trúc mới giúp giải nhanh, giải tốc độ (thích hợp trong thi đấu).\r\n✅ Rubik biến thể Skewb xoay trơn, không kẹt, không rít\r\n✅ Loại : 3x3x3\r\n✅ Kích Thước: 120mm x 80mm x 79mm\r\n✅ Khối lượng: 79g và 81.5g\r\n✅ Màu sắc: Stickerless\r\n✅ Năm sản xuất: 2021.\r\n✅ Sản xuất tại: Trung Quốc.\r\n⛔️Thông tin cảnh báo: Sản phẩm có các mảnh nhựa nhỏ có thể gây nguy hiểm nếu nuốt phải.', '400000', 'ganbienthe27.JPG', 0, NULL, NULL),
(20, 'CuberSpeed Moyu Meilong 2x2', 1, 2, 'MFJS MeiLong 2x2 M là một khối tốc độ 2x2 thân thiện với ngân sách từ MFJS. Nó cung cấp hiệu suất tuyệt vời và cảm giác từ trung bình / nhẹ với một phần chi phí của các loại 2x2 từ tính khác!\r\nVì vậy, ootb khối này không cảm thấy rẻ tiền, giống như 251 nó có một cảm giác rỗng đẹp và quay giòn, cắt góc là tuyệt vời và nó là một khối thực sự nhanh, nó tạo ra một thiết lập đầy đủ gan 251 M, khối lập phương này thật tuyệt vời', 'Kích thước gói	3,39 x 2,52 x 2,48 inch (8,6 x 6,4 x 6,3 cm)\r\nTrọng lượng vật phẩm	   2,89 ounce ( 81,93 gram )\r\nNhà sản xuất tuổi khuyến nghị	3 năm trở lên', '400000', 'moyuphothong28.JPG', 0, NULL, NULL),
(21, 'Rubik 3x3 Gan Swift Block 2023 Stickerless Có Nam Châm', 1, 5, 'Rubik 3x3 Gan Swift Block Stickerless Có Nam Châm 🔰\r\n\r\nGAN là một thương hiệu câu đố nổi tiếng với các thiết kế khối lập phương sáng tạo của nó. Các khối GAN đã tiên phong một số tiến bộ khổng lồ trong phần cứng ấp, đặc biệt là 3x3, phá vỡ nhiều kỉ lục trên thế giới. Tiếp nối dòng Gan Monster Go, năm nay 2023 Gan tiếp tục cho ra mắt Swift Block, dòng rubik có nam châm với giá cả vô cùng hợp lý. Vấn đề rơi nam châm rất khó xảy ra với Gan Swift Block', 'THÔNG TIN CHI TIẾT SẢN PHẨM\r\n\r\n✅ Gan Swift Block\r\n\r\n✅Kích Thước: 55x55x55 mm\r\n\r\n✅Chất liệu : Nhựa\r\n\r\n✅Trọng lượng : 85g\r\n\r\n✅ Có 48 viên nam châm hình viên nhộng\r\n\r\n✅ Có thể lube thêm để rubik xoay trơn mượt hơn', '100000', 'zyophothong20.JPG', 0, NULL, NULL),
(22, 'Rubik QiYi Valk 3 Elite M 3x3 Black (Cao cấp có nam châm)', 1, 3, 'Qiyi Valk 3 Elite M – Sản phẩm cao cấp nhất của hãng QiYi ở thời điểm hiện tại\r\nValk 3 Elite là chiếc flagship được chờ đợi từ dòng Valk nổi tiếng của QiYi MoFangGe. sở hữu hệ thống nam châm hoàn toàn mới với ba cấp độ khác nhau mà cuber có thể dễ dàng thay đổi theo ý thích.\r\n\r\nCác phiên bản vừa và mạnh dạng \"nam châm kép\" và sử dụng nam châm \"từ tâm\" cộng với \"từ góc cạnh\" để định vị. Ngoài ra, QiYi giới thiệu phiên bản riêng của hệ thống điều chỉnh độ đàn hồi cũng giúp loại bỏ tiếng ồn rubik nghe êm hơn', 'So với các dòng Valk 3 khác, Elite M có nhiều điểm khác biệt:\r\n+ Thay đổi lực hút nam châm bằng cách thay đổi viên tâm\r\n+ Nam châm được thiết kế cải tiến, sản phẩm 3x3x3 duy nhất có tới 96 viên\r\n+Thay đổi độ nhanh của Rubik bằng việc thay đổi hệ thống tinh chỉnh của lò xo\r\n+ Nhiều phụ kiện đi kèm: nắp tâm gắn nam châm, phụ kiện lò xo, vải lau, logo dán, thẻ Valk\r\nQiyi Valk 3 Elite M có 2 dòng: Dòng dán Sticker (Black) và dòng nhựa màu (Stickerless)', '700000', 'qiyiphothong93.JPG', 0, NULL, NULL),
(23, 'Rubik 4x4 Gan 460M Stickerless có nam châm cao cấp', 1, 1, 'Rubik 4x4 Gan 460M Stickerless có nam châm cao cấp là mẫu Rubik 4x4 xịn nhất và cao cấp nhất, đây là mẫu Rubik 4x4 rất đáng tiền bởi sử dụng hệ thống cấu trúc hoàn toàn mới với hệ thống lõi mod nam châm giúp khối rubik chắc chắc và ổn định cao', 'Thông số kỹ thuật:\r\n\r\n- Tên sản phẩm: RUBIK 4x4 GAN 460 M 4x4\r\n\r\n- Hãng sản xuất: GAN\r\n\r\n- Chất liệu nhựa ABS an toàn, không độc hại.\r\n\r\n- Kích thước: 60.0mm x 60.0mm x 60.0mm.\r\n\r\n- Khối lượng siêu nhẹ: 139.5g.\r\n\r\n- Thiết kế với cấu trúc mới giúp giải nhanh, giải tốc độ (thích hợp trong thi đấu).\r\n\r\n- Rubik 4x4 xoay trơn, không kẹt, không rít. - Độ bền cực cao.\"', '1000000', 'GANphothong23.JPG', 0, NULL, NULL),
(24, 'Sản phẩm mẫu', 8, 5, 'Sản phẩm demo admin', 'Sản phẩm demo admin', '1000000', 'biến và hàm14.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(4, 'Admin Test', 'Abc Xyz Test1', '0123123123', 'ad@gmail.com', 'Test1 Check', NULL, NULL),
(5, 'Admin Test', 'Test1 abc', '0123543234', 'Test1@gmail.com', 'abc xyz', NULL, NULL),
(6, 'Phạm Hoàng Phát', 'Test 1.0', '0123456789', 'Test3@gmail.com', 'test', NULL, NULL),
(7, 'Admin Test2', 'Abc Xyz Test1', '0123123123', 'ad@gmail.com', 'sếcvsvs', NULL, NULL),
(8, 'Admin Test', 'Test1 abc', '0123123123', 'Test1@gmail.com', 'sèvcsrvd', NULL, NULL),
(9, 'Admin Test', 'Abc Xyz Test1', '0123543234', 'Test1@gmail.com', 'svsvsvsv 1111', NULL, NULL),
(10, 'Nguyễn Văn A', 'Abc test 2.0', '0123456787', 'test2.0', 'Test 2.0', NULL, NULL),
(11, 'Nguyễn Văn A', 'Abc test 2.0', '0123456787', 'test2.0', 'Test 2.0', NULL, NULL),
(12, 'Nguyễn Hoàng Khoa', 'Thôn A, xã B, huyện C, tỉnh D', '0123543234', 'Test3@gmail.com', 'Ghi chú cho đơn hàng', NULL, NULL),
(13, 'Pham Hoang Phat', 'abc xyz', '0123456788', 'phat@gmai.com', 'Test', NULL, NULL),
(14, 'Phạm Hoàng Phát', 'Thôn A, xã B, huyện C, tỉnh D', '0123123123', 'Test1@gmail.com', 'Demo sản phẩm', NULL, NULL),
(15, 'Phạm Hoàng Phát', 'Thôn A, xã B, huyện C, tỉnh D', '0123543234', 'phat@gmai.com', 'Test Demo khách hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
