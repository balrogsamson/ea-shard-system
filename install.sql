--
-- Table structure for shard items.
-- Tracks shard creation and leveling.
--
CREATE TABLE IF NOT EXISTS 'shard' (
    'id' int(11) unsigned NOT NULL autoincrement,
    'char_id' int(11) unsigned NOT NULL default '0',
    'item_id' int(11) unsigned NOT NULL default '1';
    'level' tinyint(2) NOT NULL default '1',
    'experience' int(4) NOT NULL default '0'
    'date_created' datetime NOT NULL default '0000-00-00 00:00:00'
    PRIMARY KEY('id')
);
