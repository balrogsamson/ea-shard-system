--
-- Table structure for table `shard_db`
--
CREATE TABLE IF NOT EXISTS `shard_db` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
    `item_id` INT(11) UNSIGNED NOT NULL DEFAULT '1',
    `base_exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
    `next_exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
    `base_lvl` TINYINT(2) NOT NULL DEFAULT '1',
    `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
    `date_created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`),
    KEY `char_id` (`char_id`)
) ENGINE=MyISAM;