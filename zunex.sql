-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2021 lúc 02:47 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `areid`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', 1),
(3, 'tuanadmin', '7c157679e197f6e9d16166c1c81c29be', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(3, 1, '9281', 0),
(4, 1, '4458', 0),
(5, 6, '1632', 1),
(6, 8, '8138', 0),
(7, 1, '4175', 0),
(8, 10, '4735', 0),
(9, 10, '9942', 0),
(10, 10, '6423', 0),
(11, 10, '7455', 0),
(12, 10, '7966', 0),
(13, 10, '8874', 0),
(14, 10, '2712', 1),
(16, 12, '892', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(7, '9281', 9, 3),
(8, '9281', 8, 1),
(9, '4458', 9, 3),
(10, '4458', 8, 1),
(11, '1632', 12, 5),
(12, '8138', 11, 5),
(13, '4175', 6, 2),
(14, '4175', 8, 2),
(15, '4735', 30, 1),
(16, '9942', 29, 1),
(17, '6423', 24, 1),
(18, '7455', 29, 1),
(19, '7966', 30, 1),
(20, '8874', 30, 1),
(21, '2712', 22, 1),
(22, '1919', 22, 1),
(23, '892', 22, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(12, 'cham', 'chamnguyen0803@gmail.com', 'Hà Nội', '81dc9bdb52d04dc20036dbd8313ed055', '0987');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'Nữ', 3),
(4, 'Nam', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `id_nhanvien` int(9) NOT NULL,
  `tennhanvien` varchar(1000) NOT NULL,
  `manv` varchar(100) NOT NULL,
  `dienthoai` int(50) NOT NULL,
  `diachi` varchar(1000) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `chucvu` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `giakm` varchar(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `giakm`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(23, 'SET BLOODMOON', '12', '2000000', '0', 10, '1633300189_SET BLOODMOON.jpeg', '', '', 1, 5),
(24, 'SET KAMI', '13', '1750000', '0', 10, '1633300228_SET KAMI.jpeg', '', '', 1, 5),
(25, 'SET TET', '14', '1500000', '0', 10, '1633300270_SET TET.jpg', '', '', 1, 5),
(26, 'SET SEETAA', '15', '1250000', '0', 10, '1633300300_SET SEETAA.jpg', '', '', 1, 5),
(27, 'DOCKER HAT', '16', '250000', '0', 10, '1633300347_DOCKER HAT.jpg', '', '', 1, 1),
(28, 'ZUNEZX BELT.', '17', '175000', '0', 10, '1633300398_ZUNEZX BELT.jpg', '', '', 1, 1),
(29, 'ZUNEX CAP', '19', '200000', '', 10, '1634130803_ZUNEX CAP.jpeg', '', '', 1, 1),
(30, 'KOI GREY TUBAN', '20', '200000', '', 10, '1634130815_KOI GREY TUBAN.jpeg', '', '', 1, 1),
(39, 'SET TET', '3', '300000', '500000', 10, '1634408465_SET TET.jpg', 'TET BLAZER\r\n\r\nThiết kế Tet Blazer phù hợp là một lựa chọn khôn ngoan để diện cho mùa lễ hội năm nay. Dù bạn kết hợp chiếc áo này với bất kỳ item nào thì bạn cũng sẽ nổi bần bật bởi điểm nhấn đặc biệt nằm ở chiếc túi áo có zip ngang và công nghệ in logo phản quang tạo điểm chấm phá cho tổng thể chiếc áo. ', '', 1, 4),
(40, 'LEATHER SKIRT', '1', '450000', '500000', 10, '1634409377_LEATHER SKIRT.jpg', 'LEATHER SKIRT - item thách thức mọi phong cách!\r\n\r\nLeather Skirt của Zune.zx với chất liệu đặc trưng và form ôm sát body từ lâu đã được nhắc đến như một item không thể thiếu trong tủ quần áo của những cô nàng cá tính. Thế nhưng, không chỉ dừng lại ở style bụi bặm đó, Leather Skirt còn có khả năng kết hợp thần thánh, tạo nên những outfit độc đáo với phong cách hoàn toàn mới lạ.\r\n\r\nQuyến rũ khi ‘đi kèm’ với Turban phá cách, thanh lịch với sơ mi trắng đi học, dịu dàng khi phối cùng Highneck Longtee, Hokkaido Kimono cùng túi Leather Bag tinh tế; hay trở thành racing girl với tone sur tone Kane Leather Bomber; Leather Skirt sẽ giúp ta nhận ra rằng: bắt kịp xu hướng thời trang không có nghĩa là phải sở hữu nhiều items mà đôi khi chỉ cần 1 item cũng đủ để ta tự tin phá đảo mọi phong cách!', '', 1, 2),
(41, 'DOCKER HAT', '2', '300000', '400000', 10, '1634408068_DOCKER HAT.jpg', 'Docker Hat có nguồn gốc từ chiếc mũ Beanie nhưng lại mang vẻ ngoài khá giống với mũ Cap thông thường tuy nhiên Docker không có phần lưỡi trai phía trước. Ra đời trên chất liệu kaki cao cấp bắt mắt cùng chiếc khóa được tối ưu để điều chỉnh size mũ đem lại cảm giác thoải mái nhất khi trải nghiệm. Đặc biệt, chiếc logo silicon 3D cùng gam màu tối giản nhưng vẫn nổi bật mang đậm vẻ cá tính. Với thiết kế nhỏ gọn, tối giản Docker Hat phù hợp để mix match với tất tần tật các phong cách từ cool ngầu, cá tính đến dịu dàng, dễ thương bất kể mùa hè nóng nực hay mùa đông lạnh giá.', '', 1, 2),
(42, 'INDRA PANT', '4', '300000', '500000', 10, '1634409425_INDRA PANT.jpg', 'INDRA PANT - Sự khác biệt đến từ những điều bình thường\r\n\r\nCó thể bạn không tin nhưng vào thế kỷ thứ I - khi loài người chưa sáng chế ra quần, váy là trang phục rất được phổ biến với cả nam và nữ. Thời gian và sự biến đổi của văn hóa ăn mặc chính là điều kiện khiến những nét đẹp xưa cũ dần bị lãng quên.\r\n\r\nIndra Pant là sự kết nối giữa những gì truyền thống và hiện đại nhất, với điểm nhấn hút mắt - artwork Koi Mascot độc đáo được thiết kế tinh tế trên nền vải mang dáng dấp phong cách layer hiện đại. Chiếc váy chống nắng quen thuộc hàng ngày chính là nguồn cảm hứng sáng tạo được kết hợp với nét tính cách của xứ sở phù tang Zune.zx hằng theo đuổi đã tạo ra sự khác biệt cho Indra ngay từ vẻ ngoài tới cách mặc độc đáo khi biến tấu chiếc thắt lưng obi thành chiếc cạp to bản và phần dây phía sau buông lơi đầy gợi mở. Đặc biệt, hàng khuy bấm thời trang ở phần cạp tạo tiền đề cho sự sáng tạo với \"một ngàn lẻ một\" vẻ bề ngoài khác biệt, cũng là công cụ dễ dàng điều chỉnh kích cỡ cho chiếc quần váy này.\r\n\r\nSự khác biệt đến từ những điều bình thường nhất. Bạn có nghĩ vậy không?', '', 1, 2),
(43, 'SET KAMI', '5', '500000', '600000', 10, '1634409522_SET KAMI.jpeg', 'Những sản phẩm signature nhà Zune độc đáo từ thiết kế đến cách mặc, nếu không nắm rõ ắt hẳn bạn sẽ bỏ lỡ những tips mix match cực cool đấy. Koi kimono được thiết kế với 3 dây thắt, cách mặc chuẩn chỉnh nhất là lấy dây bên trong bên phải xuyên qua con đỉa phía trong bên trái áo (tuỳ chỉnh độ chắc hoặc lỏng tuỳ ý), sau đó dùng hai dây bản lớn ở ngoài thắt lại với nhau. Song bạn hoàn toàn có thể mix với tee, shirt, polo hoặc bất cứ items nào bạn thích đều sẽ tạo nên khác biệt.\r\n\r\n ', '', 1, 2),
(44, 'SUKATO PANT', '6', '450000', '500000', 10, '1634409663_SUKATO PANT.jpg', 'Một chút cá tính và phá cách được đưa vào trong Pants Collection của Zune.zx là Sukato Pant. Sử dụng chất vải Kaki, Sukato Pant có xu hướng rộng phần hông và nhỏ dần về phần cổ chân, mang đến cảm giác bụi bặm và đường phố, gợi liên tưởng đến street style Nhật Bản vào những thập kỉ trước. \r\n\r\nCâu chuyện thời trang vẫn còn tiếp diễn, và hành trình khai phá văn hoá nhật nhưng vẫn không quên đi bản sắc Việt Nam là 1 con đường dài. ', '', 1, 4),
(45, 'SET BLOODMOON', '7', '500000', '600000', 10, '1634408313_SET BLOODMOON.jpeg', 'BLOODMOON SHIRT BY ZUNE.ZX\r\n\r\nGiữa ranh giới cổ điển và hiện đại Bloodmoon Shirt nằm ngay ngắn chính giữa, là sự pha trộn kết hợp hài hòa của hai thời điểm. Gọi đây là \"cỗ máy thời gian\" cũng không quá chút nào bởi sự biến hóa đa dạng khi mix match khiến bạn hoàn toàn có thể trở thành những nhà trend-setter hay quay về với phong cách retro của những thập niên cũ. Sự sáng tạo trong thiết kế sử dụng chất liệu vải kate lụa chống nhăn, suôn theo hình thái cơ thể người mặc đã biến Bloodmoon Shirt trở thành một item có thể chiều lòng mọi dáng người.\r\n\r\nNgoài ra, sự đơn giản về màu sắc cũng là một trong những ưu điểm lớn giúp Bloodmoon Shirt dễ dàng kết hợp với các item khác. Và sự thú vị hay không, tuỳ vào sự sáng tạo của bạn, mix match dưới đây chỉ là 1/1000 cách bạn có thể chơi đùa cùng Bloodmoon Shirt thôi!!!', '', 1, 4),
(46, 'CROPTOP ZUNEZX (TAY DÀI)', '8', '500000', '600000', 10, '1634409816_CROPTOP ZUNEZX (TAY DÀI).jpeg', 'Nhắc đến Croptop, đầu tiên phải phải nhắc đến Zune.', '', 1, 2),
(47, 'SET SEETAA', '9', '450000', '500000', 10, '1634408245_SET SEETAA.jpg', 'SEETAA DRESS\r\n\r\nCó cô gái nào mà không có ít nhất một chiếc dress trong tủ đồ, biểu tượng tối cao của sự nữ tính qua nhiều thế hệ. Seeta Dress được chọn lựa kỹ càng từ chất vải và xử lý thiết kế phù hợp nhất với form dáng các cô gái Việt Nam. Zune.Zx gọi Seeta Dress là một sản phẩm Tinh Giản - Tinh tế & đơn giản. \r\n\r\nDáng áo suôn mềm ôm lấy cơ thể đầy nữ tính, sự chấm phá từ những chi tiết như cổ tay áo sử dụng kỹ thuật cắt may thô mang chút nổi loạn đậm chất Grunge. Seeta Dress sẽ là item tối thượng mà những tín đồ của gam màu tối chắc chắn không thể bỏ qua.', '', 1, 2),
(48, 'MINIMALIST SHIRT - BLACKjpeg', '10', '500000', '600000', 10, '1634409891_MINIMALIST SHIRT - BLACKjpeg.jpeg', 'MINIMALIST SHIRT\r\n\r\nThể hiện sự phức tạp của một điều đơn giản.\r\n\r\n“Thời trang là một chuỗi xoay vòng”. Trải qua một quãng đường dài, đã đến lúc chúng ta quay ngược về với sự nguyên bản vốn có: “Back to basic”.\r\n\r\nVà phong cách tối giản Minimalism chính là sự “basic” được thể hiện ở một tầm cao hơn.\r\n\r\nKhông chỉ là những chiếc sơ mi trơn đơn giản với tông màu đen trắng, Zune.zx thiết kế Minimalist Shirt với mong muốn phá bỏ sự nhàm chán, đem đến những cảm xúc mới lạ nơi điểm nhấn nằm ở logo in nổi và dòng text đặc trưng của collection Minimalist vòng quanh tay áo.\r\n\r\nChủ nghĩa tối giản - nơi mà những người yêu thời trang hướng đến giá trị bên trong, giản đơn với cái tôi và cảm xúc thật của chính mình.\r\n\r\nCùng Zune.zx, back to basic!', '', 1, 2),
(49, 'BAE IM REAL SHIRT - WHITE', '11', '500000', '600000', 10, '1634409931_BAE IM REAL SHIRT - WHITE.jpg', 'Cảm xúc luôn là nơi tồn tại những rào cản vô hình tạo ra những khoảng cách khiến ta không thể cất lên thành lời, nhất là những lời yêu thương vốn đã rất khó để bày tỏ. Chắc hẳn bạn cũng đã từng trải qua cảm giác giống như tôi - rất khó để bày tỏ tình cảm đến người mà bạn yêu thương, đúng không?', '', 1, 2),
(50, 'AKI GILE', '12', '500000', '600000', 10, '1634410065_AKI GILE.jpg', 'Đối với tôi, Aki Gile là một lựa chọn không tồi bởi nó hội tụ đầy đủ những yếu tố ấy cùng với tính ứng dụng cao hơn gấp 10 lần. ', '', 1, 2),
(51, 'HOODIE ZUNE.ZX - WHITE', '13', '500000', '600000', 10, '1634408205_HOODIE ZUNE.ZX - WHITE.jpeg', 'MẢNH GHÉP HOÀN HẢO CHO MÙA ĐÔNG TỚI\r\n\r\nGọi như vậy không ngoa chút nào bởi sự đa năng đến hoàn hảo của Zunezx Hoodie khi kế hợp với các items khác giúp bạn thoả sức thiên biến vạn hoá cho ra đời hàng loạt Outfit. Cùng với thiết kế basic được nhấn nhá bằng những dòng chữ ý nghĩa truyền cảm hứng tạo hiệu ứng khác biệt. Form áo suông rộng đặc trưng trong thiết kế của Zune.zx là chìa khoá giúp bạn thả thê sáng tạo mix match hay phối layer tuỳ ý đều rất ổn áp nè !!!', '', 1, 2),
(52, 'CHECKKU PANT', '14', '500000', '600000', 10, '1634409019_CHECKKU PANT.jpg', 'Chekku Pant, chiếc quần hack dáng nhất mùa hè này đến từ Zune.Zx. Với thiết kế dáng suôn thoải mái cùng với hoạ tiết kẻ sọc tạo hiệu ứng khiến chân bạn trông dài miên man và chắc chắn Chekku Pant sẽ là bạn thân với những cô nàng cậu chàng có đôi chân hơi \"xôi thịt\" một chút vì khả năng hack dáng đáng nể của em nó. ', '', 1, 4),
(53, 'HIKARU PANT', '15', '500000', '600000', 10, '1634408919_HIKARU PANT.jpg', '[NÓNG] PHÁT HIỆN CHIẾC QUẦN CHE ĐI KHUYẾT ĐIỂM ĐÔI CHÂN LẠI CÒN HACK DÁNG\r\n\r\nĐùi to hay chân ngắn là những nhược điểm vóc dáng mà một số ít luôn loay hoay tìm cách khắc phục. Vậy trang phục như thế nào là có thể hack dáng? Làm sao để hô biến vòng hông và đùi ‘quá cỡ’ trông thon gọn hơn? \r\n\r\nCâu trả lời được Zune.zx gói gọn tại HIKARU PANT - chiếc quần với điểm nhấn đến từ vệt vải trắng chạy dọc phía sau ống quần. Không đơn giản chỉ là sự mới lạ trong thiết kế, Hikaru Pant với tông màu đen chủ đạo và chất vải quen thuộc co dãn tốt kế thừa từ Redline Pant sẽ tạo nên sự thoải mái, phù hợp với người có vóc dáng hình tam giác hay phần mông và đùi hơi to. \r\n\r\nĐiểm 10 hack dáng của Hikaru Pant còn đến từ form dáng cropped pant: chiều dài vừa phải, phần cạp chun tạo điểm nhấn cho vòng eo lại thuận tiện tuỳ chỉnh kích cỡ, ống quần dáng suông càng làm tăng thêm sự thon gọn, giúp ăn gian chiều cao và đem lại vẻ ngoài năng động, cá tính cho người mặc, phù hợp khi phối cùng boots nâng level cho đôi chân thêm dài, hoặc kết hợp cùng các kiểu giày bệt, sneaker.\r\n\r\nNếu Zune-ers hỏi mặc gì vào mùa hè nắng nóng mà lại tự tin che khuyết điểm thì Zune.zx xin thưa là HIKARU PANT đấy', '', 1, 4),
(54, 'KARE PANT', '16', '500000', '600000', 10, '1634408880_KARE PANT.jpg', 'KARE PANT – Nét “chơi trội” đường phố\r\n\r\nTượng đài thời trang Coco Chanel đã từng nói: “Thời trang không chỉ là trang phục. Thời trang hiện hữu ở bầu trời, ở đường phố. Thời trang phải là những ý tưởng, là cách chúng ta sống, là những gì đang xảy ra.”\r\n\r\nNhắc đến đường phố thì street style chính là tiếng nói tự nhiên nhất của những cái tôi thời trang trong cuộc sống thường nhật. Không có nguyên tắc nào cho phong cách cá tính này, street style đơn giản chỉ là sự sáng tạo, là ‘nét chơi trội’ của những cá nhân thích nổi bật.\r\n\r\nVà Kare Pant cũng bắt nguồn từ chính cảm hứng bất tận đó. Với mong muốn giúp thế hệ trẻ tìm được chính mình, tự tin trong mọi hoàn cảnh, Zune.zx không ngừng thiết kế ra những item có tính ứng dụng cao và khác biệt, mang phong vị đường phố Nhật hòa cùng tinh hoa Việt.\r\n\r\nKare Pant - khác thường từ những điều bình thường. Còn bạn thì sao?', '', 1, 4),
(55, 'TSUNAMI TEE', '17', '500000', '600000', 10, '1634409046_TSUNAMI TEE.jpeg', 'TSUNAMI SHIRT - THỔI HỒN CHO CƠN SÓNG THẦN Nhật Bản vốn là kho tàng cảm hứng bất tận của Zune.zx, cả ở sự nhẹ nhàng thanh tịnh trong cách thưởng trà tới những thứ chấn động địa cầu như thiên tai. Và sóng thần - là một trong những \"cụm từ\" có lẽ mang sức ảnh hưởng mạnh mẽ nhất. Artwork Tsunami đã không còn xa lạ trong các thiết kế của Zune.zx và một lần nữa cơn sóng thần ấy lại được tái hiện bằng công nghệ in chìm hiện đại bậc nhất trên Tsunami Shirt đầy tinh tế và mới mẻ. Khác với dòng Shirt thông thường Tsunami Shirt được ra đời với chất liệu Suede Leather cao cấp chống nhăn, giúp quên đi nỗi lo xước chỉ hoặc xù vải. Thiết kế cổ Cuban độc đáo, phóng khoáng cùng form áo suông, rộng che đi khuyết điểm cơ thể, đem lại cảm giác thoải mái khi mang. Sự cộng hưởng từ những ưu điểm ấy đã tạo nên một sự hài hòa và nổi bật đến lạ cho artwork Tsunami đầy phóng khoáng, sống động nhưng cũng rất nghị lực mang tính cách của người dân nơi đây.', '', 1, 4),
(56, 'TSUNAMI SHIRT', '18', '500000', '600000', 10, '1634408142_TSUNAMI SHIRT.jpg', 'TSUNAMI SHIRT - THỔI HỒN CHO CƠN SÓNG THẦN\r\n\r\nNhật Bản vốn là kho tàng cảm hứng bất tận của Zune.zx, cả ở sự nhẹ nhàng thanh tịnh trong cách thưởng trà tới những thứ chấn động địa cầu như thiên tai. Và sóng thần - là một trong những \"cụm từ\" có lẽ mang sức ảnh hưởng mạnh mẽ nhất.\r\n\r\nArtwork Tsunami đã không còn xa lạ trong các thiết kế của Zune.zx và một lần nữa cơn sóng thần ấy lại được tái hiện bằng công nghệ in chìm hiện đại bậc nhất trên Tsunami Shirt đầy tinh tế và mới mẻ.\r\n\r\nKhác với dòng Shirt thông thường Tsunami Shirt được ra đời với chất liệu Suede Leather cao cấp chống nhăn, giúp quên đi nỗi lo xước chỉ hoặc xù vải. Thiết kế cổ Cuban độc đáo, phóng khoáng cùng form áo suông, rộng che đi khuyết điểm cơ thể, đem lại cảm giác thoải mái khi mang.\r\n\r\nSự cộng hưởng từ những ưu điểm ấy đã tạo nên một sự hài hòa và nổi bật đến lạ cho artwork Tsunami đầy phóng khoáng, sống động nhưng cũng rất nghị lực mang tính cách của người dân nơi đây.', '', 1, 4),
(57, 'IRREGULAR TEE - BLACK', '19', '500000', '600000', 10, '1634408812_IRREGULAR TEE - BLACK.jpeg', 'IRREGULAR ZUNE.ZX TEE - CHIẾC ÁO DÙNG CHO CẢ BỐN MÙA\r\n\r\nNghe thì có vẻ lạ nhưng sự thật là thế. Với lối sáng tạo trong thiết kế, Irregular Tee có sự phá cách ở phần cổ áo biến nó trở nên đa năng hơn, có thể biến hóa được nhiều phong cách và hơn hết là sử dụng được cả bốn mùa. \r\n', '', 1, 4),
(58, 'RED HOKKAIDO KIMONO', '20', '500000', '600000', 10, '1634407950_RED HOKKAIDO KIMONO.jpg', 'RED HOKKAIDO KIMONO\r\n\r\nVăn hóa Nhật Bản - Kho tàng cảm hứng bất tận mà Zune.zx khai thác và lồng ghép xuyên suốt mỗi thiết kế, sản phẩm hay bộ sưu tập. Quốc phục nức tiếng của “xứ sở mặt trời mọc” hiển nhiên không ngoại lệ. Nét đẹp Kimono qua bản cải tiến dị biệt “Hokkaido” được tinh giản nhằm thích nghi cùng muôn hình kiểu phối. Tiêu điểm với artwork “Hinomaru” thêu trên lưng cùng với dáng áo buông thả phóng khoáng hơn, tay áo dài rộng, có thể chống nắng đồng thời tích hợp dải khuy bấm nếu bạn muốn mặc như một chiếc cardigan. \r\n\r\nChỉ như vậy, Red Hokkaido Kimono đã đủ mê hoặc bạn chưa?', '', 1, 4),
(59, 'ZUNEX CAP', '21', '500000', '600000', 10, '1634408033_ZUNEX CAP.jpeg', 'ZUNEzx CAP\r\n\r\nNón không chỉ là phụ kiện che nắng che mưa mà còn đóng một vai trò quan trọng trong việc hoàn thiện phong cách thời trang của bạn. Với những người trẻ hiện đại, mũ lưỡi trai Zune.zx Cap là một item khó thể bỏ qua. Màu đen cổ điển và logo Zune.zx màu đỏ thêu nổi góp phần tôn lên vẻ bí ẩn của bạn mỗi khi diện phụ kiện không bao giờ lỗi thời này. Kiểu dáng nhỏ gọn, Zune.zx Cap được lòng những người yêu thời trang bởi tính thích nghi với mọi phong cách, từ dịu dàng đến cá tính, năng động.', '', 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `id_nhanvien` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
