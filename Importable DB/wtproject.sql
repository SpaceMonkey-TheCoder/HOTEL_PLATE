-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2017 at 10:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wtproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `a_name` varchar(50) DEFAULT NULL,
  `a_email` varchar(50) NOT NULL,
  `a_pass` varchar(50) DEFAULT NULL,
  `a_gender` varchar(50) DEFAULT NULL,
  `a_phone` varchar(50) DEFAULT NULL,
  `a_age` varchar(50) DEFAULT NULL,
  `a_position` varchar(50) DEFAULT NULL,
  `a_photo` longblob,
  `a_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `c_name` varchar(50) DEFAULT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_pass` varchar(50) DEFAULT NULL,
  `c_gender` varchar(50) DEFAULT NULL,
  `c_phone` varchar(50) DEFAULT NULL,
  `c_age` varchar(50) DEFAULT NULL,
  `c_occupation` varchar(50) DEFAULT NULL,
  `c_photo` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`c_name`, `c_email`, `c_pass`, `c_gender`, `c_phone`, `c_age`, `c_occupation`, `c_photo`) VALUES
(NULL, 'akib', '1234', NULL, NULL, NULL, NULL, NULL),
('AKIB', 'akib@cse.com', '1234', 'male', '01773776555', '24', 'student', 0x89504e470d0a1a0a0000000d49484452000000cb000000cc0803000000ea20a7b900000081504c5445000000ffffff1d1d1dbbbbbbf7f7f7fcfcfce4e4e4f4f4f4d8d8d8f1f1f1505050343434bababa9e9e9eefefefcfcfcfacacacc4c4c4292929636363a5a5a5e1e1e14141410f0f0f4949490b0b0b7777771818188b8b8bb4b4b46e6e6e8484845858582525252f2f2f9595957e7e7e3a3a3a4444447070705e5e5e4c4c4cd3d3d3fd3a291800000b8c49444154789ced9d0993b2381086550e01e512f04010141d8fffff03173c10344092ee80f5d5be55bbb53b35033e423add9d4e6734fe77341afa03204a1c8b1ed892e39b59163d9465a6ef4876a00bbba310162d8ecee972b698ac4675ad268bd9323d47b126e2b6b82c532b3077b3118d663b33b0a6a877c7635102dbdf9da8385e3aed7c3b50d03e01168be624c68409e4a1899138582f1c0a8be5ec669f43835eabd9ceb1303e069845b6a40b37c65b17c992076699dea2250249a16574039a02108b350f0f4824850ee11cf4ae015864c7d8229214da1a0ee04de36551d40cf391bc75c8545e2bcdc9a2fa6c33098b4ebeda238beea4c2480aa50e97d3c6c3e2a6fc93099d56a9db078ba2ed04833cb4d398870d2b8b65d2b98e70cd4c5603cdc6a2d85e4f24853c9bedd130b128595f0fe5a159c604c3c2a2fdf54a52e88fc587a667919d7e1fca43330647809a454db01d163a6d13ea999396454b07212994d2be67942c314fcc88a5498cc8a29b43a2e43026954f43c36225a27d962ead129a799382450d072629145258806e969b3134c75dc60dce62ff064a0e63435934acd4045ccb2edbdcc1a2ad8726a868dd01d3ce628b8b8479746a7fcd5a59ec5f7a2a85d6ad306d2cc175e8cffea56bc0c7a2f61977d1ca6b99679a59d47ee27a56ed9a611a59e46833f4c7266a133506348d2ce6d03e589356262b8b3bf4476e5153eeac81c516932cc6d1a1c13293597ed284bdd560cc882c4a8675d7431a667e2ccd1d33f1967823909c6b22b2c438775d47aeaacb8fdb2ab26e69a68794ff5811a366124b8070c76d9a91020e3df616f08be79727cdff0496297c92dca64ed3943675c33d02cc8eb0b6f9cda2f8e037ecaf753548773df83bbcf2bf87cc370b3cd39a742d375826fcd110b2b35f2c3ad01c6f0c9a6520ed02f690bcaf3cd3178b03bcc5ae332cbf2b48c0b3b1d3c562016fb16b0b306a37f2a13087cf9cd9270b6c965c51a3e406cd879afeac9dc5055d7f9bb12ccb293ed0026c3f46669d4587a52869928bd5bb45c03475581ffe751609f44d75e57cbe140067e5bdd4cc3205d9e36dfdca34822645bddaec5f6301d9e34dc45e3225bb406356b3cb551605946f4dbb93d7049808c6b2ac7a18559639e4aa5b93ab5a4a036646e7641619546b78a19f59aa82867d97ca375861814560316711db0d96e7ad46656f16fd0cb9e61f6f75a10eccc39ddf73cc9be5060af822de623c2586059a8bb7c92959149845e131620fa929e8c6956fb164514196dee02f60859ae543e938952c26e882097ff9aa12c35846654eb6648145c65f71118334a0bbfcf7c9a2812eb7e7298f7c498526185e2eed8b25015ded8f7fe8e756199ac34aea2c166cc6e29cf41f9261df631e6b5835160916159d2175f80accec8c4613a9c602f48a42d00e091fc8f20afc1f2c0130260298e45c50a33c32820a8b0d348b0968d31798656f5758a04ff9087ac7a0e9c5d1c87fb3c0e2fc5c21680f0e74ecbfe2fe3b8b0a2d41bc70eef2b80b6c93734ba6962c12f45a06645be11414383de4962c47e8a566740971b2ac14ce722c59c0f56e2bf6d4d85b2a423dfaf2c5a2c0af9501261894b208e5c98270b10b2016435980779f2c709b385af03b9716c2d07f0464050b46fd317f3066a354a7860f1605a37c2fe51d30728652187155ee2c01c6be962de37ea852014ee9cd2cb8b3b818b503a323e7e88f51ee7e8fd2731607e521cff8a6180ba9226ae5dc5910cc5821c605bea7e03ef253e69d05986b7b694fa8eae8928257971e152c32d69690d6da61b254b88bfc5228e72c16468b87bb8eac7659cef0f63be59ec708b33a3c630b2f151fa596eca1fcad188d6f78fb0f4e31138c8bb95de074cb596cc42f67cdd2e2e196e2dd38f708ed9c055636f2a183436dcc34dc5adbad5bb0a05e7243591223c7d8fb51f059469384c6344f331cd7a5a282059cb8f8d0ca733b078d76c4dfdc2c0960c95db38eedd08a2362bf931896dca844cd4d5ea673316d0044b18c46cbcc2619015973d0dc8c0f8963c9df34cfb7ebb56a8a16276b613b8444b2e456e0901e4d572b8064d57622ef2472bbb958967ef53fcb6f4ac29ff70793001f6630dd59441a97cd7eb6bca697cb254dafcb83c83b4d5ce4f8a57aedbf5d1265a623d9b74055d540bbd973c7cca2a3b71432c5dce31768f52641b373ce70b3a6b2a2d45c99fc7fe5a99a33653b7437f9a415f13e661388c92ccd5c4ded7494a7ea4d4aae07446fd928e27daccc613ecf9fbccc56a943fea9ea4629da9e54cf42cc8fed8dc40d2ca67c9fa26af3f08a6311eef9319cbce5e1ec045c050bba665e30064f84944fde5fcc1ba08a64ea66f0ae9f8f7c720cbccec27334605f5af966a6b087b38def2cb00966ef3918ed9ca7390de43bcda7978245854c309304fa4cde341e60123da98fb5d794fb0a8733a4d0f253b2eb71dbb474fc60e12d21d978b01ec1df52b93334c7270b67f5d83e83548c92a5d847be47e33f596caebf5e4bb81de99fb27cae656dfbc932e6f8db6d0429196b55b0e3b001e3170bfb6ad20252ccd32535617ecfae250bb3177382b4d2ee9665b24e7951c9c23a6096ddd96f98a6acfbbdec92c5621b6ea08a774ab94c153f33ab6461ab78f4841c12f221c5650911cfef3a58a6ea070f73aa6f8361580e78547c3debc6e9c7dab51f940286dad75c54ebc6e9e3e4531f2fd85312ed37ec591516ea78ec00297865954cdbaee4b963ecc9425943b6f0051be3baac84ca0378edf07ab2c8745623127770135174fdb60cb9c642f792b535fe13238d66e67b6d4a7cb1a8147f03daadc7299a8648af6fb8dc5f9976ff0d6cc70e9facee4d7ee9eb774b96eee9b2b3b7ac10499d99cdb234ba64d1bba2d3493cc063a1a85f5e97f6e8bd4fbc6bf47b3d7894247535a535bff78977990c866a2a5c75ec239fbddffc378bdc9e8e39f66e8f5f0a5a5d994a9167a5df45ab83b918c01ebfd416322f2a3ba22a2c4a5b14e30949bad0a9ad7bfbb9f2e657fbc3b4ac286f1b9bb0f620bdc52dabbe2eb51e44cdfc4c6797604b911acd9251fdbd1a4b73f403db3c0d55d054a755ef405663695ceee3a9d547941e35cc97612d04a9f71f6b6a3bd5d1805db81a8e3939d48d6b9da5693beda0c325974b9e2e3eb6da7ff4eb0bc8eb4ae940fecb4be473024e1f9feab38f2279fda2ff20acae1b31bfe47ffcd627cb94f8573fc9f2f7695bbffa8e4aa479e917dfb1cd574ae88b85d8236a36a037567c269f60c7be3b6b7df7e925f59d5a85ec27fde14977092bcce9f76b4fe8054daa5dd85efcf95c92a4e29fb7e6957fd77e56ff9154fbb539e1676d1798cf23e37baadc12ba74937a74130399ed64309146f091f0b9492cf2af1d95f2ad35297f4aec03df30cdfe8ec89121f9ac0178cb71a15a7dce926d2cc07ebda21592d3da0de759a8a2767660a8a91b4dd33923daef0e994593d3de78fecb7cd8e3049b3599377de44616c5fcd17379cc460fa4f9bc24a44614c85ab514afb49c63a5e36d48c753d2b232d776be185e15369abcb6e2bbd673dfa0ad5ad145708e69596856a5fad4aebd24b29de5b70e4eea8ad43b587ee9356b7fc128587ee7c974e74f3a5972d3fc0bf3ccaacd1853b38cf56c780f609351547c50b08ce5818f7a2e0e7ba6a9c3a161192b689d82f8b49f536581a858063d1a9dfe70744a96b11a0e650156d44da76859c63a66931d062d7cea3a2f6a16d6325b242d19b2bf0c2ce36982df3da45ddb84659d948565acc469af28295b3911134bb16da0bf7973d3d19a05ca3296a5be46cd5262ad53656529ce38ebe390f193cf5e51c0ce924f9cf0b3f43a74487816ae7958c6b21b8a1c369b906f4f0a174b4123eedcf42befee1a4e965c2e7e3f815cfb1dffd2283fcb58718f189d64ab9a1d5dc0ba2880a5e8f464625ae8a509db0f0c62c99f8de560b598301cb64606e82c85d4cc808e9cbd9121547620b0dc9b095cf82382c52573514aed505872a9b6b3e399410f3bc7c62ab6c162c935b5dc846d357d9db81662f12322cb43b61fa6a7457ba0b35d9cd2d047af1544672914b8b119859ef1c99433185e1899b12ba4ee4908cb5db21568b6ebba65614bfedfb61658e2769c8963e95fff01ea06bc4bd2ec7ae10000000049454e44ae426082),
('akib', 'akib@gm.com', '1234', NULL, NULL, NULL, NULL, NULL),
('c_1', 'c1@gm.com', '1234', NULL, NULL, NULL, NULL, NULL),
('c2', 'c2@gm.com', '1234', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `d_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`d_name`) VALUES
('BARISAL'),
('CHITTAGONG'),
('DHAKA'),
('KHULNA'),
('MYMENSINGH'),
('RAJSHAHI'),
('RANGPUR'),
('SYLHET');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_info`
--

CREATE TABLE `hotel_info` (
  `d_name` varchar(50) DEFAULT NULL,
  `h_name` varchar(50) NOT NULL,
  `h_address` varchar(50) DEFAULT NULL,
  `h_phone` varchar(50) DEFAULT NULL,
  `h_TIN` varchar(50) DEFAULT NULL,
  `h_photo` varchar(50) DEFAULT NULL,
  `a_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `h_name` varchar(50) DEFAULT NULL,
  `ac` tinyint(1) DEFAULT NULL,
  `r_type` varchar(50) DEFAULT NULL,
  `r_cost` varchar(50) DEFAULT NULL,
  `r_pic` longblob,
  `r_no` varchar(50) NOT NULL,
  `r_avail` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `c_email` varchar(50) NOT NULL,
  `h_name` varchar(50) DEFAULT NULL,
  `r_type` varchar(50) DEFAULT NULL,
  `ac` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`c_email`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`d_name`);

--
-- Indexes for table `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD PRIMARY KEY (`h_name`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`r_no`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`c_email`);

ALTER TABLE hotel_room
ADD FOREIGN KEY (h_name) REFERENCES hotel_info(h_name);
ALTER TABLE hotel_info
ADD FOREIGN KEY (a_id) REFERENCES agent(a_id);
ALTER TABLE order_list
ADD FOREIGN KEY (c_email) REFERENCES client(c_email);
ALTER TABLE hotel_info
ADD FOREIGN KEY (h_name) REFERENCES district(d_name);
ALTER TABLE order_list
ADD FOREIGN KEY (h_name) REFERENCES hotel_room(h_name);
ALTER TABLE order_list
ADD FOREIGN KEY (r_no) REFERENCES hotel_room(r_no);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
