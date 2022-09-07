-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.epizy.com
-- Generation Time: Sep 07, 2022 at 10:54 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31913118_Shiva`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_slider`
--

CREATE TABLE `add_slider` (
  `id` int(11) NOT NULL,
  `simage` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_slider`
--

INSERT INTO `add_slider` (`id`, `simage`, `created_at`, `updated_at`) VALUES
(1, 'download.jpg', '2022-05-10 04:50:12', '2022-05-10 04:50:12'),
(2, 'a.jpg', '2022-05-10 04:50:43', '2022-05-10 04:50:43'),
(3, 'a.png', '2022-05-10 04:50:58', '2022-05-10 04:50:58'),
(4, 'istockphoto-1206800961-612x612.jpg', '2022-05-10 04:51:15', '2022-05-10 04:51:15'),
(5, 'mobile_app.png', '2022-05-10 05:37:34', '2022-05-10 05:37:34'),
(6, 'pizza-g8bbad4623_1920.png', '2022-05-16 05:55:02', '2022-05-16 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-05-23 03:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `bhavesh`
--

CREATE TABLE `bhavesh` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `checks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bhavesh`
--

INSERT INTO `bhavesh` (`id`, `first`, `last`, `email`, `password`, `checks`) VALUES
(3, 'Bhavesh', 'Singh', 'singhbhavesh682@gmail.com', 'singhbhavesh682@gmail.com', 'click');

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` text NOT NULL,
  `no_people` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `book_otp` varchar(100) NOT NULL DEFAULT '1234',
  `book_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`id`, `name`, `email`, `contact`, `no_people`, `message`, `book_otp`, `book_datetime`) VALUES
(1, 'BHAVESH SINGH ', 'singhbhavesh682@gmail.com', '09838417005', '5', 'Book', '7448', '2022-07-30 14:41:00'),
(2, 'Shobhana Gupta', 'shobhu123@gmail.com', '9670203062', '3', 'Saare item ghr pe deliver krdo...aa ni skteðŸ˜‚ aur bhut bhuk lgi hðŸ¤£', '7334', '2022-07-31 13:30:00'),
(3, '', '', '', '', '', '5286', '0000-00-00 00:00:00'),
(4, '', '', '', '', '', '7401', '0000-00-00 00:00:00'),
(5, '', '', '', '', '', '1920', '0000-00-00 00:00:00'),
(6, '', '', '', '', '', '4069', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `total` decimal(9,2) NOT NULL DEFAULT 0.00,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `created_at`) VALUES
(1, 'Fast Food', '2022-07-30 06:51:14'),
(2, 'Non Veg', '2022-07-30 06:53:56'),
(3, 'Veg Food', '2022-07-30 06:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `card` varchar(225) NOT NULL,
  `card_number` int(11) NOT NULL,
  `expdate` int(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `cvv` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`id`, `name`, `work`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`) VALUES
(1, 'Rashmika Mandanna', 'Cook', 'rush.jpg', 'www.twitter.com', 'www.facebook.com', 'www.instagram.com', 'www.linkedin.com'),
(2, 'Allu Arjun', 'Master Chef', 'allu.jpg', 'www.instagram.com', 'www.instagram.com', 'www.instagram.com', 'www.instagram.com'),
(3, 'Bhavesh Singh', 'Cook', 'bhav.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'HEMANT SINGH', 's@gmail.com', 'Hello', '2022-07-31 06:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `master_states`
--

CREATE TABLE `master_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_code` int(10) UNSIGNED DEFAULT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_states`
--

INSERT INTO `master_states` (`id`, `country_id`, `state`, `st_code`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 100, 'Tamilnadu', 22, 'TN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(2, 100, 'Andhra Pradesh', 1, 'AP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(3, 100, 'Arunachal Pradesh', 2, 'AN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(4, 100, 'Assam', 3, 'AS', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(5, 100, 'Bihar', 4, 'BH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(6, 100, 'Tripura', 23, 'TP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(7, 100, 'Chattisgarh', 28, 'CG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(9, 100, 'Other', 30, 'OT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(10, 100, 'Delhi', 26, 'DL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(11, 100, 'Goa', 5, 'GO', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(12, 100, 'Gujrat', 6, 'GJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(13, 100, 'Haryana', 7, 'HR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(14, 100, 'Himachal Pradesh', 8, 'HP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(15, 100, 'Jammu & Kashmir', 9, 'JK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(16, 100, 'Jharkhand', 29, 'JH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(17, 100, 'Karnataka', 10, 'KT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(18, 100, 'Kerala', 11, 'KL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(19, 100, 'Lakshdweep', 31, 'LD', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(20, 100, 'Madhya Pradesh', 12, 'MP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(21, 100, 'Maharashtra', 13, 'MH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(22, 100, 'Manipur', 14, 'MN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(23, 100, 'Meghalaya', 15, 'MG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(24, 100, 'Mizoram', 16, 'MZ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(25, 100, 'Nagaland', 17, 'NG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(26, 100, 'Orissa', 18, 'OR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(27, 100, 'Pondichery', 32, 'PC', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(28, 100, 'Punjab', 19, 'PJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(29, 100, 'Rajasthan', 20, 'RJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(30, 100, 'Sikkim', 21, 'SK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(33, 100, 'Uttar Pradesh', 24, 'UP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(34, 100, 'Uttarakhand', 27, 'UK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(35, 100, 'West Bengal', 25, 'WB', '2021-11-10 02:10:42', '2021-11-10 02:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `pname` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `sub_cat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `des`, `status`, `price`, `old_price`, `created_at`, `pname`, `category`, `sub_cat`) VALUES
(1, '53110049.webp', 'It should be no shocker that a classic is the statistical favorite. Cheese pizza is one of the most popular choices. It will always be a simple, unadorned masterpiece on its own.', '1', '299.00', '599.00', '2022-07-30 07:13:01', 'Cheese Pizza', '1', 'Pizza'),
(2, 'shutterstock_570541132.jpg.webp', 'When you want to jazz up your cheese pizza with color and texture, veggies are the perfect topping. And youâ€™re only limited by your imagination. Everything from peppers and mushrooms, to eggplant and onions make for an exciting and tasty veggie pizza.', '1', '499.00', '999.00', '2022-07-30 07:14:33', 'Veggie Pizza', '1', 'Pizza'),
(3, 'shutterstock_570541132.jpg.webp', 'If you love BBQ chicken and you love pizza, why not put them together? This has long been a cult favorite of sports fans and college kids. The chicken slathered over the top of a pie gives it a tangy, sweet flavor that canâ€™t be beaten.', '1', '1099.00', '1249.00', '2022-07-30 07:16:34', 'BQ Chicken Pizza', '1', 'Pizza'),
(4, 'chilli-burger_625x350_41464592906.webp', 'This scrumptious burger sits under a chilli lamb pattie, roasted bell pepper dip, onions, tomatoes and lettuce.', '1', '149.00', '249.00', '2022-07-30 07:26:42', 'Chilli burger With Pepper Relish', '1', 'Burger'),
(5, 'Biryani_of_Lahore.jpg', ' * Rice * Spices * Meat', '1', '239.00', '500.00', '2022-07-30 07:29:07', 'Chicken Biryani', '2', 'Biryani'),
(6, 'mughlai-chicken-korma-4-480x480.jpg', 'The rest are just ghee, onions (lots of them), cashew nuts, garlic, ginger, green chillies and chicken.', '1', '399.00', '499.00', '2022-07-30 07:30:55', 'Mughlai Chicken', '2', 'Chicken Muglai'),
(7, 'muttonkarri.jpg', 'Mutton curry is a dish that is prepared from goat meat and vegetables', '1', '799.00', '999.00', '2022-07-30 07:32:57', 'Matan Curry', '2', 'Matan Kari'),
(8, 'Authentic-Chicken-Do-Pyaza.jpg', '. An Indian favourite, this delicious aromatic chicken & onion curry has wonderful depth of flavour,', '1', '199.00', '299.00', '2022-07-30 07:35:26', 'Do Pyaza', '2', 'Chicken Do Payaza'),
(9, 'Idli-and-Sambar-1.jpg', ' Idli Sambar is a South Indian breakfast meal where soft fluffy steamed cakes known as idli are served with sambar, a vegetable lentil stew.', '1', '60.00', '99.00', '2022-07-30 07:37:19', 'Idli & Sambhar', '3', 'Idli Sambhar'),
(10, 'tandoori-roti-2-1-500x375.jpg', 'Tandoor bread refers to a bread baked in a clay oven called a tandoor', '1', '10.00', '20.00', '2022-07-30 08:17:07', 'Tanduri Roti', '3', 'Roti');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `created-at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `sname`, `created_at`) VALUES
(1, 1, 'Pizza', '2022-07-30 06:51:39'),
(2, 1, 'Burger', '2022-07-30 06:51:53'),
(3, 1, 'Rolls', '2022-07-30 06:52:12'),
(4, 2, 'Biryani', '2022-07-30 06:54:38'),
(5, 2, 'Chicken Muglai', '2022-07-30 06:55:55'),
(6, 2, 'Matan Kari', '2022-07-30 06:56:24'),
(7, 2, 'Chicken Do Payaza', '2022-07-30 06:56:39'),
(8, 2, 'Chili Chicken', '2022-07-30 06:57:03'),
(9, 2, 'Chicken Tanduri', '2022-07-30 06:57:26'),
(10, 2, 'Mutton Handi', '2022-07-30 06:57:47'),
(11, 3, 'Idli Sambhar', '2022-07-30 07:00:00'),
(12, 3, 'Kaju Panner', '2022-07-30 07:01:40'),
(13, 3, 'Sahi Panner', '2022-07-30 07:01:59'),
(14, 3, 'Aaloo Matar', '2022-07-30 07:02:39'),
(15, 3, 'Veg Rice', '2022-07-30 07:03:08'),
(16, 3, 'Roti', '2022-07-30 07:03:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_slider`
--
ALTER TABLE `add_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bhavesh`
--
ALTER TABLE `bhavesh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_slider`
--
ALTER TABLE `add_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bhavesh`
--
ALTER TABLE `bhavesh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book_table`
--
ALTER TABLE `book_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
