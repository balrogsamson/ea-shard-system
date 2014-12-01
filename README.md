Ragnarok Online Shard System
============================
Originally inspired by the materia system in Final Fantasy VII.
Recreated after seeing the scripts on ghxRO, an old private server.

A shard is an expansion accessory that includes a leveling system. When a player kills a monster, a piece of the experience is added directly to the shard. When the experience threshold is met the item will level up. This can mean an increase in stats for the player, party, or guild. Each shard has a completed crystal form when maximum level is attained. The shard system has only been tested on rAthena server emulation software.

Technical Specification
=======================
Data permanency is a big issue within rAthena. Although, variable options exist they create messy code that is hard to debug. As a result, a database entry is created for each shard provided to a player. Additionally, a permanent 64-bit value (representing the database primary key) is applied to two slots on the shard. This allows for the proper entry to be found no matter who holds the item.

Because most accessory items only use one slot, the second slot will be used for miscellaneous data. All shard/crystal type items are classed as type 20 and the wLv field is used to easily identify the shard level. Here is an example of a database entry:

25565,Burning_Shard_LV1,Burning Shard LV1,20,,,100,,,,1,0xFFFFFFFF,11,2,136,1,50,,,{ // ... },{ SSEquipped+=1; SSUpdateHolder(25565, 0); },{ SSEquipped-=1; SSUpdateHolder(25565, 1); }
