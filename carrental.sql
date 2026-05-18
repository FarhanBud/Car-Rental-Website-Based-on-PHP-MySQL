-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Nov 2024 pada 09.46
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2024-06-26 06:42:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 443108139, 'amikt12@gmail.com', 2, '2024-06-08', '2024-06-10', 'I want booking', 1, '2024-06-05 05:32:39', '2024-06-05 05:34:08'),
(2, 766396392, 'farhanbud@gmail.com', 1, '2024-07-10', '2024-07-11', 'Keep in mint condition', 1, '2024-07-09 09:15:32', '2024-07-09 09:19:34'),
(3, 714048334, 'farhanbud@gmail.com', 5, '2024-07-10', '2024-07-13', 'Hello', 0, '2024-07-09 09:37:49', NULL),
(4, 321522476, 'farhanbud@gmail.com', 2, '2024-07-25', '2024-07-27', 'Make it clean', 0, '2024-07-25 03:17:47', NULL),
(5, 444682687, 'farzen@gmail.com', 10, '2024-08-07', '2024-08-10', 'Keep the car tidy please, and make sure its on good condition. Thanks', 1, '2024-08-07 08:15:39', '2024-08-07 08:16:23'),
(6, 999867994, 'farzen@gmail.com', 13, '2024-08-08', '2024-08-09', 'Tidy up, i want to go track day rn', 1, '2024-08-07 13:13:18', '2024-08-07 13:14:24'),
(7, 225512226, 'farhanbud@gmail.com', 13, '2024-11-12', '2024-11-14', 'aww', 1, '2024-11-12 08:17:45', '2024-11-12 08:19:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Suzuki', '2024-05-01 16:24:34', '2024-08-07 07:59:42'),
(2, 'BMW', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(3, 'Audi', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(4, 'Nissan', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(5, 'Toyota', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(7, 'Volkswagon', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(8, 'BYD', '2024-08-07 08:02:00', '2024-08-06 16:00:00'),
(9, 'Proton', '2024-08-07 08:04:38', '2024-08-07 08:04:38'),
(10, 'Perodua', '2024-08-07 08:05:12', '2024-08-06 16:00:00'),
(11, 'Tesla', '2024-08-07 08:58:38', '2024-08-06 16:00:00'),
(12, 'Porsche', '2024-08-07 13:27:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Subang Jaya, Damansara Street No.16, Blok B, Selangor, Malaysia', 'mycar.service@gmail.com', '019906719');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2024-06-04 09:34:51', 1),
(2, 'Veyzen', 'Vzn@gmail.com', '199222011', 'Keep up the Good Work. GG!', '2024-08-07 14:04:43', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\">### Terms and Condition</p><p align=\"justify\">Welcome to MYCAR - Car Rental. By accessing or using our website, you agree to comply with and be bound by the following terms and conditions. Please read them carefully. If you do not agree to these terms, you should not use our website.</p><p align=\"justify\"><br></p><p align=\"justify\">#### 1. Introduction</p><p align=\"justify\">1.1 These terms and conditions govern your use of our website; by using our website, you accept these terms and conditions in full. If you disagree with any part of these terms and conditions, do not use our website.</p><p align=\"justify\">1.2 We reserve the right to modify these terms at any time, and your continued use of the website signifies your acceptance of any revised terms.</p><p align=\"justify\">#### 2. User Accounts</p><p align=\"justify\">2.1 To use certain features of our website, you must register for an account. You agree to provide accurate, complete, and up-to-date information during the registration process.</p><p align=\"justify\">2.2 You are responsible for maintaining the confidentiality of your account password and for all activities that occur under your account.</p><p align=\"justify\">2.3 You must notify us immediately of any unauthorized use of your account or any other security breach.</p><p align=\"justify\">#### 3. Car Booking and Payments</p><p align=\"justify\">3.1 All bookings made through MYCAR are subject to availability and acceptance by the car owner.</p><p align=\"justify\">3.2 Payment for car rentals must be made through our secure online payment system. We accept major credit cards and other electronic payment methods.</p><p align=\"justify\">3.3 You must meet the car owner in person to complete the car handover and return process. MYCAR is not responsible for any issues arising from this interaction.</p><p align=\"justify\">#### 4. User Responsibilities</p><p align=\"justify\">4.1 As a renter, you agree to:</p><p align=\"justify\">- Provide accurate and up-to-date information during the booking process.</p><p align=\"justify\">- Return the vehicle in the same condition as it was rented, except for normal wear and tear.</p><p align=\"justify\">- Comply with all local traffic laws and regulations.</p><p align=\"justify\">- Inform the owner and MYCAR of any damages or issues with the vehicle immediately.</p><p align=\"justify\">4.2 As a car owner, you agree to:</p><p align=\"justify\">- Provide accurate and complete information about your vehicle.</p><p align=\"justify\">- Ensure your vehicle is well-maintained and safe to drive.</p><p align=\"justify\">- Be available for the car handover and return process.</p><p align=\"justify\">- Address any issues or complaints from renters promptly.</p><p align=\"justify\">#### 5. Cancellations and Refunds</p><p align=\"justify\">5.1 Cancellation policies vary depending on the car owner. Please review the specific cancellation terms provided by the owner before booking.</p><p align=\"justify\">5.2 Refunds will be processed according to the cancellation policy of the car owner and may be subject to fees.</p><p align=\"justify\"><span style=\"font-size: 1em;\">#### 6. Limitation of Liability</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">6.1 MYCAR is not liable for any indirect, incidental, special, or consequential damages arising from your use of the website or the rental of any vehicle.</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">6.2 MYCAR does not guarantee the accuracy, completeness, or reliability of any content or information provided by car owners or renters.</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">#### 7. Privacy</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">7.1 Our Privacy Policy, which sets out how we will use your information, can be found [here]. By using our website, you consent to the processing described therein and warrant that all data provided by you is accurate.</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">#### 8. Governing Law</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">8.1 These terms and conditions shall be governed by and construed in accordance with the laws of [Your Country/Region], and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of [Your Country/Region].</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">#### 9. Contact Information</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">9.1 If you have any questions about these terms and conditions, please contact us at [Your Contact Information].</span><br></p><p align=\"justify\"><span style=\"font-size: 1em;\">By using MYCAR - Car Rental, you acknowledge that you have read, understood, and agreed to be bound by these terms and conditions.</span><br></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p><strong>Last Updated: [Date]</strong></p><p><strong>1. Introduction</strong></p><p>Welcome to MYCAR - CAR RENTAL. We value your privacy and are committed to protecting your personal information. If you have any questions, contact us at [<a rel=\"noreferrer\">email@example.com</a>].</p><p><strong>2. Information We Collect</strong></p><p><strong>Personal Information:</strong> We collect information you provide, such as your name, email, phone number, payment details, and account credentials.</p><p><strong>Automatically Collected Information:</strong> We gather data such as IP addresses, browser type, and usage patterns for security and analytics.</p><p><strong>3. How We Use Your Information</strong></p><p>We use your information to:</p><ul><li>Create and manage accounts</li><li>Process transactions</li><li>Communicate with you</li><li>Send promotional materials</li><li>Improve our services</li><li>Ensure security and compliance</li></ul><p><strong>4. Sharing Your Information</strong></p><p>We share your information with:</p><ul><li>Service providers</li><li>Business partners</li><li>Affiliates</li><li>Legal authorities when required</li><li>Others with your consent</li></ul><p><strong>5. Data Retention</strong></p><p>We retain your data as long as necessary for our business purposes or as required by law.</p><p><strong>6. Security</strong></p><p>We implement security measures to protect your data. However, online transmission is not completely secure, and we cannot guarantee absolute security.</p><p><strong>7. Minors</strong></p><p>Our services are not intended for individuals under 18. We do not knowingly collect data from minors.</p><p><strong>8. Your Rights</strong></p><p>You can review, update, or delete your account information by contacting us or accessing your account settings.</p><p><strong>9. Do-Not-Track</strong></p><p>We do not currently respond to Do-Not-Track signals as no standard has been established.</p><p><strong>Contact Us</strong></p><p>For any questions or concerns about this privacy policy, contact us at [<a rel=\"noreferrer\">email@example.com</a>].</p>'),
(3, 'About Us ', 'aboutus', '																				<div><p><strong>Welcome to MYCAR - Your Ultimate Car Rental Solution!</strong></p><p>At MYCAR, we believe in providing you with the ultimate convenience and flexibility when it comes to renting a car. Founded with a passion for travel and a commitment to excellent service, MYCAR connects you with a diverse range of vehicles directly from their owners. Our goal is to make your car rental experience seamless, enjoyable, and affordable.</p><p><strong>Our Mission</strong></p><p>Our mission is to revolutionize the car rental industry by offering a platform where car owners and renters can connect easily and securely. We aim to provide a vast selection of vehicles to meet all your needs, whether it\'s a compact car for a city trip, an SUV for an adventurous getaway, or a luxury car for a special occasion.</p><p><strong>Why Choose MYCAR?</strong></p><ul><li><strong>Diverse Selection</strong>: Choose from a wide range of vehicles, including sedans, SUVs, luxury cars, and more, all available at competitive prices.</li><li><strong>Trusted Service</strong>: We prioritize your safety and satisfaction. All vehicles listed on MYCAR go through a rigorous verification process to ensure they meet our high standards.</li><li><strong>Convenience</strong>: Our user-friendly platform makes it easy to browse, book, and manage your rental from anywhere, at any time.</li><li><strong>Customer Support</strong>: Our dedicated customer support team is always here to assist you with any questions or concerns, ensuring a smooth rental experience.</li></ul><p><strong>Our Story</strong></p><p>MYCAR was founded with the idea that renting a car should be as easy and reliable as owning one. We noticed a gap in the market for a service that provides not just a car, but a seamless experience from start to finish. Our team of travel enthusiasts and tech experts came together to create a platform that brings flexibility, choice, and peace of mind to car renters everywhere.</p><p><strong>Join Our Community</strong></p><p>Whether you\'re planning a weekend getaway, a business trip, or simply need a reliable vehicle for your daily commute, MYCAR is here to connect you with the perfect ride. Join our community of satisfied customers and experience the freedom and convenience of car rental redefined.</p><p>Thank you for choosing MYCAR. We look forward to serving you and making your journeys memorable.</p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><br><br></span></div>\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '<h4>General Questions</h4><p><strong>Q1: What is MYCAR - Car Rental?</strong>\r\nA1: MYCAR - Car Rental is an online platform that connects car owners with individuals looking to rent a vehicle. Our service offers a wide variety of car models from different owners, providing flexibility and convenience for both renters and owners.</p><p><strong>Q2: How do I get started with MYCAR?</strong>\r\nA2: You can get started by visiting our website, creating an account, and browsing available cars. Once you find a car that suits your needs, you can book it online and arrange to meet the owner for pickup.</p><p><strong>Q3: What types of cars are available for rent?</strong>\r\nA3: We offer a diverse range of car models from various owners, including sedans, SUVs, luxury cars, and more. The availability of specific models depends on the listings provided by our car owners.</p><h4>Booking and Payment</h4><p><strong>Q4: How do I book a car?</strong>\r\nA4: After registering and logging into your account, you can browse available cars, select your preferred vehicle, and follow the on-screen instructions to complete the booking process.</p><p><strong>Q5: How do I make a payment?</strong>\r\nA5: Payments can be made online through our secure payment gateway.&nbsp;</p><p><strong>Q6: Are there any additional fees?</strong>\r\nA6: The rental price you see includes all standard fees. However, additional fees may apply for late returns, extra mileage, or any damages incurred during the rental period.</p><h4>User Accounts</h4><p><strong>Q7: How do I create an account?</strong>\r\nA7: Visit our website and click on the \"Register\" button. Fill in your details, create a password, and submit the form. You\'ll receive a confirmation email to verify your account.</p><p><strong>Q8: How can I update my profile information?</strong>\r\nA8: Log in to your account and navigate to the \"Profile\" section. Here, you can update your personal information, change your password, and manage your bookings.</p><p><strong>Q9: What should I do if I forget my password?</strong>\r\nA9: Click on the \"Forgot Password\" link on the login page. Enter your registered email address, and we\'ll send you instructions on how to reset your password.</p><h4>Car Owners</h4><p><strong>Q10: How can I list my car for rent?</strong>\r\nA10: If you\'re a car owner, you can list your vehicle by creating an account, navigating to the \"List Your Car\" section, and providing details about your car, including photos, availability, and rental rates.</p><p><strong>Q11: How do I manage my car listings?</strong>\r\nA11: After logging in, go to the \"My Listings\" section, where you can edit your car details, update availability, and manage bookings.</p><p><strong>Q12: What responsibilities do I have as a car owner?</strong>\r\nA12: As a car owner, you are responsible for ensuring your car is well-maintained, meeting renters for handover, and addressing any issues that may arise during the rental period.</p><h4>Support and Troubleshooting</h4><p><strong>Q13: Who do I contact if I have an issue with my booking?</strong>\r\nA13: For any booking-related issues, please contact our customer support team via the \"Contact Us\" page on our website. We\'ll be happy to assist you with any problems or concerns.</p><p><strong>Q14: What should I do if the car has a problem during the rental?</strong>\r\nA14: If you encounter any issues with the car during your rental period, please contact the car owner immediately. Additionally, you can reach out to our support team for further assistance.</p><p><strong>Q15: How can I provide feedback about my experience?</strong>\r\nA15: After completing your rental, you can leave a testimonial on our website to share your experience. We appreciate all feedback, as it helps us improve our services.</p><h4>Safety and Security</h4><p><strong>Q16: Is my personal information secure with MYCAR?</strong>\r\nA16: Yes, we take your privacy and security seriously. All personal information is encrypted and stored securely, and we comply with all relevant data protection regulations.</p><p><strong>Q17: Are the cars insured?</strong>\r\nA17: Insurance coverage varies depending on the car owner. We recommend checking the specific insurance details provided by the owner before booking a vehicle.</p><p><strong>Q18: What measures are in place for COVID-19?</strong>\r\nA18: We advise all car owners and renters to follow recommended health guidelines, including sanitizing vehicles before and after use. Please check our website for the latest updates on COVID-19 safety measures.</p><p>For any further questions or assistance, please don\'t hesitate to contact our support team. We\'re here to help ensure you have a smooth and enjoyable experience with MYCAR - Car Rental.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'farhanbud@gmail.com', 'Car looking good and well maintained', '2024-07-09 09:43:38', 1),
(2, 'farzen@gmail.com', 'The car was in good condition, will rent a again !!', '2024-08-07 13:52:17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(3, 'MBud', 'farhanbud@gmail.com', '202cb962ac59075b964b07152d234b70', '6019191919', '29/03/2003', 'testp, 123, street', 'Selangor', 'Malaysia', '2024-06-24 11:01:38', '2024-07-09 09:16:26'),
(4, 'Muhamad Farhan Budiana', 'farzen@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1383602703', '19/03/2003', 'Subang Jaya  SS16 street 123. Est', 'Subang Jaya', 'Indonesia', '2024-08-07 01:05:31', '2024-08-08 00:11:22'),
(5, 'Nakaisan', 'nakaisan@gmail.com', '202cb962ac59075b964b07152d234b70', '772222115', NULL, NULL, NULL, NULL, '2024-08-07 08:17:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(10, 'BYD Seal Performance', 8, 'The BYD Seal is a battery electric mid-size fastback sedan produced by BYD Auto. It is the second car of BYD\'s \"Ocean Series\" after the smaller BYD Dolphin hatchback, and is built on BYD\'s e-Platform 3.0 and an 800-volt electrical platform.', 800, 'EV', 2024, 5, '2022_BYD_Seal.jpg', '202401101525-main.cropped_1704875140.jpg', 'section05.jpg', 'byd-seal-2024-116.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, '2024-08-07 08:08:43', '2024-08-07 08:13:39'),
(11, 'Suzuki Ertiga Suzuki Sport 1.5 AT', 1, 'The Suzuki Ertiga is a multi-purpose vehicle (MPV) produced by the Japanese manufacturer, Suzuki, since 2012. This car can accommodate up to seven passengers with a seating configuration that can be changed according to needs.', 560, 'Petrol', 2020, 7, '618cc9bb3d3ba.jpeg', '618cc9bb5dfa0.jpeg', 'suzuki-ertiga-cutaway-7-seats-60c8706b31dcf.jpg', '2022-suzuki-ertiga-ff-sport-launch-price-11-1200x675.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2024-08-07 08:39:46', NULL),
(12, 'Perodua MYVI AV 1.5', 10, 'The Perodua Myvi is a very popular compact car in Malaysia, known for its modern design, advanced technology and good safety features. The Myvi offers comfort and versatile use, making it the top choice for many drivers in the country.', 300, 'Petrol', 2022, 5, '2022-Perodua-Myvi-1.5-AV_Ext-2-1200x800.jpg', 'perodua-myvi-rear-cross-view-946853.jpg', '5-Interior-static-1024x376.png', '2229bd7e-b19a-4fbc-a8d8-792640210f84.jpeg', 'NEW-PERODUA-MYVI-87.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2024-08-07 08:46:42', NULL),
(13, 'Toyota GR Supra 3.0', 5, 'Toyota GR Supra is a sports car produced by Toyota since 2019. It is the fifth generation of Supra developed by Toyota Gazoo Racing, equipped with a 3.0-liter turbocharged six-cylinder engine producing 388 PS and a maximum torque of 500Nm. This car is designed to provide an exciting driving experience with high control thanks to its Variable Adaptive Suspension.', 1590, 'Petrol', 2021, 2, 'Toyota GR Supra 45th Anniversary Edition 2024 01.jpg', 'review_337146_1.jpg', 'L1240662.jpg', 'toyota-gr-supra-dashboard-view-646199.jpg', '960x0.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, '2024-08-07 08:52:32', NULL),
(14, 'Proton S70', 9, 'PROTON S70 is a car model that stands out with its attractive design and comfortable interior. It is equipped with a floating touchscreen monitor, which allows easy access to various important features with just a touch of a finger. In addition, PROTON S70 is equipped with voice commands; you can control various functions such as windows by simply saying \"Hi PROTON\".', 660, 'Petrol', 2022, 5, 'piston-my-proton-s70-14_3867216_20240209213630.jpg', 'image-removebg-preview-51-1.png', 's70-4.jpeg', 'Proton-S70-interior-2.jpg', 'Proton-S70-interior-1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-08-07 08:56:46', NULL),
(16, 'Tesla Model 3', 11, 'The Tesla Model 3 is designed to deliver electric-based performance with quick acceleration, long range, and fast charging.', 850, 'Electric Vehicle', 2024, 5, '2023_Tesla_Model_3_Highland_FL_LR_Malaysia_Ext-2-1200x801.jpg', 'model-3-plus.jpg', 'TopGear - Tesla Model 3 - Facelift -8.jpg', 'TopGear - Tesla Model 3 - Facelift -15.jpg', '2023_Tesla_Model_3_Highland_FL_LR_Malaysia_Ext-2-1200x801.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-08-07 09:04:45', NULL),
(17, 'Porsche 911 GT3 ', 12, 'The Porsche 911 GT3 is a high-performance homologation model of the Porsche 911 sports car. It is a line of high-performance models, which began with the 1973 911 Carrera RS. The GT3 has had a successful racing career in the one-make national and regional Porsche Carrera Cup and GT3 Cup Challenge series, as well as the international Porsche Supercup supporting the FIA F1 World Championship.', 2500, 'Petrol', 2022, 2, '911GT3_LOW_RES_DKIMG161.JPG', 'porsche-model.png', 'HD-wallpaper-2022-porsche-911-gt3-color-shark-blue-rear-car.jpg', 'docs-25.jpeg', '21a-Porsche-911-GT3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, '2024-08-07 14:27:37', NULL),
(18, 'Toyota Innova Venturer 2.0 Cumi Cumi', 5, 'The legend of Cumi Cumi darat. People often use this MPV to drag race or other performance things even though this is a family car. ', 640, 'Diesel', 2018, 7, '20240422155256-d9db.jpg', 'innova-reborn-diesel-dibikin-cum-20221208091105.jpg', 'toyota_toyota_innova_2-0_venturer_mt_2019_hitam_full01_fiziuenv.jpg', '685664446.jpg', 'kursi-belakang-reborn.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, '2024-08-07 14:35:31', '2024-08-07 14:39:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indeks untuk tabel `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
