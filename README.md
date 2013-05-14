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

