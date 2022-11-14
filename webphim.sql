-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2022 lúc 10:08 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(2, 'Phim Lẻ', 'Phim lẻ cập nhật hằng ngày', 1, 'phim-le', 0),
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 1),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 2),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 3),
(9, 'Phim Chiếu Rạp', 'Phim chiếu rạp cập nhật nhanh nhất', 0, 'phim-chieu-rap', 4),
(11, 'Phim Thuyết Minh', 'Phim thuyết minh mới nhất', 1, 'phim-thuyet-minh', 0),
(16, 'Phim 18+', 'Phim hay, cập nhật mới nhất', 1, 'phim-18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(3, 'Anh', 'Phim Anh cập nhật nhanh nhất', 1, 'anh'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo'),
(10, 'Ấn Độ', 'Phim Ấn Độ cập nhật nhanh nhất', 1, 'an-do');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` varchar(255) NOT NULL,
  `episode` varchar(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(1, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2il85zaW62g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-11-07 21:43:27', '2022-11-07 21:43:27'),
(2, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2il85zaW62g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2', '2022-11-09 14:25:54', '2022-11-09 14:25:54'),
(3, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '3', '2022-11-07 21:04:13', '2022-11-07 21:04:13'),
(4, 28, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-11-07 22:21:15', '2022-11-07 22:21:15'),
(20, 17, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-08 21:20:19', '2022-11-08 21:20:19'),
(21, 13, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-08 21:22:06', '2022-11-08 21:22:06'),
(22, 13, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'HD', '2022-11-08 21:26:26', '2022-11-08 21:26:26'),
(23, 13, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'HDCam', '2022-11-08 21:34:44', '2022-11-08 21:34:44'),
(24, 20, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-08 21:35:10', '2022-11-08 21:35:10'),
(25, 24, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-08 21:35:17', '2022-11-08 21:35:17'),
(26, 22, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-08 21:35:34', '2022-11-08 21:35:34'),
(27, 29, '<p><iframe src=\"https://short.ink/1XCqC4ceh\" frameborder=\"0\" allowfullscreen width=\"100%\" height=\"350px\" scrolling=\"0\"></iframe></p>', 'FullHD', '2022-11-08 22:01:44', '2022-11-08 22:01:44'),
(28, 30, '<p><iframe src=\"https://short.ink/M-KpJCweE\" frameborder=\"0\" allowfullscreen width=\"100%\" height=\"350px\" scrolling=\"0\"></iframe></p>', '1', '2022-11-08 22:12:11', '2022-11-08 22:12:11'),
(29, 30, '<p><iframe src=\"https://short.ink/DfYhV6tJ7\" frameborder=\"0\" allowfullscreen width=\"100%\" height=\"350px\" scrolling=\"0\"></iframe></p>', '2', '2022-11-08 22:14:44', '2022-11-08 22:14:44'),
(30, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2il85zaW62g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '4', '2022-11-09 14:27:26', '2022-11-09 14:27:26'),
(31, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YhvdtpRgWNk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '5', '2022-11-09 15:20:08', '2022-11-09 15:20:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 1, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly'),
(9, 'Học đường', 'Phim học đường cập nhật mới nhất', 1, 'hoc-duong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `copyright` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `title`, `description`, `logo`, `copyright`) VALUES
(1, 'Phim hay | Phim mới | Phim HD Vietsub | Xem phim online | Motphim.com', 'MOTPHIM.COM - Phim hay 2022, cập nhật mới nhất, xem phim HD, vietsub nhanh nhất.', 'logo_webphim1448.png', 'Copyright @2022 By PhungHuyen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `thoiluong` varchar(20) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `season` int(11) NOT NULL DEFAULT 0,
  `trailer` varchar(100) DEFAULT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1,
  `thuocphim` varchar(10) NOT NULL,
  `count_views` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `status`, `image`, `slug`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `ngaytao`, `ngaycapnhat`, `year`, `thoiluong`, `tags`, `topview`, `season`, `trailer`, `sotap`, `thuocphim`, `count_views`) VALUES
(3, 'Người Nhện: Không còn nhà', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 6, 1, 1, 0, 'Spider Man No Way Home', 0, NULL, '2022-11-05 18:06:16', NULL, '133 phút', NULL, NULL, 0, NULL, 1, 'phimle', NULL),
(4, 'THỜI ĐẠI MA PHÁP', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 8, 4, 0, 0, 'Spider Man No Way Home', 0, NULL, '2022-11-05 18:04:02', NULL, '120 phút', NULL, 2, 0, NULL, 1, 'phimle', NULL),
(5, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA 3', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia-3', 5, 1, 2, 0, 0, 'Love in the Air (2022)', 0, NULL, '2022-11-05 18:03:36', NULL, '120 phút', NULL, 1, 2, NULL, 1, 'phimlephim', 56432),
(6, 'HUYỀN THOẠI GAME THỦ', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 4, 4, 0, 0, 'Game  (2022)', 0, NULL, '2022-11-05 18:03:10', NULL, '133 phút', NULL, NULL, 0, NULL, 1, 'phimle', NULL),
(7, 'Người Nhện: Không còn nhà', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 8, 1, 0, 0, 'Spider Man No Way Home', 0, NULL, '2022-11-05 20:18:19', NULL, '133 phút', NULL, 0, 0, NULL, 1, 'phimle', 234),
(8, 'THỜI ĐẠI MA PHÁP', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 6, 4, 0, 0, 'Lighter and Princess (2022)', 0, NULL, '2022-11-05 18:00:52', NULL, NULL, NULL, 0, 0, NULL, 1, 'phimle', NULL),
(9, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 6, 2, 0, 0, 'Spider Man No Way Home', 0, NULL, '2022-11-05 20:19:29', NULL, '133 phút', NULL, NULL, 1, NULL, 1, 'phimle', 675),
(10, 'HUYỀN THOẠI GAME THỦ 2', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu-2', 5, 5, 4, 0, 0, 'Game  (2022)', 0, NULL, '2022-11-05 18:01:43', NULL, '120 phút', NULL, NULL, 0, NULL, 1, 'phimle', 3452),
(11, 'Người Nhện: Không còn nhà 2', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha-2', 2, 6, 1, 0, 5, 'Spider Man No Way Home', 0, NULL, '2022-11-11 21:38:37', NULL, '120 phút', NULL, NULL, 0, 'o4NzWTNqSto', 1, 'phimle', 6833),
(12, 'THỜI ĐẠI MA PHÁP 3', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap-3', 5, 8, 4, 1, 0, 'thoi-dai-ma-phap', 0, NULL, '2022-11-05 18:02:49', NULL, '120 phút', NULL, NULL, 0, NULL, 1, 'phimle', 54632),
(13, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA 2', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia-2', 5, 7, 2, 0, 0, 'Lighter and Princess (2022)', 0, NULL, '2022-11-05 18:02:07', NULL, '133 phút', NULL, NULL, 0, NULL, 1, 'phimle', 34567),
(14, 'HUYỀN THOẠI GAME THỦ', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 5, 1, 1, 0, 'Game  (2022)', 0, NULL, '2022-11-05 18:00:29', NULL, '100 phút', NULL, NULL, 0, NULL, 1, 'phimle', 4532),
(15, 'Người Nhện: Không còn nhà', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 1, 1, 1, 4, 'Spider-Man: No Way Home (2021)', 0, NULL, '2022-11-05 18:00:08', '2021', '133 phút', NULL, NULL, 0, NULL, 1, 'phimle', 9855),
(16, 'THỜI ĐẠI MA PHÁP', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 5, 4, 1, 0, 'power', 0, NULL, '2022-11-05 17:59:36', NULL, NULL, NULL, 1, 0, NULL, 1, 'phimle', NULL),
(17, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 2, 1, 1, 1, 0, 'Spider Man No Way Home', 0, NULL, '2022-11-05 17:58:59', '2019', '133 phút', NULL, 0, 0, NULL, 1, 'phimle', 45678),
(18, 'HUYỀN THOẠI GAME THỦ', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 1, 1, 1, 0, 'Game  (2022)', 0, NULL, '2022-11-05 17:58:40', '2018', '133 phút', NULL, 0, 0, NULL, 1, 'phimle', NULL),
(19, 'HUYỀN THOẠI GAME THỦ', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 4, 4, 7, 1, 0, 'No Game, No Life', 0, NULL, '2022-11-10 21:51:52', '2018', '50 phút/tập', NULL, 0, 0, NULL, 1, 'phimle', 5467),
(20, 'One Punch Man', 'one punch man c Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub Superman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đ', 1, 'thoi-dai-ma-phap6341.jpg', 'one-punch-man', 4, 6, 5, 1, 0, 'one-punch-man', 1, NULL, '2022-11-11 21:05:14', '2019', '50 phút/tập', NULL, NULL, 0, NULL, 1, 'phimle', 16122),
(22, 'D4DJ: FIRST MIX', 'D4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Tập 11 Anime HD Vietsub\r\nD4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Anime', 1, 'd4dj-first-mix-61500-thumbnail6547.jpg', 'd4dj-first-mix', 11, 8, 4, 1, 0, 'D4DJ First Mix, Dig Delight Direct Drive DJ (2020)', 1, NULL, '2022-11-05 17:57:33', '2022', '133 phút', NULL, NULL, 0, NULL, 1, 'phimle', 43567),
(23, 'No Game, No Life (2015)', 'gdhh ghđheh hhhhh fgdhdfhdh fhdhdhd fgdfd dfdfdhs dgdgd dggrgr grdggd rted', 1, 'anh-hung-onepunch68386439.jpg', 'no-game-no-life-2015', 11, 6, 3, 0, 0, 'No Game, No Life (2015)', 0, NULL, '2022-11-11 21:05:25', '2021', NULL, NULL, NULL, 0, NULL, 1, 'phimle', 94346),
(24, 'MA TRẬN: HỒI SINH', 'Ma Trận: Hồi Sinh, The Matrix Resurrections 2021 HD Vietsub + TM\r\nMa Trận: Hồi Sinh - The Matrix Resurrections 2021 Quay Trở Lại Một Thế Giới Của Hai Thực Tại: Một, Cuộc Sống Hàng Ngày; Khác, Những Gì Nằm Sau Nó. Để Tìm Hiểu Xem Thực Tế Của Anh Ta Có Phải Là Một Công Trình Hay Không, để Thực Sự Hiểu Rõ Bản Thân Mình, Anh Anderson Sẽ Phải Chọn Theo Dõi Con Thỏ Trắng Một Lần Nữa. Ma Trận: Hồi Sinh là phần phim tiếp theo rất được trông đợi của loạt phim “Ma Trận” đình đám, đã góp phần tái định nghĩa thể loại phim khoa học viễn tưởng. Phần phim mới nhất này đón chào sự trở lại của cặp đôi Keanu Reeves và Carrie-Anne Moss với vai diễn biểu tượng đã làm nên tên tuổi của họ, Neo và Trinity. Ngoài ra, phim còn có sự góp mặt của dàn diễn viên đầy tài năng gồm Yahya Abdul-', 1, 'matran-hoisinh308.jfif', 'ma-tran-hoi-sinh', 6, 5, 9, 1, 0, 'The Matrix Resurrections (2021)', 0, NULL, '2022-11-12 21:54:37', '2021', NULL, NULL, NULL, 0, NULL, 1, 'phimle', 42532),
(25, 'EM LÀ MỸ VỊ CỦA ANH', 'Em Là Mỹ Vị Của Anh kể về câu chuyện của Thân Anh, một biên tập viên ẩm thực và Trịnh Đạo một chuyên gia ẩm thực. Hai người vì ẩm thực mà quen nhau, thông qua công việc mà hiểu hơn nhau , cùng nhau trưởng thành và cùng nhau chữa lành vết thương lòng.', 1, 'phim214949.jfif', 'em-la-my-vi-cua-anh', 4, 4, 6, 1, 5, 'Delicious Love (2022)', 0, NULL, '2022-11-11 21:05:35', '2022', '50 phút/tập', 'luotphim, fimfast, dongphim, fullphim, phephim, vtvgiaitri', 2, 0, 'SOG8-K4G3Is', 1, 'phimbo', 67289),
(26, 'CHIẾC BẬT LỬA VÀ VÁY CÔNG CHÚA', 'Chiếu Sáng Anh, Sưởi Ấm Em là câu chuyện xoay quanh Chu Vận (Trương Tịnh Nghi) và Lý Tuân (Trần Phi Vũ). Phim có kết cấu trải dài từ thời thanh xuân đến thời điểm trưởng thành của nhân vật. Lý Tuân là chàng trai có dáng vẻ bề ngoài khá ngông cuồng và kiêu căng nhưng thật chất bên trong lại là một người khá trẻ con và đáng yêu.', 1, 'cblvvcc5738.jpg', 'chiec-bat-lua-va-vay-cong-chua', 4, 8, 6, 1, 4, 'Lighter and Princess (2022)', 0, '2022-11-02 22:22:49', '2022-11-11 21:05:04', '2022', '45 phút / tập', 'xem phim Chiếc Bật Lửa Và Váy Công Chúa vietsub, phim Lighter and Princess vietsub, xem Chiếc Bật Lửa Và Váy Công Chúa vietsub online tap 1, tap 2, tap 3, tap 4, phim Lighter and Princess ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, xem Chiếc Bật Lửa Và Váy Công Chúa tập 11, tập 12, tập 13, tập 14, tập 15, phim Chiếc Bật Lửa Và Váy Công Chúa tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Chiếc Bật Lửa Và Váy Công Chúa tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Chiếc Bật Lửa Và Váy Công Chúa tap cuoi, Lighter and Princess vietsub tron bo, review Chiếc Bật Lửa Và Váy Công Chúa netflix, Chiếc Bật Lửa Và Váy Công Chúa wetv, Chiếc Bật Lửa Và Váy Công Chúa phimmoi, Chiếc Bật Lửa Và Váy Công Chúa youtube, Chiếc Bật Lửa Và Váy Công Chúa dongphym, Chiếc Bật Lửa Và Váy Công Chúa vieon, phim keeng, bilutv, biphim, hdvip, hayghe, motphim, tvhay, zingtv, fptplay, phim1080, luotphim, fimfast, dongphim, fullphim, phephim, vtvgiaitri Chiếc Bật Lửa Và Váy Công Chúa full, Lighter and Princess online, Chiếc Bật Lửa Và Váy Công Chúa Thuyết Minh, Chiếc Bật Lửa Và Váy Công Chúa Vietsub, Chiếc Bật Lửa Và Váy Công Chúa Lồng Tiếng', 0, 0, 'cYuHqpO45kY', 24, 'phimbo', 5665),
(28, 'NGƯỜI THEO ĐUỔI ÁNH SÁNG', 'Người Theo Đuổi Ánh Sáng là câu chuyện xoay quanh một nhóm tình nguyện viên đến từ các ngành nghề khác nhau, cùng tham gia đội cứu hộ dân sự, trải qua nhiều thử thách, cuối cùng họ trở thành những người cứu hộ thực thụ.', 1, 'ntdas3466.jfif', 'nguoi-theo-duoi-anh-sang', 4, 8, 6, 1, 4, 'Light Chaser Rescue (2022)', 0, '2022-11-05 20:22:28', '2022-11-11 21:04:55', '2022', '45 phút / tập', 'xem phim Người Theo Đuổi Ánh Sáng vietsub, phim Light Chaser Rescue vietsub, xem Người Theo Đuổi Ánh Sáng vietsub online tap 1, tap 2, tap 3, tap 4, phim Light Chaser Rescue ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, xem Người Theo Đuổi Ánh Sáng tập 11, tập 12, tập 13, tập 14, tập 15, phim Người Theo Đuổi Ánh Sáng tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Người Theo Đuổi Ánh Sáng tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Người Theo Đuổi Ánh Sáng tap cuoi, Light Chaser Rescue vietsub tron bo, review Người Theo Đuổi Ánh Sáng netflix, Người Theo Đuổi Ánh Sáng wetv, Người Theo Đuổi Ánh Sáng phimmoi, Người Theo Đuổi Ánh Sáng youtube, Người Theo Đuổi Ánh Sáng dongphym, Người Theo Đuổi Ánh Sáng vieon, phim keeng, bilutv, biphim, hdvip, hayghe, motphim, tvhay, zingtv, fptplay, phim1080, luotphim, fimfast, dongphim, fullphim, phephim, vtvgiaitri Người Theo Đuổi Ánh Sáng full, Light Chaser Rescue online, Người Theo Đuổi Ánh Sáng Thuyết Minh, Người Theo Đuổi Ánh Sáng Vietsub, Người Theo Đuổi Ánh Sáng Lồng Tiếng', NULL, 0, NULL, 40, 'phimbo', 38674),
(29, 'Cậu Bé Mất Tích (Phần 4)', 'Khi một cậu bé biến mất, mẹ cậu, cảnh sát trưởng và những người bạn của cậu phải đối đầu với những thế lực siêu nhiên đáng sợ để đưa cậu trở lại.', 1, 'cbmt1143.jpg', 'cau-be-mat-tich-phan-4', 2, 8, 2, 1, 4, 'Stranger Things (Season 4)', 0, '2022-11-08 22:00:28', '2022-11-11 21:03:12', '2021', '120 phút', 'Cậu Bé Mất Tích (Phần 4) - Stranger Things (Season 4), Stranger Things (Season 4) 2022 Full (9/9) Season 4', NULL, 0, NULL, 1, 'phimle', 58376),
(30, 'Mộng Hoa Lục', 'Mộng Hoa Lục kể về Triệu Phán Nhi là chủ một quán trà ở Hàng Châu, lúc nhận được tin vui vị hôn phu của nàng là Âu Dương Húc đỗ kỳ thi Đình đứng thứ hạng 3, thì lại bị hắn ta thoái hôn. Không muốn chấp nhận số phận của mình, nàng lên kinh thành đòi lại công đạo, trên đường đến kinh thành, nàng đã giúp đỡ một hảo tỷ muội là Tống Dẫn Chương bị người ta lừa cưới mà rơi vào hoàn cảnh khốn khổ và bị ngược đãi, đồng thời nàng cũng cứu giúp được Tôn Tam Nương, một người vì cuộc sống hôn nhân bất hạnh mà muốn nhảy sông tự vẫn.\r\n\r\nKhi Âu Dương Húc biết được tin Triệu Phán Nhi đã đến kinh thành, tìm được nơi ở của hắn ta, vậy nên hắn ta tìm đủ cách để đuổi nàng ra khỏi Biện Kinh. Triệu Phán Nhi, Tống Dẫn Chương và Tôn Tam Nương đã quyết định ở lại Biện Kinh, dựa vào năng lực của mình để mà kiếm sống. Trải qua bao khó khăn, gặp đủ mọi trắc trở, cuối cùng thì ba chị em cũng đã từ một quán trà trở thành một tửu lâu lớn nhất tại Biện Kinh. Triệu Phán Nhi sau khi trải qua muôn vàn trắc trở đã dần nhìn thoáng hơn về mọi việc trong cuộc sống, cũng thôi không ôm hận mãi với Âu Dương Húc, đồng thời cũng mở ra một cánh cửa mới cho thấy được quyền bình đẳng cho những người phụ nữ có địa vị thấp kém trong thời xa xưa.', 1, 'mhl2659.jpg', 'mong-hoa-luc', 4, 8, 6, 1, 0, 'A Dream of Splendor', 0, '2022-11-08 22:05:16', '2022-11-11 21:48:13', '2022', '45 phút / tập', NULL, NULL, 0, 'ErLlyQsrYTo', 40, 'phimbo', 67761);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(4, 26, 4),
(6, 26, 8),
(9, 25, 3),
(10, 25, 4),
(11, 24, 1),
(12, 24, 5),
(15, 22, 5),
(16, 22, 8),
(17, 19, 4),
(18, 20, 6),
(19, 18, 1),
(20, 17, 1),
(21, 16, 5),
(22, 9, 1),
(23, 15, 1),
(24, 14, 1),
(25, 14, 5),
(26, 8, 5),
(27, 8, 6),
(28, 7, 1),
(30, 7, 6),
(31, 10, 3),
(32, 10, 5),
(33, 13, 1),
(34, 13, 5),
(35, 13, 7),
(36, 11, 1),
(37, 11, 5),
(38, 11, 6),
(39, 12, 5),
(40, 12, 6),
(41, 12, 8),
(42, 6, 1),
(43, 6, 3),
(44, 6, 4),
(45, 5, 1),
(46, 4, 3),
(47, 4, 5),
(48, 4, 8),
(49, 3, 1),
(50, 3, 5),
(51, 3, 6),
(52, 26, 3),
(53, 7, 7),
(54, 7, 8),
(55, 9, 5),
(56, 9, 6),
(58, 28, 4),
(59, 28, 8),
(60, 29, 1),
(61, 29, 5),
(62, 29, 7),
(63, 29, 8),
(64, 30, 3),
(65, 30, 4),
(66, 30, 6),
(67, 30, 8),
(68, 23, 5),
(69, 23, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `rating`, `movie_id`, `ip_address`) VALUES
(1, 4, 30, '127.0.0.1'),
(2, 5, 26, '127.0.0.1'),
(3, 5, 24, '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user01', 'user01@gmail.com', NULL, '$2y$10$UYX7Phik6ozCMxYBsPZAcOJOAgiRX2kABKPSRMi4Mn.b03/5eQmzy', NULL, '2022-01-03 07:00:17', '2022-01-03 07:00:17'),
(3, 'huyenha200204', 'huyenha200204@gmail.com', NULL, '$2y$10$hKfh.VCK8VmzlqgtEGQwN.biLBBh837a8RwgSztn37QpntiT1r9JK', NULL, '2022-11-01 20:30:57', '2022-11-01 20:30:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie-genre` (`movie_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie-genre` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
