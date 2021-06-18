

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Ankit kumar', 'Rahul kumar', 1000, '2021-06-17 18:07:13'),
(2, 'Ankit kumar', 'Rohit kumar', 2000, '2021-06-17 20:44:53'),
(3, 'Ankit kumar', 'Prince Kumar', 500, '2021-06-17 07:34:22');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ankit Kumar', 'ankkumar@gmail.com', 40000),
(2, 'Rahul Kumar', 'kumarrah@gmail.com', 35000),
(3, 'Rohit kumar', 'rohitkum@gmail.com', 40000),
(4, 'Prince prasad', 'praprince@gmail.com', 48090),
(5, 'Aman agarwal', 'amanagr@gmail.com', 40000),
(6, 'Manish kumar', 'kumarmanish@gmail.com', 30000),
(7, 'Pardeep prasad', 'pardeep@gmail.com', 45000),
(8, 'Juhi agarwal', 'juhiagra@gmail.com', 36000),
(9, 'Avinash Kumar', 'avinash@gmail.com', 30000),
(10, 'Mohit Kumar', 'mohit@gmail.com', 42000);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

