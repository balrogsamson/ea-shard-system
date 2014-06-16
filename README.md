ea-shard-system
===============

The shard system creates a group of items that can level 
and upgrade themselves. This is all done with the eAthena
scripting language and no source code changes for full
compatibility between servers.

-----

IN PROGRESS: Completing the two main scripts. The experience handler deals with
all things involving levels and only that while the shard provider creates sql
entries and... provides shards.

SSExperienceHandler.txt - 80% Completed.

 - calculateExperience() needs a solid formula for generating
   exp per level. With eAthena's limited math capabilities this
   will be tough. Continue reading into logrithmic and linear
   growth.
   
 - getExperience() needs a way to filter experience. Honestly, 
   before I decide to tweak experience I should find out how
   much it takes to make a level... Unlike my old script, this
   script does not account for two shard being equipped and
   division of experience.
   
SSCrystalProvider.txt - 50% Completed.

 - createShard() needs some cleanup. It's gone.through several
   edits while still staying mostly the same. Really needs some
   error checking, too.

----

A 'shard' is an expansion accessory item in Ragnarok Online, compatible with eAthena and rAthena emulation software. When a player character equips a 'shard' it absorbs experience points. When the experience threshold is met it 'levels up' which means an increase in stats. Each shard has a 'crystal' form which is met at maximum level.

KEEPING ITEM DATA ACROSS CHARACTERS
Keeping item data permanent across characters was the biggest challenge of thIs project. Because support for dynamic items is lacking, the only possible way to fix this was to limit trading and to use dynamic account variables. This creates messy code that is hard to debug and even harder to document. Currently, this issue is solved by using MySQL and 'slots'.

Items in Ragnarok Online have an integer that handles permanency. Normally, this integer is used for 'slots' and 'forged' items where data is stored in segments of 8-bits. This system uses the integer to store 'dynamic item identifiers' which include character data, experience and level.

DYMANIC ITEM IDENTIFIERS
