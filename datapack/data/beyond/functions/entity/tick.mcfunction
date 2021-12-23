execute if entity @s[tag=beyond.entity.turret] run function beyond:entity/turret/tick
execute if entity @s[tag=beyond.entity.turret.projectile] run function beyond:entity/turret/projectile/tick
execute if entity @s[tag=beyond.entity.necrograde] run function beyond:entity/necrograde/tick

execute if entity @s[tag=beyond.spawn_egg] run function beyond:entity/spawn_egg

execute if entity @s[tag=beyond.entity.record] run function beyond:entity/record/tick

execute if entity @s[type=minecraft:wandering_trader,tag=!beyond.allow_glowing] run effect clear @s minecraft:glowing