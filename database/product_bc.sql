-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2022 at 02:58 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `product_bc`
--

-- --------------------------------------------------------

--
-- Table structure for table `pr_admin`
--

CREATE TABLE `pr_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_admin`
--

INSERT INTO `pr_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pr_blockchain`
--

CREATE TABLE `pr_blockchain` (
  `id` int(11) NOT NULL default '0',
  `block_id` int(11) NOT NULL,
  `pre_hash` varchar(200) NOT NULL,
  `hash_value` varchar(200) NOT NULL,
  `sdata` varchar(200) NOT NULL,
  `ptype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_blockchain`
--

INSERT INTO `pr_blockchain` (`id`, `block_id`, `pre_hash`, `hash_value`, `sdata`, `ptype`) VALUES
(1, 1, '00000000000000000000000000000000', '94cc550ef4e65bef389f78fd7b3c7779', 'MID:1, Company:Sony, Mobile:8976533401,Location:Chennai, RegDate:24-11-2021', 'MID'),
(2, 1, '94cc550ef4e65bef389f78fd7b3c7779', '4f0b2e49bd7c9af60274addfbc9b911c', 'PID:1, Product:Sony TV, Company:sony, Manufacture:2021-08-10,KYP Code:K0001P001 to K0001P500, RegDate:24-11-2021', 'PID'),
(3, 2, '4f0b2e49bd7c9af60274addfbc9b911c', '335bdc3fc3fbf121d1fb27fcf6b17937', 'PID:2, Product:Sony TV, Company:sony, Manufacture:2021-09-07,KYP Code:K0002P001 to K0002P500, RegDate:24-11-2021', 'PID'),
(4, 3, '335bdc3fc3fbf121d1fb27fcf6b17937', '26e50f100fd06a962432353d4e4f36f8', 'PID:3, Product:Sony TV, Company:sony, Manufacture:2021-10-08,KYP Code:K0003P001 to K0003P500, RegDate:24-11-2021', 'PID'),
(5, 4, '26e50f100fd06a962432353d4e4f36f8', 'cd989a73a63b87f0f91fcc20c9bc9431', 'PID:4, Product:Sony Mobile, Company:sony, Manufacture:2021-09-08,KYP Code:K0004P0001 to K0004P1000, RegDate:24-11-2021', 'PID'),
(6, 5, 'cd989a73a63b87f0f91fcc20c9bc9431', 'e625ee88a0e624b3aa460da7fda1036a', 'PID:5, Product:Sony Mobile, Company:sony, Manufacture:2021-10-05,KYP Code:K0005P0001 to K0005P1000, RegDate:24-11-2021', 'PID'),
(7, 6, 'e625ee88a0e624b3aa460da7fda1036a', 'd199596be680cd02ee20cc8c608e3a86', 'PID:6, Product:Sony Mobile, Company:sony, Manufacture:2021-10-06,KYP Code:K0006P0001 to K0006P1000, RegDate:24-11-2021', 'PID'),
(8, 1, 'd199596be680cd02ee20cc8c608e3a86', 'fc15b997cb3a4877a9be3f27da3c55d4', 'DID:1, Distributor:protos, Company:sony, Mobile:9938563913, City:Trichy, RegDate:24-11-2021', 'DID'),
(9, 1, 'fc15b997cb3a4877a9be3f27da3c55d4', '7fbb82845ab55086444bb5c99416e814', 'PID:1,Distributor:protos,Request to sony, Required Products:200, RegDate:24-11-2021', 'Req'),
(10, 1, '7fbb82845ab55086444bb5c99416e814', '26f06582218030984db74aaae7920ae7', 'PID:1, Distribute to:protos, Company:sony, Pcode:K0001P001-K0001P200, RegDate:25-11-2021', 'PID'),
(11, 1, '26f06582218030984db74aaae7920ae7', 'b02b3de0e60788c5a1852af0bda1fafd', 'RID:1, Retailer:Krishna Stores, Distributor:protos, Company:sony, City:Trichy, RegDate:25-11-2021', 'RID'),
(12, 2, 'b02b3de0e60788c5a1852af0bda1fafd', '5a3dabc949456b7c9f0d9a2c05157bba', 'DID:2, Distributor:Ringtel Marketing, Company:sony, Mobile:8877433532, City:Salem, RegDate:25-11-2021', 'DID'),
(13, 3, '5a3dabc949456b7c9f0d9a2c05157bba', 'ba24531d4211d721277eab55f09ad403', 'DID:3, Distributor:MAYUR TRADERS, Company:sony, Mobile:9937563736, City:Tanjore, RegDate:25-11-2021', 'DID'),
(14, 1, 'ba24531d4211d721277eab55f09ad403', '50de62aad25ce6cf0c97889d5dfe691b', 'PID:1,:Retailerkrishna, Request to protos, Required Products:50, RegDate:25-11-2021', 'Req2'),
(15, 1, '50de62aad25ce6cf0c97889d5dfe691b', '5c70ae06d988664c0686b4aa26733961', 'PID:1, Distribute to:krishna, Supplier:protos, Company:sony, Pcode:K0001P001-K0001P050, RegDate:25-11-2021', 'PID'),
(16, 1, '5c70ae06d988664c0686b4aa26733961', '5d190bede2b592bf44a36445b95030fb', 'PID:1, Distribute to:protos, Company:sony, Pcode:K0001P201-K0001P300, RegDate:25-11-2021', 'PID'),
(17, 1, '5d190bede2b592bf44a36445b95030fb', 'e7b5211f6c911c6b15aadcdbc457e1d6', 'PID:1,:Retailerkrishna, Product:K0001P005, RegDate:25-11-2021', 'Sale'),
(18, 1, 'e7b5211f6c911c6b15aadcdbc457e1d6', 'edcb8d7478708b2c8458bd1a7ec8754d', 'PID:1,:Retailerkrishna, Product:K0001P003, RegDate:25-11-2021', 'Sale'),
(19, 2, 'edcb8d7478708b2c8458bd1a7ec8754d', '6a216264eafaf63f727566bc2a4129ec', 'MID:2, Company:Lenova, Mobile:8886644300,Location:Chennai, RegDate:28-05-2022', 'MID'),
(20, 7, '6a216264eafaf63f727566bc2a4129ec', '5fb0552038687e9c05631886bed997ae', 'PID:7, Product:Lenova Laptop, Company:lenova, Manufacture:2022-04-05,KYP Code:K0007P01 to K0007P20, RegDate:28-05-2022', 'PID'),
(21, 4, '5fb0552038687e9c05631886bed997ae', 'bd087237c89932fb0535603fd67123c0', 'DID:4, Distributor:L11, Company:lenova, Mobile:9054621096, City:Chennai, RegDate:28-05-2022', 'DID'),
(22, 7, 'bd087237c89932fb0535603fd67123c0', '9792532e55ea4325be0bd9805eb2b5e4', 'PID:7, Distribute to:len1, Company:lenova, Pcode:K0007P01-K0007P05, RegDate:28-05-2022', 'PID'),
(23, 7, '9792532e55ea4325be0bd9805eb2b5e4', '201cf0f0a22b87bd5d3492c55ac09540', 'PID:7, Product:Lenova Laptop, Company:lenova, Manufacture:2022-05-05,KYP Code:K0007P01 to K0007P20, RegDate:28-05-2022', 'PID'),
(24, 8, '201cf0f0a22b87bd5d3492c55ac09540', 'e3797d6a7ef6aa0ce25fdcbe454cb130', 'PID:8, Product:Len2, Company:lenova, Manufacture:2022-05-05,KYP Code:K0008P01 to K0008P10, RegDate:28-05-2022', 'PID'),
(25, 7, 'e3797d6a7ef6aa0ce25fdcbe454cb130', '9792532e55ea4325be0bd9805eb2b5e4', 'PID:7, Distribute to:len1, Company:lenova, Pcode:K0007P01-K0007P05, RegDate:28-05-2022', 'PID'),
(26, 8, '9792532e55ea4325be0bd9805eb2b5e4', 'dfd38d3b5ba92739093e05a23a1576db', 'PID:8, Distribute to:len1, Company:lenova, Pcode:1 to 4, RegDate:28-05-2022', 'PID'),
(27, 2, 'dfd38d3b5ba92739093e05a23a1576db', 'ec1adfbf129a317f5863bd31909d0f7d', 'RID:2, Retailer:shop1, Distributor:len1, Company:lenova, City:Chennai, RegDate:28-05-2022', 'RID'),
(28, 7, 'ec1adfbf129a317f5863bd31909d0f7d', 'f2d135452c9f9658766abb72e8d9ec66', 'PID:7, Distribute to:shop1, Supplier:len1, Company:lenova, Pcode:1 to 3, RegDate:28-05-2022', 'PID'),
(29, 8, 'f2d135452c9f9658766abb72e8d9ec66', 'd8bdfea74884bddb9431d83f442b83e7', 'PID:8, Distribute to:shop1, Supplier:len1, Company:lenova, Pcode:1 to 2, RegDate:28-05-2022', 'PID'),
(30, 7, 'd8bdfea74884bddb9431d83f442b83e7', '57165f7b18df803786905868a6ce031b', 'PID:7,:Retailershop1, Product:K6702796, RegDate:28-05-2022', 'Sale'),
(31, 7, '57165f7b18df803786905868a6ce031b', '57165f7b18df803786905868a6ce031b', 'PID:7,:Retailershop1, Product:K6702796, RegDate:28-05-2022', 'Sale'),
(32, 7, '57165f7b18df803786905868a6ce031b', '57165f7b18df803786905868a6ce031b', 'PID:7,:Retailershop1, Product:K6702796, RegDate:28-05-2022', 'Sale'),
(33, 7, '57165f7b18df803786905868a6ce031b', '85fa720a35ccf45d08864ae5da875b7e', 'PID:7,:Retailershop1, Product:K1701618, RegDate:28-05-2022', 'Sale'),
(34, 7, '85fa720a35ccf45d08864ae5da875b7e', 'ae23c2f4fa38a1a525a23a6595db0caa', 'PID:7,:Retailershop1, Product:K2703500, RegDate:28-05-2022', 'Sale'),
(35, 7, 'ae23c2f4fa38a1a525a23a6595db0caa', '85fa720a35ccf45d08864ae5da875b7e', 'PID:7,:Retailershop1, Product:K1701618, RegDate:28-05-2022', 'Sale'),
(36, 7, '85fa720a35ccf45d08864ae5da875b7e', 'ae23c2f4fa38a1a525a23a6595db0caa', 'PID:7,:Retailershop1, Product:K2703500, RegDate:28-05-2022', 'Sale'),
(37, 3, 'ae23c2f4fa38a1a525a23a6595db0caa', 'ae5c3cd873ec74465a828858bc31dc5b', 'RID:3, Retailer:shop2, Distributor:len1, Company:lenova, City:Chennai, RegDate:04-06-2022', 'RID');

-- --------------------------------------------------------

--
-- Table structure for table `pr_category`
--

CREATE TABLE `pr_category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_category`
--

INSERT INTO `pr_category` (`id`, `category`) VALUES
(1, 'Laptop'),
(2, 'Mobile'),
(3, 'TV'),
(4, 'Fridge');

-- --------------------------------------------------------

--
-- Table structure for table `pr_complaint`
--

CREATE TABLE `pr_complaint` (
  `id` int(11) NOT NULL,
  `company` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `pcode` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(100) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `product` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_complaint`
--

INSERT INTO `pr_complaint` (`id`, `company`, `pid`, `pcode`, `name`, `email`, `message`, `rdate`, `product`) VALUES
(1, 'lenova', 7, 'K1701618', 'Dinesh', 'dinesh@gmail.com', 'good', '28-05-2022', 'Lenova Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `pr_manufacture`
--

CREATE TABLE `pr_manufacture` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_manufacture`
--

INSERT INTO `pr_manufacture` (`id`, `name`, `mobile`, `email`, `address`, `uname`, `pass`, `status`) VALUES
(1, 'Sony', 8976533401, 'sony@gmail.com', 'Chennai', 'sony', '1234', 1),
(2, 'Lenova', 8886644300, 'lenova@gmail.com', 'Chennai', 'lenova', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pr_product`
--

CREATE TABLE `pr_product` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `product` varchar(40) NOT NULL,
  `company` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `mdate` varchar(15) NOT NULL,
  `edate` varchar(15) NOT NULL,
  `pcode` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `ttype` varchar(20) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `tlocation` varchar(30) NOT NULL,
  `tdate` varchar(15) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `slocation` varchar(50) NOT NULL,
  `sdate` varchar(15) NOT NULL,
  `exp_st` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `num_piece` int(11) NOT NULL,
  `code1` varchar(30) NOT NULL,
  `code2` varchar(30) NOT NULL,
  `distribute` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_product`
--

INSERT INTO `pr_product` (`id`, `category`, `product`, `company`, `price`, `description`, `location`, `mdate`, `edate`, `pcode`, `rdate`, `ttype`, `transport`, `tlocation`, `tdate`, `supplier`, `retailer`, `slocation`, `sdate`, `exp_st`, `status`, `num_piece`, `code1`, `code2`, `distribute`, `balance`) VALUES
(1, 'TV', 'Sony TV', 'sony', 20000, 'Sony 32inch', 'Chennai', '2021-08-10', '', 'K0001', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 500, 'K0001P001', 'K0001P500', 300, 200),
(2, 'TV', 'Sony TV', 'sony', 27000, 'Sony TV 40 inch', 'Chennai', '2021-09-07', '', 'K0002', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 500, 'K0002P001', 'K0002P500', 100, 400),
(3, 'TV', 'Sony TV', 'sony', 15000, 'Sony TV 28 inch', 'Chennai', '2021-10-08', '', 'K0003', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 500, 'K0003P001', 'K0003P500', 0, 0),
(4, 'Mobile', 'Sony Mobile', 'sony', 14000, 'Sony Xperia', 'Chennai', '2021-09-08', '', 'K0004', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 1000, 'K0004P0001', 'K0004P1000', 0, 0),
(5, 'Mobile', 'Sony Mobile', 'sony', 28000, 'Sony XAVAX', 'Chennai', '2021-10-05', '', 'K0005', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 1000, 'K0005P0001', 'K0005P1000', 0, 0),
(6, 'Mobile', 'Sony Mobile', 'sony', 30000, 'Sony VAIOS', 'Chennai', '2021-10-06', '', 'K0006', '24-11-2021', '', '', '', '', '', '', '', '', 0, 0, 1000, 'K0006P0001', 'K0006P1000', 0, 0),
(7, 'Laptop', 'Lenova Laptop', 'lenova', 25000, 'L1', 'Chennai', '2022-05-05', '', 'K0007', '28-05-2022', '', '', '', '', '', '', '', '', 0, 0, 20, 'K0007P01', 'K0007P20', 5, 15),
(8, 'Laptop', 'Len2', 'lenova', 30000, 'L2', 'Chennai', '2022-05-05', '', 'K0008', '28-05-2022', '', '', '', '', '', '', '', '', 0, 0, 10, 'K0008P01', 'K0008P10', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pr_productcode`
--

CREATE TABLE `pr_productcode` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `company` varchar(30) NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `pcount` int(11) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_productcode`
--

INSERT INTO `pr_productcode` (`id`, `pid`, `company`, `product_code`, `pcount`, `supplier`, `shop`, `sale`) VALUES
(1, 7, 'lenova', 'K1701618', 1, '', 'shop1', 1),
(2, 7, 'lenova', 'K6702796', 2, '', 'shop1', 0),
(3, 7, 'lenova', 'K2703500', 3, '', 'shop1', 1),
(4, 7, 'lenova', 'K3704200', 4, '', '', 0),
(5, 7, 'lenova', 'K5705667', 5, '', '', 0),
(6, 7, 'lenova', 'K6706125', 6, '', '', 0),
(7, 7, 'lenova', 'K5707420', 7, '', '', 0),
(8, 7, 'lenova', 'K4708882', 8, '', '', 0),
(9, 7, 'lenova', 'K3709614', 9, '', '', 0),
(10, 7, 'lenova', 'K87010569', 10, '', '', 0),
(11, 7, 'lenova', 'K47011257', 11, '', '', 0),
(12, 7, 'lenova', 'K67012413', 12, '', '', 0),
(13, 7, 'lenova', 'K57013676', 13, '', '', 0),
(14, 7, 'lenova', 'K97014648', 14, '', '', 0),
(15, 7, 'lenova', 'K97015517', 15, '', '', 0),
(16, 7, 'lenova', 'K47016220', 16, '', '', 0),
(17, 7, 'lenova', 'K37017744', 17, '', '', 0),
(18, 7, 'lenova', 'K27018621', 18, '', '', 0),
(19, 7, 'lenova', 'K37019595', 19, '', '', 0),
(20, 7, 'lenova', 'K87020350', 20, '', '', 0),
(21, 8, 'lenova', 'K58021460', 1, 'len1', 'shop1', 0),
(22, 8, 'lenova', 'K48022104', 2, 'len1', 'shop1', 0),
(23, 8, 'lenova', 'K38023567', 3, 'len1', '', 0),
(24, 8, 'lenova', 'K38024800', 4, 'len1', '', 0),
(25, 8, 'lenova', 'K58025358', 5, '', '', 0),
(26, 8, 'lenova', 'K28026303', 6, '', '', 0),
(27, 8, 'lenova', 'K78027175', 7, '', '', 0),
(28, 8, 'lenova', 'K68028446', 8, '', '', 0),
(29, 8, 'lenova', 'K18029775', 9, '', '', 0),
(30, 8, 'lenova', 'K88030725', 10, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pr_request`
--

CREATE TABLE `pr_request` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num_prd` int(11) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_request`
--


-- --------------------------------------------------------

--
-- Table structure for table `pr_request2`
--

CREATE TABLE `pr_request2` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num_prd` int(11) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_request2`
--

INSERT INTO `pr_request2` (`id`, `pid`, `num_prd`, `shop`, `supplier`, `company`, `rdate`) VALUES
(1, 1, 50, 'krishna', 'protos', 'sony', '25-11-2021');

-- --------------------------------------------------------

--
-- Table structure for table `pr_sale`
--

CREATE TABLE `pr_sale` (
  `id` int(11) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `kid` int(11) NOT NULL,
  `pcode` varchar(30) NOT NULL,
  `rdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_sale`
--

INSERT INTO `pr_sale` (`id`, `shop`, `pid`, `rid`, `kid`, `pcode`, `rdate`) VALUES
(1, 'shop1', 7, 1, 1, 'K1701618', '28-05-2022'),
(2, 'shop1', 7, 1, 3, 'K2703500', '28-05-2022');

-- --------------------------------------------------------

--
-- Table structure for table `pr_send`
--

CREATE TABLE `pr_send` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num_prd` int(11) NOT NULL,
  `prd_from` varchar(30) NOT NULL,
  `prd_to` varchar(30) NOT NULL,
  `prd1` int(11) NOT NULL,
  `prd2` int(11) NOT NULL,
  `company` varchar(20) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `distribute` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_send`
--

INSERT INTO `pr_send` (`id`, `pid`, `num_prd`, `prd_from`, `prd_to`, `prd1`, `prd2`, `company`, `supplier`, `rdate`, `distribute`, `balance`) VALUES
(1, 7, 5, 'K0007P01', 'K0007P05', 1, 5, 'lenova', 'len1', '28-05-2022', 3, 2),
(2, 8, 4, 'K0008P01', 'K0008P04', 1, 4, 'lenova', 'len1', '28-05-2022', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pr_send2`
--

CREATE TABLE `pr_send2` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num_prd` int(11) NOT NULL,
  `prd_from` varchar(30) NOT NULL,
  `prd_to` varchar(30) NOT NULL,
  `prd1` int(11) NOT NULL,
  `prd2` int(11) NOT NULL,
  `company` varchar(20) NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `distribute` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_send2`
--

INSERT INTO `pr_send2` (`id`, `pid`, `num_prd`, `prd_from`, `prd_to`, `prd1`, `prd2`, `company`, `supplier`, `rdate`, `distribute`, `balance`, `shop`, `rid`) VALUES
(1, 7, 3, 'K0007P1', 'K0007P3', 1, 3, 'lenova', 'len1', '28-05-2022', 0, 0, 'shop1', 1),
(2, 8, 2, 'K0008P1', 'K0008P2', 1, 2, 'lenova', 'len1', '28-05-2022', 0, 0, 'shop1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pr_shop`
--

CREATE TABLE `pr_shop` (
  `id` int(11) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `distributor` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `name2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_shop`
--

INSERT INTO `pr_shop` (`id`, `owner`, `distributor`, `name`, `mobile`, `email`, `city`, `uname`, `pass`, `status`, `name2`) VALUES
(1, 'sony', 'protos', 'Krishna Stores', 7845367283, 'krishna@gmail.com', 'Trichy', 'krishna', '1234', 1, 'Kumar'),
(2, 'lenova', 'len1', 'shop1', 9054621096, 'surya@gmail.com', 'Chennai', 'shop1', '1234', 0, 'Surya'),
(3, 'lenova', 'len1', 'shop2', 9054621096, 'ramesh@gmail.com', 'Chennai', 'shop2', '1234', 1, 'Ramesh');

-- --------------------------------------------------------

--
-- Table structure for table `pr_supplier`
--

CREATE TABLE `pr_supplier` (
  `id` int(11) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `name2` varchar(20) NOT NULL,
  `gst_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_supplier`
--

INSERT INTO `pr_supplier` (`id`, `owner`, `name`, `mobile`, `email`, `city`, `uname`, `pass`, `rdate`, `status`, `name2`, `gst_number`) VALUES
(1, 'sony', 'Protos India Net', 9938563913, 'sathish@gmail.com', 'Trichy', 'protos', '1234', '24-11-2021', 0, 'Sathish', '85113010'),
(2, 'sony', 'Ringtel Marketing', 8877433532, 'vishnu@gmail.com', 'Salem', 'ringtel', '1234', '25-11-2021', 0, 'Vishnu', '85113022'),
(3, 'sony', 'MAYUR TRADERS', 9937563736, 'praveen@gmail.com', 'Tanjore', 'mayur', '1234', '25-11-2021', 0, 'Praveen', '85113041'),
(4, 'lenova', 'L11', 9054621096, 'l11@gmail.com', 'Chennai', 'len1', '1234', '28-05-2022', 0, 'Ram', '4554546');
