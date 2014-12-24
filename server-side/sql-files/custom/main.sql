CREATE TABLE IF NOT EXISTS `shard_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(30) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(30) NOT NULL DEFAULT '',
  `level` tinyint(2) NOT NULL DEFAULT '1',
  `experience` int(4) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY(`id`)
) ENGINE=MyISAM;
