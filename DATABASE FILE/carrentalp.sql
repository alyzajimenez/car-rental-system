-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 09:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 36, 26, 5200, 2600, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 22, 12, 2900, 1400, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 39, 30, 6950, 5999, 'yes'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 45, 30, 7200, 5200, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 3890, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Land Rover Range', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 36, 26, 6000, 4600, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 2900, 1400, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 2850, 1400, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 4500, 3500, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 6100, 4380, 'yes'),
(15, 'Toyota Corolla', 'EA5GH4678', 'assets/img/cars/corolla.jpg', 18, 15, 3300, 2900, 'yes'),
(16, 'Ford Fiesta', 'SA210K507', 'assets/img/cars/Fiesta.jpg', 19, 16, 3400, 3000, 'yes'),
(17, 'Hyundai Starex', 'CBP7773', 'assets/img/cars/starex.jpeg', 20, 17, 4100, 3600, 'yes'),
(18, 'Ford Raptor', '457RYN', 'assets/img/cars/Raptor.jpg', 25, 21, 4500, 3999, 'yes'),
(19, 'Mercedes AMD GT', 'KT 7167', 'assets/img/cars/AMG_GT.jpg', 28, 26, 5600, 5199, 'yes'),
(20, 'Mazda Mx-5', 'FMZ7991', 'assets/img/cars/mx5.jpg', 21, 18, 3200, 2800, 'yes'),
(21, 'Aston Martin Vantage', 'LRN5488', 'assets/img/cars/vantage.png', 29, 27, 5700, 5300, 'yes'),
(22, 'Suzuki Jimny', '7MLH362', 'assets/img/cars/jimny.jpg', 28, 23, 5300, 4900, 'yes'),
(23, 'Toyota Wigo', '4SAH221', 'assets/img/cars/wigo.jpg', 17, 14, 2800, 2600, 'yes'),
(24, 'Kia Stinger', '12660S1', 'assets/img/cars/Stinger.png', 24, 21, 4500, 4300, 'yes'),
(25, 'Hyundai Accent', 'AH73171', 'assets/img/cars/Accent.png', 20, 16, 3900, 3200, 'yes'),
(26, 'Porsche Cayenne', '7ZMG901', 'assets/img/cars/cayenne.png', 30, 28, 6000, 5800, 'yes'),
(27, 'Honda Civic', '3TKL442', 'assets/img/cars/civic.png', 28, 25, 4600, 4400, 'yes'),
(28, 'Nissan 370-Z', '1190824', 'assets/img/cars/370z.png', 25, 20, 4000, 3800, 'yes'),
(29, 'Subaru Brz', '8FES315', 'assets/img/cars/Brz.jpg', 24, 22, 3800, 3600, 'yes'),
(30, 'Subaru Impreza', 'HHG2323', 'assets/img/cars/impreza.jpg', 20, 18, 3500, 3000, 'yes'),
(31, 'GTR R35', 'HJP1886', 'assets/img/cars/GTR.jpg', 26, 24, 4000, 3700, 'yes'),
(32, 'Ford Mustang GT', 'XCV916', 'assets/img/cars/mustang.png', 30, 28, 5800, 5500, 'yes'),
(33, 'Porsche 718 Roadster', '7BT73', 'assets/img/cars/718.png', 28, 26, 5500, 5300, 'yes'),
(34, 'BMW Z4', 'KASDF124', 'assets/img/cars/z4.png', 25, 22, 4000, 3700, 'yes'),
(36, 'Toyota Corolla', 'EA5GH4674', 'assets/img/cars/innova.png', 28, 16, 4500, 3000, 'yes');
(37, 'Land Cruiser', 'FA2ZH2222', 'assets/img/cars/cruiser.png', 25, 25, 5999, 4999, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'harry'),
(3, 'harry'),
(7, 'harry'),
(8, 'harry'),
(9, 'harry'),
(11, 'harry'),
(12, 'harry'),
(15, 'harry'),
(16, 'harry'),
(17, 'harry'),
(18, 'harry'),
(19, 'harry'),
(20, 'harry'),
(21, 'harry'),
(22, 'harry'),
(23, 'harry'),
(24, 'harry'),
(25, 'harry'),
(26, 'harry'),
(27, 'harry'),
(28, 'harry'),
(29, 'harry'),
(30, 'harry'),
(31, 'harry'),
(32, 'harry'),
(33, 'harry'),
(34, 'harry'),
(36, 'harry'),
(2, 'jenny'),
(4, 'jenny'),
(6, 'jenny'),
(10, 'jenny'),
(13, 'jenny'),
(14, 'jenny');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('harry', 'Harry Den', '9876543210', 'harryden@gmail.com', '2477  Harley Vincent Drive', 'password'),
('jenny', 'Jeniffer Washington', '7850000069', 'washjeni@gmail.com', '4139  Mesa Drive', 'jenny'),
('tom', 'Tommy Doee', '900696969', 'tom@gmail.com', '4645  Dawson Drive', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('Jimenez', 'Alyza Jimenez', '09283122312', 'alyzajimenez@gmail.com', 'Manila', 'password'),
('Lama', 'Francis Lyka Lama', '0785556580', 'lykalama@gmail.com', 'Manila', 'password'),
('Green', 'Michaela Green', '8544444444', 'mgreen@gmail.com', 'Manila', 'password'),
('Cura', 'Jacy Cura', '69741111110', 'jacycura@gmail.com', 'Manila', 'password'),
('Letim', 'Anakin Letim', '0258786969', 'letim@gmail.com', 'Manila', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Bruno Den', '27840218658 ', '9547863157', '1782  Vineyard Drive', 'Male', 'harry', 'yes'),
(2, 'Will Williams', '03191563155 ', '9147523684', '4354  Hillcrest Drive', 'Male', 'harry', 'yes'),
(3, 'Steeve Rogers', '32346288078 ', '9147523682', '1506  Skinner Hollow Road', 'Male', 'harry', 'yes'),
(4, 'Ivy', '04316015965 ', '9187563240', '4680  Wayside Lane', 'Female', 'jenny', 'no'),
(5, 'Pamela C Benson', '68799466631 ', '7584960123', 'Urkey Pen Road', 'Female', 'jenny', 'yes'),
(6, 'Billy Williams', '36740186040 ', '8421025476', '2898  Oxford Court', 'Male', 'tom', 'yes'),
(7, 'Nicolas', '44919316260 ', '7541023695', 'Breezewood Court', 'Male', 'harry', 'yes'),
(8, 'Stephen Strange', '94592817723', '5215557850', 'Fairview Street12', 'Male', 'jenny', 'yes'),
(9, 'Leonardo Dalmino', '123123123', 'dalmino@tipgmai', 'Cavite', 'Male', 'harry', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'ethan', 4, 2, '2018-07-18', '2018-07-01', '2018-07-02', '2018-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'james', 6, 6, '2018-07-18', '2018-06-01', '2018-06-28', '2018-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'antonio', 3, 1, '2018-07-18', '2018-07-19', '2018-07-22', '2018-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681248, 'ethan', 1, 2, '2018-07-20', '2018-07-28', '2018-07-29', '2018-07-20', 10, 'km', 69, 1, 690, 'R'),
(574681249, 'james', 1, 2, '2018-07-23', '2018-07-24', '2018-07-25', '2018-07-23', 10, 'km', 500, 1, 5000, 'R'),
(574681250, 'lucas', 3, 2, '2018-07-23', '2018-07-23', '2018-07-24', '2018-07-23', 2600, 'days', NULL, 1, 2600, 'R'),
(574681251, 'james', 10, 1, '2018-07-23', '2018-07-25', '2018-07-30', '2018-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'christine', 11, 2, '2018-07-23', '2018-07-23', '2018-07-23', '2018-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'christine', 6, 7, '2018-07-23', '2018-07-23', '2018-08-03', '2018-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'ethan', 12, 5, '2018-07-23', '2018-07-23', '2018-07-26', '2018-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'christine', 8, 5, '2018-07-23', '2018-07-23', '2018-08-08', '2018-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'james', 7, 4, '2018-08-11', '2018-08-13', '2018-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR'),
(574681258, 'lucas', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, 'days', NULL, 1, 2600, 'R'),
(574681259, 'lucas', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, 'days', NULL, 2, 12200, 'R'),
(574681261, 'lucas', 2, 5, '2022-09-20', '2022-09-20', '2022-09-21', '2022-09-20', 22, 'km', 10, 1, 220, 'R'),
(574681262, 'lucas', 8, 1, '2022-09-20', '2022-09-20', '2022-09-20', '2022-09-20', 26, 'km', 15, 0, 390, 'R'),
(574681263, 'lucas', 8, 1, '2022-09-20', '2022-09-20', '2022-09-20', '2022-09-20', 26, 'km', 15, 0, 390, 'R'),
(574681264, 'lucas', 8, 1, '2022-09-20', '2022-09-20', '2022-09-20', '2022-09-20', 26, 'km', 5, 0, 130, 'R'),
(574681265, 'lucas', 8, 1, '2022-09-20', '2022-09-20', '2022-09-20', '2022-09-20', 26, 'km', 26, 0, 676, 'R'),
(574681266, 'lucas', 33, 3, '2022-09-20', '2022-09-20', '2022-09-29', '2022-09-20', 5300, 'days', NULL, 9, 47700, 'R'),
(574681267, 'lucas', 33, 3, '2022-09-20', '2022-09-20', '2022-09-29', '2022-09-20', 5300, 'days', NULL, 9, 47700, 'R'),
(574681268, 'lucas', 20, 7, '2022-09-20', '2022-09-22', '2022-09-25', '2022-09-20', 18, 'km', 12, 3, 216, 'R'),
(574681269, 'lucas', 32, 2, '2022-09-20', '2022-09-20', '2022-09-20', '2022-09-20', 5500, 'days', NULL, 0, 0, 'R'),
(574681270, 'lucas', 1, 2, '2022-09-22', '2022-09-22', '2022-09-27', '2022-09-22', 36, 'km', 12, 5, 432, 'R'),
(574681271, 'vids123', 15, 9, '2022-09-22', '2022-09-22', '2022-09-24', '2022-09-22', 2900, 'days', NULL, 2, 5800, 'R'),
(574681272, 'lucas', 33, 9, '2022-09-22', '2022-09-22', '2022-09-23', '2022-09-22', 28, 'km', 12, 1, 336, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681273;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
