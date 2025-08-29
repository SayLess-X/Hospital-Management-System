-- sql for hms php project

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `hms_assignment1`
--


--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'test@12345', '21-07-2025 11:42:05 AM');


--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2025-07-01', '9:15 AM', '2025-07-15 03:42:11', 1, 1, NULL),
(2, 'Endocrinologists', 2, 2, 800, '2025-07-01', '2:45 PM', '2025-07-15 09:08:54', 1, 1, NULL);


--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Dr. Olivia Carter', 'XYZ Residency, Sector 01, Texas', '500', 0111122233, 'olivia.carter@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 10:00:00', '2025-07-22 14:00:00'),
(2, 'Endocrinologists', 'Dr. William Harris', '03 Maple Avenue, Australia', '800', 1231231230, 'william.harris@test.org', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 01:06:41', '22025-07-22 09:26:28'),
(4, 'Pediatrics', 'Dr. Ava Mitchell', 'Xyz Aparmtnent Germany', '700', 74561235, 'avaMitchell@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 09:12:23', NULL),
(5, 'Orthopedics', 'Dr. Ethan Walker', 'PQRS Hospital Malaysia', '1200', 95214563210, 'walkerEthan@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 09:13:11', NULL),
(6, 'Internal Medicine', 'Dr Isabella Green', 'Max Hospital China', '1500', 8563214751, 'greenCare@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 09:14:11', NULL),
(7, 'Obstetrics and Gynecology', 'Dr. James Wilson', 'Shop 12 Portugal', '800', 745621330, 'wilson@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-07-01 09:15:18', NULL);


--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'abcd123@test.com', 0x3a3a3100000000000000000000000000, '2025-07-26 05:19:33', NULL, 1),
(2, 1, 'wxyz123@test.com', 0x3a3a3100000000000000000000000000, '2025-07-27 09:01:03', '16-05-2024 02:37:32 PM', 1);


--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2025-06-29 18:09:46', '2025-07-25 09:26:47'),
(2, 'Internal Medicine', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(3, 'Obstetrics and Gynecology', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(4, 'Dermatology', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(5, 'Pediatrics', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(6, 'Radiology', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(7, 'General Surgery', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(8, 'Ophthalmology', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(9, 'Anesthesia', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(10, 'Pathology', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(11, 'ENT', '2025-06-09 18:29:46', '2025-07-25 09:26:56'),
(12, 'Dental Care', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(13, 'Dermatologists', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(14, 'Endocrinologists', '2025-06-29 18:09:46', '2025-07-25 09:26:56'),
(15, 'Neurologists', '2025-06-09 18:29:46', '2025-07-25 09:26:56');


--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Noah White', 'noah.white@example.com', '0145678903', 'Do you accept walk-in patients for ENT consultations?', '2025-07-20 11:00:00', '', NULL, 0),

(2, 'Liam Thompson', 'liam.thompson@example.com', '0123456781', 'Is the cardiology department available on weekends?', '2025-07-20 11:00:00', 'Yes, available on Saturdays till 2 PM.', '2025-07-22 14:00:00', 1);



--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 2, '80/120', '110', '85', '97', 'Dolo,\r\nLevocit 5mg', '2024-05-16 09:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', 
'<ul>
  <li>The Hospital Management System (HMS) is designed for any hospital to replace their existing manual, paper-based system. The new system controls patient information, room availability, staff and operating room schedules, and patient invoices.</li>
  <li>A significant part of any hospital\'s operation involves acquiring, managing, and retrieving large volumes of information. HMS will automate hospital management, making it more efficient and error-free by standardizing and consolidating data.</li>
</ul>', 
NULL, NULL, '2025-06-20 07:21:52', NULL),

(2, 'contactus', 'Contact Details', 
'Street-001, Kathmandu, Nepal', 
'club.iotrobotics@gmail.com', 0123110148, '2025-05-20 07:24:07', '9 AM To 8 PM');

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Daniel Reed', 452463210, 'reed2025@gmail.com', 'male', 'NA', 32, 'Fever, Cold', '2025-07-05 05:23:35', NULL),
(2, 1, 'Henry Scott', 454545014, 'henry2025@gmail.com', 'male', 'NA', 45, 'Fever', '2025-07-05 09:01:26', NULL);


--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'elijahCooper@test.com', 0x3a3a3100000000000000000000000000, '2025-06-30 03:41:48', NULL, 1),
(2, 2, 'zoeMitchell@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-01 09:08:06', '02-07-2025 02:41:06 PM', 1);


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'James Warren', 'ABC Apartment St 001', 'Texas', 'male', 'james@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-06-30 12:13:56', '2025-07-01 09:28:15'),
(2, 'Sophia Walsh', 'SOS 001', 'New York', 'female', 'walsh@test.com', 'f925916e2754e5e03f75dd58a5733251', '2025-06-30 13:15:32', '2025-07-01 09:28:23');