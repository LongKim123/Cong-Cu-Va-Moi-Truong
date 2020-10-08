-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 08:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `email`, `address`, `phone`) VALUES
(13, 'name', '123', 'fsagjg', 'camcsfj', 54353),
(14, 'longk', '123', 'notelevision99@gmail.com', 'jajja', 988);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(7, 54, 1, 'Lẩu gà lá giang', 390000, 3),
(8, 54, 3, 'Lẩu bò nhúng giấm', 360000, 3),
(9, 55, 11, 'Lẩu riêu cua bắp non', 63000, 3),
(10, 55, 25, 'thêm nè', 480000, 4),
(11, 55, 19, 'Lẩu lươn', 240000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idaccount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `NgayDH` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `idaccount`, `status`, `NgayDH`) VALUES
(54, 13, '', '2020-10-09 00:50:50'),
(55, 14, '', '2020-10-09 01:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Món Lẩu', 'https://drde.com.vn/wp-content/uploads/2018/11/1-1-300x300.png'),
(2, 'Đồ ăn nhanh', 'https://1.bp.blogspot.com/-hpkixiWbNKQ/XdNmsoopj7I/AAAAAAAAGfw/7P9Fz-dJa0gX9gm9-A_T_UeqDbUzk8TlACLcBGAsYHQ/s320/fast-food-combo-icon-hamburge-pizza-drink-24going.jpg'),
(3, 'Đồ uống', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRjhxQ2dMqbuILrkTMWQGwdDzJ7VEtL1DPKsw&usqp=CAU'),
(4, 'Phở', 'https://icons-for-free.com/iconfiles/png/512/food+food+bowl+hot+food+hotsoup+soup+icon-1320168013685715073.png'),
(5, 'Món Kem', 'https://png.pngtree.com/png-vector/20190628/ourlarge/pngtree-cupcake-icon-for-your-project-png-image_1521278.jpg'),
(6, 'Món nướng BBQ', 'https://comps.canstockphoto.com/bbq-grill-vector-icon-illustration_csp54836929.jpg'),
(7, 'Quản Lý Sản Phẩm', 'https://www.tongkhomavach.com/product_images/j/470/quan-ly-ban-hang1__91939__76218_zoom.png');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `motasanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`, `giasanpham`, `idsanpham`, `motasanpham`) VALUES
(1, 'Lẩu gà lá giang', 'https://beptruong.edu.vn/wp-content/uploads/2018/03/mon-lau-ga-la-giang.jpg', 130000, 1, 'Trong những ngày hè hay thời tiết nóng bức, nấu món lẩu gà lá giang đãi cả nhà thì còn gì hấp dẫn hơn. Với sự thơm ngon, ngọt thanh của thịt gà cùng hương vị chua chua đặc trưng của lá giang chắc chắn'),
(2, 'Lẩu thái', 'https://nauanlambanh.com/wp-content/uploads/2019/01/46494636_286763265286624_272623594574446592_n.png', 98000, 1, 'Thế giới lẩu thật là vô tận, và lẩu luôn là món được chọn nhiều nhất cho các buổi sum họp, liên hoan. Bạn hãy lưu ngay những công thức lẩu tuyệt ngon này để trổ tài khi có dịp nhé.'),
(3, 'Lẩu bò nhúng giấm', 'https://nauanlambanh.com/wp-content/uploads/2019/01/46498054_286763288619955_6042197122005073920_n.png', 120000, 1, '– Một phần dứa xay, chắt lấy nước cốt, một phần mang băm nhỏ. – Hành tây cắt nhỏ, sả đập dập \r\n– Thịt bò rửa sạch với nước sôi, xắt lát thật mỏng. Uớp thịt với hành củ băm nhỏ, 1 thìa canh mắm, 1 thìa'),
(4, 'Hamberger', 'https://doanhnhanonline.com.vn/wp-content/uploads/2017/06/1-41.jpg', 65000, 2, 'Ngành thức ăn nhanh đang trở nên chật chội khi có quá nhiều mô hình mới cạnh tranh quyết liệt.\r\n\r\nNgành kinh doanh đồ ăn nhanh hiện đang tụt xuống hạng thứ 3, đứng sau tốc độ tăng trưởng của ngành nhà'),
(5, 'Lẩu cá chép', 'https://imgs.vietnamnet.vn/Images/2017/09/06/18/20170906185407-lau-2.jpg', 200000, 1, 'Cá rửa thật sạch, xương và đầu đuôi để riêng. Phần bụng thịt lọc xương, lấy nửa quả chanh và gừng đập dập chà xát lên mặt da và phần bụng cá. Mục đích khử mùi tanh của cá.\r\n\r\n- Phần bụng cá sau khi sơ'),
(6, 'Pizza', 'https://www.simplyrecipes.com/wp-content/uploads/2019/09/easy-pepperoni-pizza-lead-4.jpg', 210000, 2, 'Một món ăn xuất phát mà có lẽ ai cũng biết, nổi tiếng khắp thế giới với mùi vị khá là đặc biệt và phù hợp với mọi lứa tuổi. \r\nChiếc pizza đầu tiên được cho là bắt nguồn từ Hy Lạp cổ đại, tại vùng đất '),
(7, 'Bánh chuối chiên', 'https://assets.grab.com/wp-content/uploads/sites/11/2020/03/01210531/bnhchuoi.jpg', 25000000, 2, 'Thật sự món này xứng đáng đạt danh hiệu “nữ quàng” của làng ăn vặt lắm nè, mỗi miếng bánh chuối chiên bí ngô mật ong dài oạch chỉ có 9K thôi, gọi combo lại càng rẻ hơn. Bánh có vỏ mỏng, chuối được chi'),
(8, 'Bánh bao chiên', 'https://assets.grab.com/wp-content/uploads/sites/11/2020/03/01211545/F147AD42-C0DF-4777-BC8E-3390CD4E91EE-e1583068558491.jpg', 17000, 2, ' Bánh Bao Chiên, hô biến món ăn vặt “tuổi thơ” trở nên sang chảnh với nhân mực, tôm hơi bị xịn sò luôn á nha. Chưa kể quán còn có combo 3 hay 5 kèm nước ngọt, nước sâm rẻ hơn mua lẻ nhiều. Cả thế giới'),
(9, 'Lẩu mắm', 'https://toplist.vn/images/800px/lau-mam-94637.jpg', 230000, 1, 'Lẩu mắm là món lẩu đặc trưng của vùng Tây Nam Bộ. Ngày Tết, món này rất được ưa chuộng vì hương vị quê hương vẫn còn giữ được ở trong từng nồi lẩu.\r\nCũng như các món lẩu khác, công việc chuẩn bị và ch'),
(10, 'Lẩu Kim Chi Hàn Quốc', 'https://toplist.vn/images/800px/lau-kim-chi-hai-san-362832.jpg', 190000, 1, 'Lẩu hải sản thì đã quá quen thuộc rồi đúng không? Thêm một chút kim chi vừa chua chua, cay cay ăn cùng với hải sản như mực, tôm thì hết sảy. Chỉ cần thêm 1 nguyên liệu thôi thì đã thay đổi cả một hươn'),
(11, 'Lẩu riêu cua bắp non', 'https://toplist.vn/images/800px/lau-rieu-cua-bap-bo-ngon-ngay-tet-362843.jpg', 21000, 1, 'Lẩu riêu cua bắp bò là món ăn khoái khẩu của nhiều người, rất phù hợp với dịp Tết cùng cả nhà thưởng thức. Ngay tại nhà, bạn cũng có thể tự nấu lẩu riêu cua vị chuẩn ngon. Để chống ngán ngày Tết, bạn '),
(12, 'Lẩu bao tử hầm tiêu xanh', 'https://toplist.vn/images/800px/lau-bao-tu-ham-tieu-xanh-362835.jpg', 200000, 1, 'Món lẩu này bảo đảm sẽ hút hồn không chỉ bạn mà còn ngay cả gia đình bạn cũng phải mê mẩn lạ thường, nước dùng cay cay, thơm nức nồng mùi tiêu xanh, dạ dày mềm mầm những vẫn còn giữ được độ giòn sực k'),
(13, 'Bánh tráng trộn', 'https://ganesh.vn/wp-content/uploads/2019/10/banh-trang-tron.jpg', 25000, 2, 'Bánh tráng trộn luôn nằm trong danh sách những món ăn yêu thích nhất của bất kì người Sài Gòn nào. Và có lẽ không chỉ với mỗi người dân Sài Thành mà món ăn vặt bình dị này còn được ưa chuộng, yêu mến '),
(14, 'Nem chua rán', 'https://ganesh.vn/wp-content/uploads/2019/10/nem-chua-ran.jpg', 19000, 2, 'Nếu Sài Gòn có bánh tráng trộn là một thứ đồ ăn vặt nổi tiếng khắp bốn phương thì Hà Nội cũng không hề kém cạnh với món nem chua rán khiến ai cũng phải say đắm. Nem chua rán là một món ăn vặt quen thu'),
(15, 'Phô mai que', 'https://ganesh.vn/wp-content/uploads/2019/10/pho-mai-que.jpg', 15000, 2, 'Phô mai que là một món ăn vặt từng gây sốt một thời và cho đến nay vẫn chưa hề hạ nhiệt. Phô mai que như một làn gió mới minh chứng cho sự du nhập của ẩm thực nước ngoài vào Việt Nam.\r\nSức hấp dẫn của'),
(16, 'Cút lộn xào me', 'https://ganesh.vn/wp-content/uploads/2019/10/cut-lon-xao-me.jpg', 45000, 2, 'Đây chính là một món ăn vặt có cách chế biến đơn giản nhất trong những món đơn giản. Tuy vậy, nó lại rất “gây nghiện” và được vô cùng nhiều người ưa thích. Vào những ngày gió mùa về, trong tiết trời s'),
(17, 'Cơm cuộn hàn quốc', 'https://media.cooky.vn/recipe/g2/14343/s/recipe14343-prepare-step5-636258604595579306.jpg', 25000, 2, 'Dù là một món ăn từ nước ngoài du nhập vào nhưng cơm cuộn Hàn Quốc rất được lòng người dân Việt Nam và tạo thành một cơn sốt đến nay vẫn chưa hề hạ nhiệt. Món ăn này phát triển cùng với sự phát triển '),
(18, 'Bắp rang bơ', 'https://massageishealthy.com/wp-content/uploads/2018/08/nhung-mon-an-vat-de-kinh-doanh-de-ban-do-an-vat-cho-hoc-sinh-1.jpg', 20000, 2, 'Bắp rang bơ – những món ăn vặt dễ kinh doanh – Những món ăn vặt dễ kinh doanh, dễ bán đồ ăn vặt cho học sinh'),
(19, 'Lẩu lươn', 'https://ameovat.com/wp-content/uploads/2018/08/maxresdefault-600x401.jpg', 120000, 1, 'Lẩu lươn là đặc sản nổi tiếng trong các tiệc cưới, đám đình hay trong các bữa ăn của dân người miền Nam. Khi đến những nơi đây các bạn đừng quên thưởng thức đặc sản là lẩu lươn tại các miền Tây sông n'),
(20, 'Lẩu cá thác lát cổ khoa', 'https://ameovat.com/wp-content/uploads/2018/07/cach-nau-lau-ca-thac-lac-3-600x450.jpg', 230000, 1, 'Cách nấu lẩu cá thác lác khổ qua (mướp đắng) cùng một số loại rau củ đặc trưng sẽ là lựa chọn không thể bỏ qua, đặc biệt là thưởng thức trong những ngày mưa se lạnh. Để nấu lẩu cá thác lác, bạn chuẩn '),
(23, 'sửa có lại nè', 'https://cdn.24h.com.vn/upload/3-2019/images/2019-07-04/1562209581-783-thuc-don-ca-tuan-nhung-mon-ngon-tuoi-mat-giai-nhiet-nang-nong-ngay-he-thu-5-1562209332-width1874height2048.jpg', 11111111, 2, 'e'),
(25, 'thêm nè', 'https://cdn.24h.com.vn/upload/3-2019/images/2019-07-04/1562209581-783-thuc-don-ca-tuan-nhung-mon-ngon-tuoi-mat-giai-nhiet-nang-nong-ngay-he-thu-5-1562209332-width1874height2048.jpg', 120000, 4, 'sản phẩm đã được có hình'),
(26, 'sản phẩm thêm2', 'https://cdn.24h.com.vn/upload/3-2019/images/2019-07-04/1562209581-783-thuc-don-ca-tuan-nhung-mon-ngon-tuoi-mat-giai-nhiet-nang-nong-ngay-he-thu-5-1562209332-width1874height2048.jpg', 1104, 2, 'sản phẩm thêm 2h09'),
(27, 'thêm ko hình', 'ko hình', 100000, 1, 'sản phẩm thêm ă');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masanpham` (`masanpham`),
  ADD KEY `iddonhang` (`iddonhang`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idaccount` (`idaccount`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idaccount`) REFERENCES `account` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idsanpham`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
