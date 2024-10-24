-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2024 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rai`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_desc` varchar(50) NOT NULL,
  `product_cost` varchar(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Wooden Dining Table', 'A classic wooden dining table for six', '299.99', 'tables', 'office1.jpg'),
(2, 'Glass Coffee Table', 'A sleek glass coffee table', '149.99', 'tables', 'office2.jpg'),
(3, 'Extendable Dining Table', 'A modern extendable dining table', '399.99', 'tables', 'office3.jpg'),
(4, 'Rustic Farmhouse Table', 'Rustic farmhouse style dining table', '499.99', 'tables', 'office4.jpg'),
(5, 'Round Marble Table', 'Elegant round marble table', '249.99', 'tables', 'dinning1.jpg'),
(6, 'Folding Table', 'A space-saving folding table', '89.99', 'tables', 'dinning4.jpg'),
(7, 'Glass Top Dining Table', 'Modern glass top dining table', '349.99', 'tables', 'dinning3.jpg'),
(8, 'Outdoor Picnic Table', 'Durable outdoor picnic table', '199.99', 'tables', 'dinning2.jpg'),
(9, 'Square Wooden Table', 'Square wooden table with four chairs', '329.99', 'tables', 'table1.jpg'),
(10, 'Vintage Coffee Table', 'A vintage-style wooden coffee table', '179.99', 'tables', 'table2.jpg'),
(31, 'Classic Wooden Chair', 'A sturdy wooden chair ', '59.99', 'chairs', 'chair1.jpg'),
(32, 'Modern Office Chair', 'Ergonomic office chair ', '129.99', 'chairs', 'chai2.jpg'),
(33, 'Leather Armchair', 'Comfortable leather armchair ', '249.99', 'chairs', 'chair3.jpg'),
(34, 'Recliner Chair', 'Luxurious recliner chair', '299.99', 'chairs', 'chair4.jpg'),
(35, 'Folding Chair', 'Portable folding chair ', '19.99', 'chairs', 'chair5.jpg'),
(36, 'Plastic Patio Chair', 'Lightweight plastic chair ', '14.99', 'chairs', 'chair6.jpg'),
(37, 'Dining Room Chair', 'Elegant dining chair ', '89.99', 'chairs', 'chair7.jpg'),
(38, 'Bar Stool Chair', 'Stylish bar stool ', '69.99', 'chairs', 'chair3.jpg'),
(39, 'Rocking Chair', 'Classic wooden rocking chair', '159.99', 'chairs', 'chair5.jpg'),
(40, 'Accent Chair', 'Contemporary accent chair ', '109.99', 'chairs', 'chair2.jpg'),
(41, 'King Size Bed', 'Spacious king-size bed with cushioned headboard', '599.99', 'beds', 'bed1.jpg'),
(42, 'Queen Size Bed', 'Stylish queen-size bed with wooden frame', '499.99', 'beds', 'bed2.jpg'),
(43, 'Twin Bed', 'Compact twin bed with metal frame', '299.99', 'beds', 'bed3.jpg'),
(44, 'Bunk Bed', 'Two-level bunk bed with sturdy ladder', '399.99', 'beds', 'bed4.jpg'),
(45, 'Canopy Bed', 'Elegant canopy bed with decorative posts', '799.99', 'beds', 'bed5.jpg'),
(46, 'Platform Bed', 'Modern platform bed with storage drawers', '549.99', 'beds', 'bed6.jpg'),
(47, 'Sleigh Bed', 'Traditional sleigh bed with curved design', '679.99', 'beds', 'bed7.jpg'),
(48, 'Loft Bed', 'Loft bed with integrated desk and shelves', '749.99', 'beds', 'bed8.jpg'),
(49, 'Storage Bed', 'Bed with built-in drawers and hidden storage', '629.99', 'beds', 'bed6.jpg'),
(50, 'Daybed', 'Multi-functional daybed with trundle', '419.99', 'beds', 'bed2.jpg'),
(51, 'Classic Wooden Drawer', 'A classic wooden drawer with vintage handles', '79.99', 'drawers', 'drawer1.webp'),
(52, 'Modern Steel Drawer', 'A sleek steel drawer for modern homes', '99.99', 'drawers', 'drawer2.webp'),
(53, 'Rustic Oak Drawer', 'Handmade oak drawer with a rustic design', '89.99', 'drawers', 'drawer3.webp'),
(54, 'Compact Plastic Drawer', 'A compact and lightweight plastic drawer', '29.99', 'drawers', 'drawer4.webp'),
(55, 'Large Mahogany Drawer', 'Spacious mahogany drawer with smooth rails', '149.99', 'drawers', 'drawer5.webp'),
(56, 'Double-Drawer Unit', 'Double-drawer unit with soft-close mechanism', '119.99', 'drawers', 'drawer6.webp'),
(57, 'Metallic Desk Drawer', 'Metallic desk drawer with lockable compartments', '59.99', 'drawers', 'drawer3.webp'),
(58, 'Walnut Dresser Drawer', 'Walnut dresser drawer with a polished finish', '139.99', 'drawers', 'drawer7.webp'),
(59, 'White Sliding Drawer', 'A white sliding drawer for minimalist design', '49.99', 'drawers', 'drawer4.webp'),
(60, 'Antique Brass Drawer', 'Antique brass drawer with a unique vintage style', '199.99', 'drawers', 'drawer6.webp'),
(61, ' Modern Wooden Dining Table', 'A sleek, modern dining table made from solid oak,', '10000', 'tables', 'din5.jpg'),
(62, 'Rustic Farmhouse Dining Table', 'crafted dining table with a dishes', '5000', 'tables', 'din4.jpg'),
(63, 'Modern Wooden Dining Table', ' A sleek, modern dining table made from solid oak', '4000', 'dinnings', 'din1.jpg'),
(64, 'Farmhouse Dining Table', 'Handcrafted dining table with a distressed wood', '2000', 'dinnings', 'din2.jpg'),
(65, 'Glass Top Round Dining Table', 'stylish round dining table with a tempered glass', '2300', 'dinnings', 'din3.jpg'),
(66, 'Marble Top Dining Table', 'elegant rectangular dining table ', '5000', 'dinnings', 'din5.jpg'),
(67, 'Compact Study Desk', 'minimalist study desk with a wooden top', '5000', 'desks', 'desk1.jpg'),
(68, 'Folding Study Table', 'Portable folding desk made from lightweight', '6000', 'desks', 'desk2.jpg'),
(69, ' Computer Desk with Storage', 'sleek modern computer desk ', '7000', 'desks', 'desk3.jpg'),
(70, 'Height Student Desk', 'designed desk with adjustable height', '3000', 'desks', 'desk4.jpg'),
(71, 'Simple Writing Desk', 'Compact writing desk with a smooth surface.', '3000', 'desks', 'desk5.jpg'),
(72, 'Classic Wooden Bench', 'sturdy wooden bench with a natural finish', '5000', 'benches', 'bench1.jpg'),
(73, 'Modern Steel Bench', 'Cast iron bench with vintage patterns', '6000', 'benches', 'bench2.jpg'),
(74, 'Cushioned Indoor Bench', 'Fabric cushioned bench for living room', '7000', 'benches', 'bench3.jpg'),
(75, 'Bamboo Folding Benc', 'Eco-friendly bamboo bench, lightweight', '7000', 'benches', 'bench4.jpg'),
(76, 'Scandinavian Oak Bench', 'Simple and chic oak bench with a smooth finish.', '60000', 'benches', 'bench5.jpg'),
(77, 'Classic Wooden Door', 'traditional solid oak wooden door', '4000', 'benches', 'door1.jpg'),
(78, 'Glass Sliding Door', 'Sleek and modern sliding door', '3500', 'doors', 'door2.jpg'),
(79, 'Steel Security Door', 'heavy-duty steel door with a reinforced frame,', '3400', 'doors', 'door4.jpg'),
(80, 'Paneled Composite Door', 'Durable composite door with raised panels,', '5000', 'doors', 'door5.jpg'),
(81, 'Steel Security Door', 'heavy-duty steel door with a frame', '3000', 'doors', 'door5.jpg'),
(82, 'Paneled Composite Door', ' Durable composite door with raised panels', '4000', 'doors', 'door3.jpg'),
(83, 'Stackable Shoe Rack', 'stackable shoe rack that can hold up', '4000', 'ranks', 'rack1.webp'),
(84, 'Wooden Shoe Organizer', ' stylish wooden shoe rack with three tiers', '3000', 'ranks', 'rack2.webp'),
(85, 'Foldable Shoe Storage', 'A lightweight and foldable shoe rack with fabric', '5000', 'ranks', 'rack4.webp'),
(86, 'Metal Mesh Shoe Rack', 'Sturdy metal mesh shoe rack with four tier', '3000', 'ranks', 'rack4.webp'),
(87, ' Stackable Shoe Rack', 'shoe rack that can hold up to 10 pairs of shoes', '4000', 'ranks', 'rank1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `gender`, `phone`, `password`, `role`) VALUES
(1, 'susan', 'ngesasuzan@gmail.com', 'female', '0712461219', '112233', 'admin'),
(2, 'kenache', 'kenache@gmail.com', 'male', '0712461219', '112233', 'user'),
(3, 'erick okoth', 'erick@gmail.com', 'male', '0712461219', '112233', 'user'),
(4, 'jane', 'jane@gmail.com', 'female', '0712461219', '112233', 'user'),
(5, 'erick', 'erick@gmail.com', 'male', '0712461219', '112233', 'user'),
(6, 'paul', 'paul@gmail.com', 'male', '0712461219', '112233', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
