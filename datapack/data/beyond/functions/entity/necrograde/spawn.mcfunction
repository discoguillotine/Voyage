summon zombie ~ ~ ~ {NoGravity:1b,DeathTime:19s,Silent:1b,CustomNameVisible:0b,DeathLootTable:"pht:entities/eidolon",PersistenceRequired:0b,CanPickUpLoot:0b,Health:40f,CanBreakDoors:0b,Tags:["smithed.entity","global.ignore","beyond.entity","beyond.entity.necrograde","pht.decay","pht.schizoid","pht.entity"],CustomName:'{"translate":"beyond.entity.necrograde","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:chain_command_block",Count:1b,tag:{CustomModelData:7130005}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:0.4}]}

execute if score $beyond.tcc beyond.dummy_1 matches 1.. run team join tcc.antivillager @e[tag=beyond.necrograde,sort=nearest,limit=1]
execute unless score $beyond.tcc beyond.dummy_1 matches 1.. run team join beyond.antivil @e[tag=beyond.necrograde,sort=nearest,limit=1]

effect give @e[tag=beyond.entity.necrograde,sort=nearest,limit=1] minecraft:invisibility 1000000 0 true
effect give @e[tag=beyond.entity.necrograde,sort=nearest,limit=1] minecraft:slow_falling 1000000 0 true