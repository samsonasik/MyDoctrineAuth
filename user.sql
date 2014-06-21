DROP TABLE IF EXISTS `User`;
CREATE TABLE IF NOT EXISTS `User` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `User`
--

-- email    : 'admin@admin.com'
-- password : 'admin'

INSERT INTO `User` (`id`, `email`, `password`, `is_active`) VALUES
(1, 'admin@admin.com', '$2y$10$bTNzM0NyM3RTNGx0eTM0a.AOX409D3S8mIGSNBCUKpaAwF9zrxMZu', 1);