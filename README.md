Ragnarok Online Shard System
============================
Originally inspired by the materia system in Final Fantasy VII.<br>
Further inspired by the scripts on ghxRO, an old private server.<br>

A shard is an expansion accessory that includes a leveling system. When a player kills a monster, a piece of the experience is added directly to the shard. When the experience threshold is met the item will level up. This can mean an increase in stats for the player, party, or guild. Each shard has a completed crystal form when maximum level is attained. The shard system has only been tested on rAthena server emulation software.

Technical Specification
=======================
Data permanency on items is normally difficult in Ragnarok. Fortunately, slots are unique 16-bit data structures which are permanent across the game whether traded or stored. Due to constraints, 48-bits are available for usage which is further reduced to 32-bits if the item contains an open slot for players. 32 bits are used for accessing shard metadata within the database and the optional 16 are planned for dynamic bonuses.

#### Dynamic Bonuses ####
Stardization is key to the process of variable bonuses. Because 16 bits is such a large amount (65k roughly) we can seperate this data into 4-bit sets (or even 2-bit) that represent stat bonuses or even store optional data which can be easily accessed with bit hackery when accessing the slot. For this to work, the item must not have any slots listed in the database.

```
// Generate dynamic stats for a traditional 4-bit block type.
// Note: stats should not exceed 0xF or 15.
.@stat = rand(0x0, 0x7);

// Generate the item with the fourth slot storing info.
getitem2 .@shard_id,1,1,0,0,-255,.@card2,.@card3,.@stat;
```
```
// Access card info on the item.
<"
	bonus bStr, 3 + callfunc("determineBonus");
">
```

Additionally, a small source code edit will be required that will expand the typical 4 slot system into an 8 slot system. However, the additional 8 slots will be used for handling dynamic bonuses providing unlimited (64-bits) of freedom!

### Shard Entries ###
All shard database entries are required to include their name with level included. Each shard is typed as class 20. The wLv field is used to easily identify level without hassle. The _OnEquip_ and _OnUnequip_ fields will contain an event that will handle setup. Each shard is planned to have a script updating the current holder, but will not be in the release candidate.<br>

```
{
	Id: 25000
	AegisName: "Shard_of_Prueba_Lv1"
	Name: "Shard of Prueba Lv1"
	Type: 5
	Weight: 10
	Slots: 1
	Job: 0xFFFFFFFE
	Loc: 136
	WeaponLv: 1
	Refine: false
	Script: <" // script code ">
	OnEquipScript: <" doevent "SSEventListener::OnPCEquipEvent"; ">
	OnUnequipScript: <" doevent "SSEventListener::OnPCUnequipEvent"; ">
}
```

### Project Goals ###
* Create a scalable function for next level experience in the handler script.
* Reduce database load by creating a basic update queue that groups update types. After n seconds, push updates with m millisecond delay.
* Create an installation shell script that stores the server-side files into the server directory.
* Create custom bonuses unique to the shard system.
* Create some system of termination so a shard does not level up once it's at max.

### Project Challenges ###
* Shards need balance. We intend to remedy this by using incremental updates to test and release. First generation shards are planned to provide base stat bonuses whereas second and third will grow in complexity.
* Queues will start as player specific and may eventually move to global (one script being the gatekeeper for database interaction). This is necessary. If a player were to kill 500 monsters in one swoop, 500 updates will be pushed. With the queue, after n seconds, 1 update will be pushed. Implementation is the major challenge.
