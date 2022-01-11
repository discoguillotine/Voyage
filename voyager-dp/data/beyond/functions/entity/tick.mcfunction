## Creatures
execute if entity @s[tag=beyond.entity.turret] run function beyond:entity/turret/tick
execute if entity @s[tag=beyond.entity.turret.projectile] run function beyond:entity/turret/projectile/tick
execute if entity @s[tag=beyond.entity.tardigrade] run function beyond:entity/tardigrade/tick

## Misc Entities
execute if entity @s[tag=beyond.entity.gas] run function beyond:entity/gas/tick

## Technical Entities
execute if entity @s[tag=beyond.spawn_egg] run function beyond:entity/spawn_egg
execute if entity @s[tag=beyond.entity.record] run function beyond:entity/record/tick

## Glowing
execute if entity @s[type=minecraft:wandering_trader,tag=!beyond.allow_glowing] run effect clear @s minecraft:glowing