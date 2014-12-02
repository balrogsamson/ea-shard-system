Ragnarok Online Shard System
============================
Originally inspired by the materia system in Final Fantasy VII.<br>
Recreated after seeing the scripts on ghxRO, an old private server.<br>

A shard is an expansion accessory that includes a leveling system. When a player kills a monster, a piece of the experience is added directly to the shard. When the experience threshold is met the item will level up. This can mean an increase in stats for the player, party, or guild. Each shard has a completed crystal form when maximum level is attained. The shard system has only been tested on rAthena server emulation software.

Technical Specification
=======================
Data permanency across states is difficult in Athena. Although variable options (dymanic variables) exist, they create messy code. Instead we use a database and slots to track information no matter where the item goes. 32-bits of data are allocated to represent the database entry's primary key (which are applied to the last two slots of the shard). The following 16 bits are planned, but not currently implemented. Some ideas:
* Dynamic bonuses (eg. ... of the Suffix, Prefixed ...)
* Variable bonuses (eg. +1 STR - +5 STR)

### Shard Entries ###
All shard database entries are required to include their name with level included. Each shard is typed as class 20. The wLv field is used to easily identify level without hassle. The _OnEquip_ and _OnUnequip_ fields will contain an incrementing and deincrementing permanent character variable, respectively.<br>

```
25565,Burning_Shard_LV1,Burning Shard LV1,20,,,100,,,,1,0xFFFFFFFF,11,2,136,1,50,,,{ // item script },{ SSEquipped += 1; },{ SSEquipped -= 1; }
```
