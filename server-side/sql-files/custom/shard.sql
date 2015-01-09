CREATE TABLE IF NOT EXISTS 'shard_db' (
    'id' int(11) unsigned NOT NULL AUTO_INCREMENT,
    'owner_aid' int(11) unsigned NOT NULL DEFAULT 0,
    'owner_cid' int(11) unsigned NOT NULL DEFAULT 0,
    'owner_name' varchar(30) NOT NULL DEFAULT '',
    'wielder_aid', int(11) unsigned NOT NULL DEFAULT 0,
    'wielder_cid', int(11) unsigned NOT NULL DEFAULT 0,
    'wielder_name, varchar(30) NOT NULL DEFAULT '',
    'item_id' int(11) unsigned NOT NULL DEFAULT 1,
    'item_name' varchar(30) NOT NULL DEFAULT '',
    'level' tinyint(2) NOT NULL DEFAULT 1,
    'base_exp' int(11) unsigned NOT NULL DEFAULT 0,
    'total_exp' int(11) unsigned NOT NULL DEFAULT 0,
    'date_created' datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY('id')
);
