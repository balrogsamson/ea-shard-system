--
-- Table structure for shard items.
--
CREATE TABLE IF NOT EXISTS 'shard' (
    'id' int(11) unsigned NOT NULL autoincrement,
    'creator_id' int(11) unsigned NOT NULL default '0',
    'creator_name' varchar(30) NOT NULL default '',
    'date_created' datetime NOT NULL default '0000-00-00 00:00:00'
    'holder_id' int(11) unsigned NOT NULL default '0',
    'holder_name' varchar(30) NOT NULL default '',
    'item_id' int(11) unsigned NOT NULL default '1';
    'level' tinyint(2) NOT NULL default '1',
    'experience' int(4) NOT NULL default '0'
    PRIMARY KEY('id')
);


--
-- Table structure for crystal items.
-- Completed crystal data is stored here.
--
CREATE TABLE IF NOT EXISTS 'shard_log' (
    'completion_date' datetime NOT NULL default '0000-00-00 00:00:00',
    'completion_time' int(11) unsigned NOT NULL default '0',
    'char_id' int(11) unsigned NOT NULL default '0',
    'char_name' varchar(30) NOT NULL default '',
    'item_id' int(11) NOT NULL default '0'
);
