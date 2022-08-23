-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 04:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8\

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
create database shopforhome;
use shopforhome;
show tables;
CREATE TABLE `cart` (
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`) VALUES
(1),
(2),
(21),
(2147483641),
(2147483642),
(2147483643),
(2147483645);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `status` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `status`) VALUES
('B346GG', 0),
('sdfasfa', 0),
('dsasdasf', 0),
('BDGDSDF', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(28),
(28),
(28),
(28),
(28);

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

CREATE TABLE `order_main` (
  `order_id` bigint(20) NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`order_id`, `buyer_address`, `buyer_email`, `buyer_name`, `buyer_phone`, `create_time`, `order_amount`, `order_status`, `update_time`) VALUES
(2147483643, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:20', '100.00', 1, '2022-07-09 14:37:47'),
(2147483645, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:29', '4.00', 1, '2022-07-09 14:37:01'),
(2147483641, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:07', '180.00', 2, '2018-03-15 12:52:53'),
(2147483647, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:35', '2.00', 2, '2018-03-15 12:52:55'),
(2147483649, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:58:23', '150.00', 1, '2022-07-09 14:36:24'),
(2147483642, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:21', '4.00', 2, '2018-03-15 13:02:09'),
(2147483640, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:16', '20.00', 2, '2018-03-15 13:02:52'),
(2147483648, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:06', '134.00', 1, '2018-03-15 13:02:56'),
(7, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:31:01', '133.00', 2, '2022-07-09 14:36:20'),
(9, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:31:39', '140.00', 2, '2022-07-09 14:36:08'),
(11, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 14:32:16', '30.00', 1, '2022-07-09 14:36:06'),
(15, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 17:42:42', '20.00', 2, '2022-07-09 17:42:48'),
(17, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-09 17:47:33', '30.00', 1, '2022-07-09 17:47:55'),
(25, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-10 13:43:04', '202.00', 2, '2022-07-10 13:43:23'),
(27, 'delhi', 'aman@gmail.com', 'aman singh', '8871730228', '2022-07-10 13:50:10', '20.00', 1, '2022-07-10 13:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`, `category_type`, `create_time`, `update_time`) VALUES
(2147483641, 'Chairs', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27'),
(2147483642, 'Photo_Frame', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21'),
(2147483644, 'Clock', 3, '2018-03-10 01:01:09', '2018-03-10 01:01:09'),
(2147483645, 'Art', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int(11) DEFAULT 0,
  `create_time` datetime DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int(11) DEFAULT 0,
  `product_stock` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--



-- --------------------------------------------------------
INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('C0001', 0, '2018-03-10 10:37:39', 'Modern Brown Chair', 'assets/assets/BrownChair.jpg', 'Brown Chair', '10.00', 0, 200, '2018-03-10 19:42:02');
INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('C0002', 0, '2018-03-10 10:37:39', 'Modern White Chair', 'assets/assets/WhiteChair.jpg', 'White Chair', '20.00', 0, 200, '2018-03-10 19:42:02'),
('C0003', 0, '2018-03-10 10:37:39', 'Modern Velvet Chair', 'assets/assets/VelvetChair.jpg', 'Velvet Chair', '30.00', 0, 200, '2018-03-10 19:42:02');

INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('C0004', 2, '2018-03-10 10:37:39', 'Modern Glass Frame', 'assets/assets/GlassFrame.jpg', 'Glass Frame', '20.00', 0, 200, '2018-03-10 19:42:02'),
('C0005', 2, '2018-03-10 10:37:39', 'Modern Gold Frame', 'assets/assets/GoldFrame.jpg', 'Gold Frame', '30.00', 0, 200, '2018-03-10 19:42:02'),
('C0006', 2, '2018-03-10 10:37:39', 'Modern Flower Frame', 'assets/assets/FlowerFrame.jpg', 'Flower Frame', '40.00', 0, 200, '2018-03-10 19:42:02');

INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('C0007', 3, '2018-03-10 10:37:39', 'Designer Watch 1', 'assets/assets/DesignerWatch.jpg', 'Designer Watch', '20.00', 0, 200, '2018-03-10 19:42:02'),
('C0008', 3, '2018-03-10 10:37:39', 'Designer Watch 2', 'assets/assets/GridWatch.jpg', 'Grid Watch', '30.00', 0, 200, '2018-03-10 19:42:02'),
('C0009', 3, '2018-03-10 10:37:39', 'Designer Watch 3', 'assets/assets/PeacockWatch.jpg', 'Peacock Watch', '40.00', 0, 200, '2018-03-10 19:42:02');

INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('D0001', 1, '2018-03-10 10:37:39', 'Beautiful Wall Art', 'assets/assets/CraftArt.jpg', 'colouful Wall Art', '20.00', 0, 200, '2018-03-10 19:42:02'),
('D0002', 1, '2018-03-10 10:37:39', 'House Art For Wall', 'assets/assets/HouseArt.jpg', 'House Art', '30.00', 0, 200, '2018-03-10 19:42:02'),
('D0003', 1, '2018-03-10 10:37:39', 'Plant inspired Wall Art', 'assets/assets/WallArt.jpg', 'Lotus Wall Art', '40.00', 0, 200, '2018-03-10 19:42:02');

--
-- Table structure for table `product_in_order`
--

CREATE TABLE `product_in_order` (
  `id` bigint(20) NOT NULL,
  `category_type` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int(11) DEFAULT NULL,
  `cart_user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_in_order`
--

INSERT INTO `product_in_order` (`id`, `category_type`, `count`, `product_description`, `product_icon`, `product_id`, `product_name`, `product_price`, `product_stock`, `cart_user_id`, `order_id`) VALUES
(3, 0, 3, 'Modern Brown Chair', 'assets/assets/BrownChair.jpg', 'C0001', 'Brown Chair', '10.00', 200, NULL, 2147483641);
select * from product_in_order;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `active`, `address`, `email`, `name`, `password`, `phone`, `role`) VALUES
(2147483641, b'1', '3200 West Road', 'customer1@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123456789', 'ROLE_CUSTOMER'),
(2147483642, b'1', '2000 John Road', 'manager1@email.com', 'manager1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '987654321', 'ROLE_CUSTOMER'),
(2147483643, b'1', '222 East Drive ', 'employee1@email.com', 'employee1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123123122', 'ROLE_EMPLOYEE'),
(2147483645, b'1', '3100 Western Road A', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER'),
(1, b'1', 'tilak nagar', 'um@gmail.com', 'Utsav Mori', 'xyzxyz1234', '9898989898', 'ROLE_MANAGER');
select * from users;
-- --------------------------------------------------------
INSERT INTO `users` (`id`, `active`, `address`, `email`, `name`, `password`, `phone`, `role`) VALUES
(2147483624, b'1', '3200 West Road', 'admin@email.com', 'admin1', '$2a$10$UJGVOw0K0clPnOTbJX/ubOuW3lQWx3WD7GlcmYddI/ndEjJxudXxS', '999999999', 'ROLE_MANAGER');
--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `created_date`, `product_id`, `user_id`) VALUES
(3, '2022-07-09 14:21:09', 'B0001', 2),
(5, '2022-07-09 14:30:43', 'C0002', 2),
(12, '2022-07-09 17:42:22', 'B0001', 2),
(18, '2022-07-10 13:07:33', 'B0002', 2),
(20, '2022-07-10 13:07:43', 'F0002', 2),
(22, '2022-07-10 13:42:36', 'B0001', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_in_order`
--
ALTER TABLE `product_in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  ADD KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  ADD KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
