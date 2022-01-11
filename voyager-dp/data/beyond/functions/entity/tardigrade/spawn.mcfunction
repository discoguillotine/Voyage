summon vindicator ~ ~ ~ {PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,NoGravity:1b,DeathTime:19s,Silent:1b,CustomNameVisible:0b,DeathLootTable:"beyond:entities/tardigrade",PersistenceRequired:0b,Health:40f,Tags:["smithed.entity","beyond.entity","beyond.entity.tardigrade","beyond.new"],CustomName:'{"translate":"beyond.entity.tardigrade","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:7130000}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:0.4}]}

team join smithed.prevent_aggression @e[tag=beyond.new,sort=nearest,limit=1]

effect give @e[tag=beyond.new,sort=nearest,limit=1] minecraft:invisibility 1000000 0 true
effect give @e[tag=beyond.new,sort=nearest,limit=1] minecraft:slow_falling 1000000 0 true

tag @e[tag=beyond.new] remove beyond.new