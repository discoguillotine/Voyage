summon wandering_trader ~ ~ ~ {DeathLootTable:"beyond:entities/turret",HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"beyond.entity.turret"}',DeathTime:19s,Silent:1b,DespawnDelay:0,Tags:["smithed.entity","global.ignore","beyond.entity","beyond.entity.turret"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},Health:30f,Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0},{Name:generic.knockback_resistance,Base:1.0}]}

execute if score $beyond.tcc beyond.dummy_1 matches 1.. run team join tcc.antivillager @e[tag=beyond.turret,sort=nearest,limit=1]
execute unless score $beyond.tcc beyond.dummy_1 matches 1.. run team join beyond.antivil @e[tag=beyond.turret,sort=nearest,limit=1]

effect give @e[tag=beyond.entity.turret,sort=nearest,limit=1] minecraft:invisibility 1000000 0 true