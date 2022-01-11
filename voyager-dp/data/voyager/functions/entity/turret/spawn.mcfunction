summon wandering_trader ~ ~ ~ {DeathLootTable:"voyager:entities/turret",HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"voyager.entity.turret"}',DeathTime:19s,Silent:1b,DespawnDelay:0,Tags:["smithed.entity","voyager.entity","voyager.entity.turret"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},Health:30f,Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0},{Name:generic.knockback_resistance,Base:1.0}]}

execute if score $voyager.tcc voyager.dummy_1 matches 1.. run team join tcc.antivillager @e[tag=voyager.turret,sort=nearest,limit=1]
execute unless score $voyager.tcc voyager.dummy_1 matches 1.. run team join voyager.antivil @e[tag=voyager.turret,sort=nearest,limit=1]

effect give @e[tag=voyager.entity.turret,sort=nearest,limit=1] minecraft:invisibility 1000000 0 true