-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 10:51 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emmy_cakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(76, '2', '8', '1', '2022-05-16 11:14:29', '2022-05-16 11:14:29'),
(77, '2', '9', '1', '2022-05-16 11:15:15', '2022-05-16 11:15:15'),
(78, '2', '10', '1', '2022-05-16 11:15:29', '2022-05-16 11:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(5, 'Wedding Cakes', 'wedding', 'a rich fruit cake, with one, two, or more tiers, covered with almond paste and decorated with royal icing, which is served at a wedding reception', 0, 1, '1652650659.jpg', 'Wedding cakes', '...', 'wedding', '2022-05-15 21:37:39', '2022-05-15 22:51:25'),
(6, 'Birthday Cakes', 'birthday', 'We are Creating your loved birthday Cake with your lovely design, to order the Birthday cake', 0, 1, '1652652140.webp', 'birthday cake', 'We are Creating your loved birthday Cake with your lovely design, to order the Birthday cake', 'birthday', '2022-05-15 21:58:34', '2022-05-15 22:51:41'),
(7, 'Anniversary Cakes', 'anniversary', 'Wishing a perfect pair a perfectly happy day', 0, 1, '1652679792.jpg', 'anniversary cake', 'Anniversary cheers', 'anniversary', '2022-05-15 22:08:09', '2022-05-16 05:43:12'),
(8, 'Jar Cakes', 'jar', 'Cake in a Jar can be stored in the refrigerator for 3-4 days and will stay fresh. When you are ready to eat, take the jars out about 20 minutes before and enjoy', 0, 1, '1652699144.jpg', 'jar cake', 'Cake in a Jar can be stored in the refrigerator for 3-4 days and will stay fresh. When you are ready to eat, take the jars out about 20 minutes before and enjoy', 'jar', '2022-05-16 11:05:45', '2022-05-16 11:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_23_204946_create_categories_table', 1),
(6, '2021_12_28_183123_create_products_table', 1),
(7, '2022_01_04_003040_create_carts_table', 1),
(8, '2022_01_07_030058_create_orders_table', 2),
(9, '2022_01_07_030814_create_order_items_table', 2),
(10, '2022_01_10_061258_create_wishlists_table', 3),
(11, '2022_01_11_153240_create_ratings_table', 4),
(13, '2022_01_11_185655_create_reviews_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(6, '2', 'admin', 'd', 'sulodula9@gmail.com', '0776995721', 'no 1', 'main road', 'Galle', 'sp', 'sri lanka', '123369', '1800', 'COD', 'COD', 1, NULL, 'pieris6334', '2022-05-15 23:39:01', '2022-05-15 23:47:55'),
(7, '1', 'user', 'pieris', 'sdpieris67@gmail.com', '0719825742', 'no 2', 'senanayake pura', 'Ampara', 'es', 'Sri Lanka', '12345', '1650', 'Paid by Paypal', '75F28379H9023880E', 0, NULL, 'pieris9838', '2022-05-15 23:43:47', '2022-05-15 23:43:47'),
(8, '2', 'admin', 'd', 'sulodula9@gmail.com', '0776995721', 'no 1', 'main road', 'Galle', 'sp', 'sri lanka', '123369', '1650', 'Paid by Rezorpay', 'pay_JVgsj53CqUbAJ8', 0, NULL, 'pieris6862', '2022-05-15 23:50:09', '2022-05-15 23:50:09'),
(9, '1', 'User', 'pieris', 'sdpieris67@gmail.com', '0719825742', 'no 2', 'senanayake pura', 'Ampara', 'es', 'Sri Lanka', '12345', '10000', 'COD', 'COD', 1, NULL, 'pieris5780', '2022-05-16 10:59:54', '2022-05-16 11:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(6, '6', '9', '1', '1800', '2022-05-15 23:39:01', '2022-05-15 23:39:01'),
(7, '7', '8', '1', '1650', '2022-05-15 23:43:47', '2022-05-15 23:43:47'),
(8, '8', '8', '1', '1650', '2022-05-15 23:50:09', '2022-05-15 23:50:09'),
(9, '9', '12', '4', '2500', '2022-05-16 10:59:54', '2022-05-16 10:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(8, 5, 'Traditional white', 'traditional', 'typically a fruit cake, covered in marzipan and icing, and presented in tiers. You can probably guess the most popular traditional wedding cake flavors. Vanilla cake with vanilla buttercream frosting is a classic for a reason', 'Vanilla is a more traditional choice, and if you want to have a cake that pleases everyone in the room, you cannot go wrong with a vanilla wedding cake. Vanilla cake on its own is very tasty, but you can also add berries or fruit.', '1750', '1650', '1652654452.jpg', '8', '0', 0, 1, 'traditional white', 'traditional', 'You can probably guess the most popular traditional wedding cake flavors. Vanilla cake with vanilla buttercream frosting is a classic for a reason', '2022-05-15 22:40:52', '2022-05-15 23:50:09'),
(9, 5, 'Modern Cakes', 'modern', 'This square buttercream wedding cake is adorned with apples, peaches, pears, plums, and currants to soften its edges and give it a charming appeal.', 'Modern cakes are usually made with creamy textures and are enriched with fresh fruit and chocolate. They come in various shapes and sizes, and they may follow traditional modern design aesthetics (black and white, straight edges, etc.) or lean more contemporary (as long as it’s not traditional, then anything goes)', '1850', '1800', '1652679774.webp', '9', '0', 0, 1, 'modern cake', 'modern', 'This square buttercream wedding cake is adorned with apples, peaches, pears, plums, and currants to soften its edges and give it a charming appeal.', '2022-05-15 23:01:34', '2022-05-16 05:42:54'),
(10, 5, 'Monochrome Cakes', 'monochrome', 'Monochrome cake - a stylish black and white stripy chocolate and vanilla cake which is perfect for a classy Halloween party.', 'A monochrome wedding cake is typically all one color. It may have multiple layers in different hues, or it may have a variety of decorative features all in the same shade to create an interesting texture.', '1950', '1900', '1652656020.jpg', '2', '0', 0, 1, 'monochrome cake', 'monochrome', 'Monochrome cake - a stylish black and white stripy chocolate and vanilla cake which is perfect for a classy Halloween party.', '2022-05-15 23:07:00', '2022-05-15 23:08:57'),
(11, 6, 'Name Cakes', 'name', 'Wish you own wishes with cake', 'Wish you own wishes with cake', '2500', '2000', '1652678557.jpg', '5', '0', 0, 1, 'name cake', 'name', 'Wish you own wishes with cake', '2022-05-16 05:22:37', '2022-05-16 05:22:37'),
(12, 6, 'Boy Cakes', 'boy', 'wish your younger brother or your son\'s birthday with beautiful cake', 'wish your younger brother or your son\'s birthday with beautiful cake', '2700', '2500', '1652678776.png', '0', '0', 0, 1, 'boy birthday', 'boy', 'wish your younger brother or your son\'s birthday with beautiful cake', '2022-05-16 05:26:16', '2022-05-16 10:59:54'),
(13, 8, 'chocolatecake', 'chocolatecake', 'Cake in a Jar can be stored in the refrigerator for 3-4 days and will stay fresh. When you are ready to eat, take the jars out about 20 minutes before and enjoy', 'Cake in a Jar can be stored in the refrigerator for 3-4 days and will stay fresh. When you are ready to eat, take the jars out about 20 minutes before and enjoy', '1500', '1000', '1652699274.jpg', '2', '0', 0, 1, 'chocolatecake', 'chocolatecake', 'Cake in a Jar can be stored in the refrigerator for 3-4 days and will stay fresh. When you are ready to eat, take the jars out about 20 minutes before and enjoy', '2022-05-16 11:07:54', '2022-05-16 11:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(5, '2', '9', '4', '2022-05-16 08:30:23', '2022-05-16 08:30:23'),
(6, '1', '8', '3', '2022-05-16 11:01:20', '2022-05-16 11:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(3, '2', '9', 'This cake is highly recommended for use at weddings or special occasions', '2022-05-16 08:33:13', '2022-05-16 08:33:13'),
(4, '1', '8', 'It\'s GOOD', '2022-05-16 11:01:45', '2022-05-16 11:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pieris', 'sdpieris67@gmail.com', NULL, '$2y$10$2XPmI5q9UlcR2G0wpF9xW.jtZFdEq0chxs8wOkUIT/YClWZI9HRi2', 'pieris', '0719825742', 'no 2', 'senanayake pura', 'Ampara', 'es', 'Sri Lanka', '12345', 0, 'kBaA9tQidRgAdWFJT5LpLk1usZdbI02SPrkYHjwtt76pwY1fGTO2V5pqxLbj', '2022-01-05 14:44:14', '2022-01-07 10:38:36'),
(2, 'Admin', 'sulodula9@gmail.com', NULL, '$2y$10$zwkKpeQPS//Q5R94WFJdTuAk.7.mfQUkfg7ItOF5IfSFEf5PJyui6', 'd', '0776995721', 'no 1', 'main road', 'Galle', 'sp', 'sri lanka', '123369', 1, 'k5NSrilivhEzoBH3QK2E2wcmC8JA1trQWuxuxq9WaxI7I95sDF5eNa9wCKaP', '2022-01-05 14:48:48', '2022-01-07 10:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(11, '2', '9', '2022-05-15 23:50:57', '2022-05-15 23:50:57'),
(12, '1', '11', '2022-05-16 11:00:38', '2022-05-16 11:00:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
