-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 01:53 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--
CREATE DATABASE IF NOT EXISTS sklep;

USE sklep;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `description`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rośliny doniczkowe do wnętrz', 'Rośliny doniczkowe', NULL, '2024-12-21 10:10:49', '2024-12-21 10:10:49'),
(2, 'Rośliny ogrodowe', 'Rośliny ogrodowe', NULL, '2024-12-21 10:10:49', '2024-12-21 10:10:49'),
(3, 'Akcesoria ogrodowe', 'Akcesoria ogrodowe', NULL, '2024-12-21 10:10:49', '2024-12-21 10:10:49'),
(4, 'Rośliny tropikalne', 'Rośliny tropikalne', NULL, '2024-12-21 10:10:49', '2024-12-21 10:10:49'),
(5, 'Rośliny balkonowe', 'Rośliny balkonowe', NULL, '2024-12-21 10:10:49', '2024-12-21 10:10:49'),
(6, 'Rośliny doniczkowe do wnętrz', 'Rośliny doniczkowe', NULL, '2024-12-21 10:11:27', '2024-12-21 10:11:27'),
(7, 'Rośliny ogrodowe', 'Rośliny ogrodowe', NULL, '2024-12-21 10:11:27', '2024-12-21 10:11:27'),
(8, 'Akcesoria ogrodowe', 'Akcesoria ogrodowe', NULL, '2024-12-21 10:11:27', '2024-12-21 10:11:27'),
(9, 'Rośliny tropikalne', 'Rośliny tropikalne', NULL, '2024-12-21 10:11:27', '2024-12-21 10:11:27'),
(10, 'Rośliny balkonowe', 'Rośliny balkonowe', NULL, '2024-12-21 10:11:27', '2024-12-21 10:11:27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_number` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `mobile_number`, `email_address`, `address`) VALUES
(1, 'Anna Kowalska', 123456789, 'anna.kowalska@example.com', 'ul. Zielona 10, Warszawa'),
(2, 'Jan Nowak', 987654321, 'jan.nowak@example.com', 'ul. Kwiatowa 5, Kraków'),
(3, 'Marta Kwiatkowska', 789012345, 'marta.kwiatkowska@example.com', 'ul. Lipowa 8, Gdańsk'),
(4, 'Tomasz Wiśniewski', 654321098, 'tomasz.wisniewski@example.com', 'ul. Polna 12, Łódź'),
(5, 'Karolina Zielińska', 567890123, 'karolina.zielinska@example.com', 'ul. Krótka 5, Szczecin'),
(6, 'Robert Kamiński', 456789012, 'robert.kaminski@example.com', 'ul. Świerkowa 15, Katowice'),
(7, 'Ewelina Majewska', 345678901, 'ewelina.majewska@example.com', 'ul. Wiosenna 22, Białystok'),
(8, 'Andrzej Dąbrowski', 234567890, 'andrzej.dabrowski@example.com', 'ul. Jesionowa 7, Toruń'),
(9, 'Monika Wójcik', 123890456, 'monika.wojcik@example.com', 'ul. Chmielna 9, Lublin'),
(10, 'Krzysztof Piotrowski', 678901234, 'krzysztof.piotrowski@example.com', 'ul. Słoneczna 11, Olsztyn'),
(11, 'Agnieszka Kowalczyk', 890123456, 'agnieszka.kowalczyk@example.com', 'ul. Leśna 2, Rzeszów'),
(12, 'Paweł Lewandowski', 123456780, 'pawel.lewandowski@example.com', 'ul. Spacerowa 10, Kielce');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` enum('Pending','Shipped','Delivered','Cancelled') DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `customer_id`, `total_amount`, `created_at`, `status`, `shipping_address`) VALUES
(1, 1, 1, 150, '2024-12-21 11:16:11', 'Pending', 'Poznań, ul. Zielona 5'),
(2, 2, 2, 120, '2024-12-21 11:16:11', 'Shipped', 'Gdańsk, ul. Kwiatowa 8'),
(3, 3, 3, 300, '2024-12-21 11:16:11', 'Delivered', 'Warszawa, ul. Wiosny 4'),
(4, 4, 4, 450, '2024-12-21 11:16:11', 'Pending', 'Kraków, ul. Różana 12'),
(5, 5, 5, 250, '2024-12-21 11:16:11', 'Shipped', 'Wrocław, ul. Wiosenna 3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_product`
--

CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 16, 1, 2),
(2, 16, 4, 1),
(3, 17, 3, 3),
(4, 17, 5, 2),
(5, 18, 6, 1),
(6, 19, 7, 2),
(7, 19, 8, 1),
(8, 20, 9, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `model`, `price`, `stock_qty`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aloes', 'Roślina doniczkowa, idealna do wnętrz, łatwa w pielęgnacji', 'Aloe Vera', 29.99, 50, 'plants_photos/aloe_vera.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(2, 'Fikus', 'Fikus Benjamina, roślina ozdobna do wnętrz', 'Ficus Benjamina', 49.99, 30, 'plants_photos/ficus_benjamina.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(3, 'Róża ogrodowa', 'Róża ogrodowa, idealna do ogrodów i na balkon', 'Rosa', 39.99, 20, 'plants_photos/rosa.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(4, 'Doniczka ceramiczna', 'Doniczka ceramiczna, ładna i trwała', 'Ceramic pot', 19.99, 100, 'plants_photos/ceramic_pot.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(5, 'Nawóz do roślin', 'Organiczny nawóz do roślin doniczkowych', 'Organic Fertilizer', 14.99, 200, 'plants_photos/organic_fertilizer.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(6, 'Lilia wodna', 'Roślina wodna do ogrodu', 'Water Lily', 25.99, 50, 'plants_photos/water_lily.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(7, 'Kaktus', 'Mały kaktus do biura', 'Cactus', 15.99, 60, 'plants_photos/cactus.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(8, 'Hortensja', 'Roślina ogrodowa, piękne kwiaty', 'Hydrangea', 35.99, 80, 'plants_photos/hydrangea.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(9, 'Bananowiec', 'Roślina tropikalna, do wnętrz i ogrodów', 'Banana Tree', 59.99, 40, 'plants_photos/banana_tree.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(10, 'Pelargonia', 'Roślina balkonowa, kwitnąca na wiosnę', 'Geranium', 19.99, 150, 'plants_photos/geranium.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(11, 'Dracena', 'Roślina doniczkowa, znana z długich liści', 'Dracaena', 49.99, 70, 'plants_photos/dracaena.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(12, 'Zielistka', 'Roślina doniczkowa, łatwa w hodowli, odporna na warunki domowe', 'Chlorophytum', 18.99, 90, 'plants_photos/chlorophytum.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(13, 'Sansewieria', 'Roślina doniczkowa, odporna na suszę, idealna do biura', 'Sansevieria', 34.99, 50, 'plants_photos/sansevieria.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(14, 'Zamiokulkas', 'Roślina doniczkowa, tolerująca mało światła', 'Zamioculcas zamiifolia', 42.99, 60, 'plants_photos/zamioculcas_zamiifolia.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(15, 'Pilea', 'Pilea, roślina doniczkowa o okrągłych liściach', 'Pilea Peperomioides', 29.99, 40, 'plants_photos/pilea_peperomioides.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(16, 'Skrzydłokwiat', 'Roślina doniczkowa z białymi kwiatami', 'Spathiphyllum', 27.99, 75, 'plants_photos/spathiphyllum.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(17, 'Koleus', 'Roślina doniczkowa o kolorowych liściach', 'Coleus', 22.99, 50, 'plants_photos/coleus.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(18, 'Fiołek afrykański', 'Roślina doniczkowa o pięknych, kolorowych kwiatach', 'Saintpaulia', 19.99, 80, 'plants_photos/saintpaulia.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(19, 'Epipremnum', 'Roślina doniczkowa o długich pędach, idealna do wnętrz', 'Pothos', 26.99, 120, 'plants_photos/pothos.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(20, 'Begonia', 'Roślina doniczkowa o ozdobnych liściach', 'Begonia', 32.99, 60, 'plants_photos/begonia.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10'),
(21, 'Episcia', 'Roślina doniczkowa o dekoracyjnych kwiatach', 'Episcia', 25.99, 50, 'plants_photos/episcia.jpg', '2024-12-21 10:10:49', '2024-12-21 12:47:10');
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `returns`
--

CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`return_id`, `order_id`, `return_date`, `reason`, `status`, `created_at`, `timestamp`) VALUES
(1, 1, '2024-12-10', 'Zła jakość produktu', 'Pending', '2024-12-21 12:53:00', 1695000000),
(2, 2, '2024-12-15', 'Produkt uszkodzony', 'Approved', '2024-12-21 12:53:00', 1695200000),
(3, 3, '2024-12-17', 'Nieodpowiedni rozmiar', 'Rejected', '2024-12-21 12:53:00', 1695300000),
(4, 4, '2024-12-18', 'Zmieniono zdanie', 'Pending', '2024-12-21 12:53:00', 1695400000),
(5, 5, '2024-12-20', 'Brak zainteresowania produktem', 'Approved', '2024-12-21 12:53:00', 1695500000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` enum('Pending','Shipped','Delivered','Returned') DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `estimated_delivery` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `order_id`, `status`, `tracking_number`, `shipping_date`, `estimated_delivery`) VALUES
(1, 1, 'Shipped', 'TRK123456789', '2024-12-10 14:30:00', '2024-12-12 18:00:00'),
(2, 2, 'Delivered', 'TRK987654321', '2024-12-12 09:00:00', '2024-12-14 10:30:00'),
(3, 3, 'Returned', 'TRK123654987', '2024-12-13 11:15:00', '2024-12-15 16:00:00'),
(4, 4, 'Shipped', 'TRK456123789', '2024-12-14 13:45:00', '2024-12-16 20:00:00'),
(5, 5, 'Pending', 'TRK789456123', '2024-12-15 10:30:00', '2024-12-17 15:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `status` enum('Pending','Completed','Failed','Cancelled') DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customer_id`, `order_id`, `payment_type`, `status`, `date_time`, `amount`) VALUES
(1, 1, 1, 'Credit Card', 'Completed', '2024-12-10 14:00:00', 59.99),
(2, 2, 2, 'PayPal', 'Completed', '2024-12-12 09:15:00', 89.99),
(3, 3, 3, 'Bank Transfer', 'Failed', '2024-12-13 11:30:00', 120),
(4, 4, 4, 'Credit Card', 'Completed', '2024-12-14 13:00:00', 45.5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `password` binary(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_number` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `name`, `mobile_number`, `email_address`, `is_active`, `address`, `created_at`) VALUES
(1, 0xabcdef1234567890abcdef1234567890abcdef1234567890abcdef12345678900000000000000000000000000000000000000000000000000000000000000000, 'Admin', 123456789, 'admin@example.com', 1, 'ul. Główna 1', '2024-12-21 10:10:49'),
(2, 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef0000000000000000000000000000000000000000000000000000000000000000, 'Magdalena Kaczmarek', 234567890, 'magda@example.com', 1, 'ul. Poziomkowa 3', '2024-12-21 10:10:49'),
(3, 0xabcdef1234567890abcdef1234567890abcdef1234567890abcdef12345678900000000000000000000000000000000000000000000000000000000000000000, 'Piotr Nowak', 345678901, 'piotr@example.com', 1, 'ul. Nowa 5', '2024-12-21 10:10:49'),
(4, 0xabcdef1234567890abcdef1234567890abcdef1234567890abcdef12345678900000000000000000000000000000000000000000000000000000000000000000, 'Karolina Wójcik', 456789012, 'karolina@example.com', 1, 'ul. Słoneczna 8', '2024-12-21 10:10:49'),
(5, 0xabcdef1234567890abcdef1234567890abcdef1234567890abcdef12345678900000000000000000000000000000000000000000000000000000000000000000, 'Łukasz Nowicki', 567890123, 'lukasz@example.com', 1, 'ul. Pięciomorgowa 2', '2024-12-21 10:10:49');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeksy dla tabeli `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeksy dla tabeli `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_ibfk_1` (`user_id`),
  ADD KEY `order_ibfk_2` (`customer_id`);

--
-- Indeksy dla tabeli `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indeksy dla tabeli `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeksy dla tabeli `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeksy dla tabeli `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeksy dla tabeli `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
