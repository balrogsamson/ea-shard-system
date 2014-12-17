--
-- Table structure for shard items.
-- Tracks shard creation and leveling.
--
CREATE TABLE IF NOT EXISTS 'shard_db' (
    'id' int(11) unsigned NOT NULL autoincrement,
    'char_id' int(11) unsigned NOT NULL default '0',
    'char_name' varchar(30) NOT NULL default '',
    'item_id' int(11) unsigned NOT NULL default '1';
    'item_name' varchar(30) NOT NULL default '',
    'level' tinyint(2) NOT NULL default '1',
    'experience' int(4) NOT NULL default '0'
    'date_created' datetime NOT NULL default '0000-00-00 00:00:00'
    PRIMARY KEY('id')
);
