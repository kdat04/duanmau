-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2023 lúc 10:43 AM
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
-- Cơ sở dữ liệu: `du_an_mau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `name_user` varchar(200) NOT NULL,
  `idsp` int(11) NOT NULL,
  `timebl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `name_user`, `idsp`, `timebl`) VALUES
(19, 'Áo rất đẹp và thoáng !!1', 'kimdat', 1, '09:54:am 26-10-2023'),
(20, 'Quần vải rất mền mịn !!', 'kimdat', 4, '09:54:am 26-10-2023'),
(21, 'Áo mặc cực kỳ mát mẻ 10 điểm !!', 'admin', 1, '09:55:am 26-10-2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Áo Sơ Mi'),
(2, 'Áo Thun'),
(3, 'Áo Polo'),
(4, 'Quần Âu'),
(5, 'Quần Jean'),
(6, 'Quần Kaki'),
(7, 'Quần Short'),
(19, 'Đồ bơi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `sale` varchar(50) NOT NULL,
  `img` varchar(500) NOT NULL,
  `img1` varchar(500) NOT NULL,
  `img2` varchar(500) NOT NULL,
  `img3` varchar(500) NOT NULL,
  `img4` varchar(500) NOT NULL,
  `daban` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `price_del` varchar(100) NOT NULL,
  `mota` varchar(1500) NOT NULL,
  `luotxem` int(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_name`, `sale`, `img`, `img1`, `img2`, `img3`, `img4`, `daban`, `price`, `price_del`, `mota`, `luotxem`, `category_id`) VALUES
(1, 'Áo Sơ Mi Tay Ngắn Dáng Rộng Phong Cách Hàn Quốc ', '-26%', 'somi1.jpg', 'somi1.1.jpg', 'somi1.2.jpg', 'somi1.1.jpg', 'somi1.2.jpg', 'Đã bán: 120 chiếc', '230.000 VND', '169.000 VND', 'Xin chào, chào mừng đến với cửa hàng của chúng tôi<br>Xin lưu ý!<br>Đọc kỹ thông tin liên quan sau đây<br>Xin vui lòng nhớ nhận phiếu giảm giá trên trang chủ của cửa hàng của chúng tôi trước khi mua. cảm ơn<br>Cửa hàng này là một cửa hàng ở nước ngoài. Tất cả các sản phẩm có thể được đặt hàng. Sau khi chọn và đặt mua sản phẩm, chúng tôi sẽ giao hàng trong thời gian sớm nhất. Nó sẽ được gửi 1-2 ngày sau khi đặt phòng. Phải mất 8-12 ngày để vận chuyển đến đích. Nếu bạn cần nó gấp, xin vui lòng không đặt hàng. cảm ơn.', 134, 1),
(2, 'Áo Thun Cotton Ngắn Tay Dáng Rộng Trẻ Trung', '-40%', 'thun1.jpg', 'thun1.1.jpg', 'thun1.2.jpg', 'thun1.1.jpg', 'thun1.2.jpg', 'Đã bán: 513 chiếc', '330.000 VND', '179.000 VND', 'Chiều dài tay áo: 5/4 tay áo <br>\r\n\r\nLoại cổ áo: Cổ tròn<br>\r\n\r\nPhiên bản: Tiêu chuẩn<br>\r\n\r\nPhong cách cơ bản: Thời trang trẻ<br>\r\n\r\nMùa ra mắt sản phẩm: Mùa xuân 2023<br>\r\n\r\nLoại thương hiệu: Thương hiệu thời trang<br>\r\n\r\nĐộ dày: Bình thường<br>\r\n\r\nChủ đề in: Phong cách đô thị<br>\r\n\r\nChi tiết phong cách: Khác<br>\r\n\r\nCông nghệ quần áo: xử lý không ủi<br>\r\n\r\nMô hình: khác / khác<br>\r\n\r\nMùa áp dụng: Mùa hè<br>\r\n\r\nLoại tay áo: Thường xuyên<br>\r\n\r\nKịch bản áp dụng: Các hoạt động giải trí khác\r\n<br>\r\nÁp dụng cho: thanh thiếu niên<br>\r\n\r\nPhong cách phân khu: hợp thời trang', 67, 2),
(3, 'Áo Thun POLO Ngắn Tay Dáng Rộng Màu Sắc Đơn Giản Cho Nam', '-29%', 'polo1.jpg', 'polo1.1.jpg', 'polo1.2.jpg', 'polo1.2.jpg', 'polo1.2.jpg', 'Đã bán: 631 chiếc', '167.000 VND', '107.000 VND', 'Chào mừng đến với CỬA HÀNG CỦA CHÚNG TÔI 🎗\r\n<br>\r\n🔮 Kích thước chi tiết có trong phần giới thiệu bên dưới. Vui lòng đọc kỹ<br>\r\n\r\n🎆Sản phẩm còn hàng và có thể giao hàng trong thời gian ngắn.<br>\r\n\r\n🎆 Mọi thắc mắc về việc mua hàng vui lòng liên hệ với chúng tôi, chúng tôi sẽ giải đáp thỏa đáng nhất cho bạn\r\n<br>\r\n💙Sản phẩm của chúng tôi là thương hiệu mới 100%.<br>\r\n\r\n💙Hy vọng sẽ mang lại cho bạn trải nghiệm mua sắm tốt nhất.<br>\r\n\r\n💙Chúng tôi có kinh nghiệm phong phú và sản phẩm chất lượng cao.<br>\r\n\r\n💙 Chúng tôi tập trung vào chất lượng tốt và giá rẻ!', 39, 3),
(4, 'Quần Âu Nam Phong Cách Hàn Quốc Lịch Lãm Sang Trọng ', '-50%', 'au1.jpg', 'au1.1.jpg', 'au1.2.jpg', 'au1.1.jpg', 'au1.2.jpg', 'Đã bán: 453 chiếc', '210.000 VND', '155.000 VND', 'Quần Tây Nam SANMINHCHAU quần âu nam ôm dáng quần baggy nam không nhăn không xù ,chất liệu mềm mịn ,thoáng mát thấm hút mồ hôi tốt giúp hoạt động thoải mái trong công việc hàng ngày.. <br>\r\n\r\nLà quần vải nam cao cấp với thiết kế chi tiết ,tỉ mỉ từng chi tiết dù là nhỏ nhất . Kiểu dáng slim trẻ trung ,ống đứng xếp li ôm dáng.\r\n<br>\r\nQuần âu nam hàn quốc QD304 với thiết kế cực kì sang trọng và thanh lịch giúp bạn tự tin trong cuộc sống hàng ngày<br>\r\n\r\nChất liệu: Vải chéo cotton Là chất vải có độ co dãn, không quá dày cũng không quá mỏng, bền màu. Đặc biệt mặc không nhăn và không bám lông, bụi, cực kì thoải mái, thấm hút mồ hôi tốt.<br>\r\n\r\nMặt vải dày dặn, chống nhăn, tạo dáng ống côn, ôm vừa phải gọn gàng ', 31, 4),
(5, 'Quần jean nam ống rộng màu bạc rêu rách thời trang', '-23%', 'jean1.jpg', 'jean1.1.jpg', 'jean1.2.jpg', 'jean1.1.jpg', 'jean1.2.jpg', 'Đã bán: 1210 chiếc', '445.000 VND', '379.000 VND', 'Quần Baggy Nam Jean Dài Ống Rộng Dáng Suông Thiết Kế Cá Tính Cho Nam <br>\r\nQuần được may bằng loại vải jean dày  lại cho người mặc cảm giác thật thoải mái dể chịu cực kì khi hoạt động đặc biệt thấm hút tốt thoáng khí giúp bạn năng động hơn trong mọi thời tiết<br>\r\n\r\nMẫu jean màu tối sẽ giúp bạn dể phối đồ cho dù bạn phối với loại áo nào hay màu nào củng hợp ko bao giờ bị lỗi, đó là lí do mà mẫu quần này rất được đại đa số khách hàng chọn lựa và làm mưa làm gió trên thi trường thời trangSize S(42kg - 48kg)<br>\r\nSize S : Cân nặng 41- 46kg, cao 1m57 - 1m62<br>\r\nSize M : Cân nặng 47- 56kg, cao 1m60 - 1m75<br>\r\nSize L : Cân nặng 57 - 62kg, cao 1m64 - 1m78<br>\r\nSize XL : Cân nặng 62- 70kg, cao 1m67 - 1m80<br>\r\nszie  XXL : dưới 80kg', 18, 5),
(6, 'Quần kaki nam ống rộng mềm mại thoáng khí nhiều túi', '-6%', 'kaki1.jpg', 'kaki1.1.jpg', 'kaki1.2.jpg', 'kaki1.1.jpg', 'kaki1.3.jpg', 'Đã bán: 420 chiếc', '180.000 VND', '162.000 VND', 'Phong cách: Hàn Quốc<br>\r\n\r\nLoại quần: thẳng<br>\r\n\r\nChiều dài quần: quần chín điểm<br>\r\n\r\nLoại eo: giữa eo<br>\r\n\r\nCho dù có thắt lưng: Với thắt lưng<br>\r\n\r\nQuần Placket: đóng dây buộc<br>\r\n\r\nĐộ dày: Phần mỏng<br>\r\n\r\nMô hình: trơn<br>\r\n\r\nCho mùa: Mùa hè<br>\r\n\r\nPhù hợp với đám đông: thanh thiếu niên<br>\r\n\r\nThành phần vải chính: Sợi polyester (polyester)<br>\r\n\r\nHàm lượng các thành phần vải chính: 100 (%)', 17, 6),
(7, 'Quần short bò unisex quần đùi jean ống rộng style Hàn Quốc', '-23%', 'short1.jpg', 'short1.1.jpg', 'short1.2.jpg', 'short1.1.jpg', 'short1.2.jpg', 'Đã bán: 752 chiếc', '149.000 VND', '119.000 VND', '🔥🔥Nếu bạn là tín đồ của những chiếc quần Jean rách, phong cách Kool ngầu thì xin chúc mừng bạn đã tìm đúng địa chỉ để mua hàng tốt, rẻ, đẹp rồi nhé <br>\r\n🔥🔥Quần short jean nam là trang phục thông dụng và ưa chuộng nhất hiện nay. Đặc biệt không bao giờ bị lỗi mốt cả. Với những ưu điểm như chắc, bền, đẹp, quần short jean nam làm từ chất liệu jean cotton co giãn mang lại cho người mặc, nhất là các chàng trai một vẻ ngoài mạnh mẽ và cuốn hút, thoải mái khi vận động<br>\r\n- Chất Jean co giãn nhẹ, mềm mại, ít nhăn tạo sự thoải mái cho người sử dụng, không ra màu 🌱 <br>\r\n- Quần có co giãn nhẹ nên mặc cực kì thoải mái nhé. <br>\r\n- Màu sắc, họa tiết rõ nét 100% giống ảnh mẫu. <br>\r\n- Chất liệu cao cấp, đẹp từ đường kim đến mũi chỉ, thiết kế nổi bật, phong cách trẻ trung. \r\n- Quần có 2 túi xéo trước (Để vừa iphone XS max) và 2 túi sau rất tiện dụn', 28, 7),
(8, 'Áo sơ mi Flannel kẻ hoạ tiết TILAA FASHION phong cách ', '-63%', 'somi2.jpg', 'somi2.1.jpg', 'somi2.2.jpg', 'somi2.1.jpg', 'somi2.2.jpg', 'Đã bán: 3551 chiếc', '229.000 VND', '70.000 VND', '- Chất liệu: Cotton cap cấp <br>\r\n\r\n- Thấm hút tốt, có khả năng tỏa nhiệt qua bề mặt vải, giữ cơ thể khô thoáng, tự tin nhất là trong thời tiết nắng nóng<br>\r\n\r\n- Với chất vải cotton mềm, mát mẻ, form áo suông đơn giản, gam màu trẻ trung<br>\r\n\r\n- Dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, có thể mặc đi chơi, gặp mặt bạn bè, đi tiệc, đi làm, thể thao.<br>\r\n\r\n- Màu Sắc: XÁM<br>\r\n▪ Áo sơ mi là trang phục không thể thiếu trong tủ đồ của các chàng trai, đây được cho là item cơ bản và chuẩn chỉnh để các quý ông luôn sở hữu vẻ ngoài chỉn chu, thanh lịch. <br>\r\n ▪ Chính vì điều đó mà Áo sơ mi nam luôn là lựa chọn hàng đầu của các chàng trai bởi tính ứng dụng cũng như tính thời trang mà nó mang lại.', 18, 1),
(9, 'Quần Tây Nam Hàn Quốc Ống Côn Cao Cấp QTN Fashion', '-30%', 'au2.jpg', 'au2.jpg', 'au2.jpg', 'au2.jpg', 'au2.jpg', 'Đã bán: 1121 chiếc', '155.000 VND', '102.000 VND', 'KIỂU DÁNG: SLIM FIT<br>\r\n\r\n\r\n\r\nCHI TIẾT Quần Tây Nam Hàn Quốc Ống Côn Cao Cấp QTN Fashion, chất vải co giãn nhẹ, form Slimfit hàn quốc:<br>\r\n\r\n\r\n\r\n- Quần âu kiểu dáng Slim fit ống côn<br>\r\n\r\n\r\n\r\n- Thiết kế cổ điển, lịch lãm với nếp ly vĩnh viễn giúp quần đứng dáng, dễ là ủi.<br>\r\n- Thành phần chính là Polyester cho bề mặt trơn láng, mịn màng, sờ vào cảm giác mát lạnh, dễ chịu, không bị nhăn<br>\r\n\r\n\r\n\r\n- Kết hợp sợi Rayon giúp đẩy thoát mồ hôi, hơi ẩm ra ngoài mang đến sự thoáng mát, dễ chịu cho người mặc.<br>\r\n\r\n\r\n\r\n- Chất liệu vải dễ giặt, nhanh khô, dễ bảo quản.\r\n\r\n', 37, 4),
(10, 'Áo thun Incerun tay ngắn màu trơn họa tiết kẻ sọc ', '-49%', 'thun2.jpg', 'thun2.1.jpg', 'thun2.2.jpg', 'thun2.1.jpg', 'thun2.2.jpg', 'Đã bán: 111 chiếc', '238.000 VND', '122.000 VND', 'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày <br>\r\n\r\nThương hiệu: INCERUN<br>\r\nKích thước: S, M, L, XL, 2XL,<br>\r\nChất liệu vải: 93% Polyester + 7% Spandex\r\nMàu sắc: Đen, Trắng, Nâu, Xám<br>\r\nPhong cách: Cơ bản<br>\r\nThích hợp cho: Giải trí<br>\r\nHoa văn: Màu trơn<br>\r\nĐộ dày: Trung bình<br>\r\nMô tả sản phẩm: Áo tay ngắn màu trơn cho nam', 9, 2),
(11, 'Quần jean nam boy phố rách gối chất bò cao cấp co dãn 4 chiều', '-42%', 'jean2.jpg', 'jean2.1.jpg', 'jean2.2.jpg', 'jean2.1.jpg', 'jean2.2.jpg', 'Đã bán: 120 chiếc', '169.000 VND', '123.000 VND', '✅ Sản phẩm jean đen nam được đặt may riêng theo mẫu thiết kế của Thời Trang Cao Cấp HADO shop tại tp HCM. <br>\r\n\r\n✅ Quần jeans nam với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh\r\n<br>\r\n✅ Quần may từ jean nam chất bò cao cấp nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.<br>\r\n\r\n✅ Dáng quan jean nam ống côn trẻ trung ôm body tạo nên form cực chuẩn cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.\r\n<br>\r\n✅ Màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.\r\n<br>\r\n✅ Vài ảnh chụp cận cảnh để làm rõ thêm sự sắc nét của từng đường may, sớ vải.\r\n<br>\r\n✅ Size: 27 đến 34<br>\r\n\r\n✅ Xuất xứ: được thiết kế và gia công bởi Thời Trang Cao Cấp HADO<br>', 0, 5),
(12, 'Áo polo phối màu khóa kéo logo cao su Krants', '-11%', 'polo2.2.jpg', 'polo2.jpg', 'polo2.2.jpg', 'polo2.1.jpg', 'polo2.jpg', 'Đã bán: 611 chiếc', '177.000 VND', '158.000 VND', 'Aó polo phối màu logo cao su Krants<br>\r\nChất liệu: Cá sấu <br>\r\nSize: S M L XXL<br>', 0, 3),
(13, 'Quần Short Đùi Thể Thao QD6 Nam  Chất Da Cá Thoáng Mát', '-34%', 'short2.jpg', 'short2.1.jpg', 'short2.2.jpg', 'short2.1.jpg', 'short2.2.jpg', 'Đã bán: 4412 chiếc', '128.000 VND', '84.000 VND', 'Quần Short HALEY là món đồ không thể thiếu cho team đam mê tập luyện hoặc yêu thích phong cách năng động. Mỗi thiết kế Quần sort đều đề cao lựa chọn chất liệu thông thoáng, siêu nhẹ, thấm hút mồ hôi cho giờ tập luyện thêm hiệu quả. Với chất vải da cá siêu bền, đường may kỹ tới từng đường chỉ, giá rất phải chăng, sp quần này sẽ mang tới cho khách hàng trải nghiệm vô cùng tốt. <br>\r\n\r\n- Form Regular-Fit thoải mái, dùng cho đi chơi, du lịch, thể thao, chạy bộ...<br>\r\n\r\n- HALEY sử dụng chất liệu vải da cá mềm mại và thoải mái<br>', 0, 7),
(14, 'Quần Kaki Ống Đứng Có Túi Lớn Phong Cách Nhật', '-38%', 'kaki2.jpg', 'kaki2.1.jpg', 'kaki2.1.jpg', 'kaki2.1.jpg', 'kaki2.1.jpg', 'Đã bán: 120 chiếc', '180.000 VND', '129.000 VND', 'Phong cách: phong cách Hồng Kông\r\n<br>\r\nPhong cách: Cơ bản\r\n<br>\r\nQuần: Vừa vặn\r\n<br>\r\nChiều dài quần: quần dài\r\n<br>\r\nLoại eo: Giữa\r\n<br>\r\nCó hoặc không có thắt lưng: không có thắt lưng\r\n<br>\r\nQuần: đóng, buộc\r\n<br>\r\nDày và mỏng: Bình thường\r\n<br>\r\nTên vải: Hỗn hợp sợi hóa học\r\n<br>\r\nThành phần cơ thể: polyester\r\n<br>\r\nHàm lượng của thành phần vải chính: 100 (%)\r\n<br>\r\nTình hình áp dụng: mỗi ngày\r\n<br>\r\nKiểu mở chân: Thẳng\r\n<br>\r\nChi tiết phong cách: nhãn\r\n<br>\r\nĐộ đàn hồi: Microelastic\r\n<br>\r\nVải: bánh quế', 3, 6),
(31, 'SƠ MI KẺ ĐUÔI TÔM - by ruych', '-42%', 'somi3.jpg', 'somi3.1.jpg', 'somi3.2.jpg', 'somi3.1.jpg', 'somi3.2.jpg', 'Đã bán: 1153 chiếc', '400.000 VND', '289.000 VND', '- size : m l xl >90kg\r\n- màu : trắng/ kẻ đen / kẻ xanh\r\n• size M : dài 70 rộng 60 \r\n• size L : dài 75 rộng 60\r\n• size xl : dài 77 rộng 62 \r\n- chất : cotton siêu thoải mái\r\n- Form : nam và nữ <br>\r\n- phối rõ đuôi tôm trước và sau + điểm nhấn của áo nhìn cậu sẽ không bị nhàm chán <br>\r\n#mixandmatch <br>\r\n- mixđồ siêu dễ thoải mái và cực tiện đi học / đi chơi / cafe hay hẹn hò , mix được quần dài , sooc , đều ổn áp - quá là tiện lợi', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` int(13) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `sdt`, `pass`, `diachi`, `role`) VALUES
(1, 'kimdat', 'kimdat@gmail.com', 979238272, 'kimdat', 'Phương Bản - Phụng Châu - Chương Mỹ - Thành Phố - Hà Nội', 0),
(3, 'admin', 'admin@gmail.com', 367770505, 'kimdat2108', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binhluan_product` (`idsp`),
  ADD KEY `fk_binhluan_user` (`name_user`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_product_category` (`category_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_binhluan_product` FOREIGN KEY (`idsp`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `lk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
