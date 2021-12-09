-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 09 Ara 2021, 07:46:51
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `api_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.'),
(2, 'Electronics', 'Gadgets, drones and more.'),
(3, 'Motors', 'Motor sports and more'),
(5, 'Movies', 'Movie products.'),
(6, 'Books', 'Kindle books, audio books and more.'),
(13, 'Sports', 'Drop into new winter gear.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `discount` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'no',
  `sales_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `discount`, `sales_status`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '336', 2, 'yok', 'var'),
(2, 'Google Nexus 4', 'The most awesome phone ', '299', 2, 'yok', 'yok'),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 2, 'var', 'var'),
(6, 'Bench Shirt', 'The best shirt!', '29', 1, 'var', 'var'),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2, 'yok', 'var'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2, 'yok', 'yok'),
(9, 'Spalding Watch', 'My sports watch.', '199', 1, 'var', 'var'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2, 'yok', 'var'),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2, 'yok', 'var'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1, 'var', 'var'),
(26, 'Another product', 'Awesome product!', '555', 2, 'yok', 'var'),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6, 'var', 'var'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1, 'yok', 'yok'),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3, 'yok', 'var'),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5, 'var', 'var'),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1, 'yok', 'var'),
(81, 'Iphone', 'The best phone', '899', 2, 'no', 'yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
