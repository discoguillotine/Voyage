## Creatures
execute if entity @s[tag=voyager.entity.turret] run function voyager:entity/turret/tick
execute if entity @s[tag=voyager.entity.turret.projectile] run function voyager:entity/turret/projectile/tick
execute if entity @s[tag=voyager.entity.tardigrade] run function voyager:entity/tardigrade/tick

## Creatures General
execute if entity @s[tag=voyager.entity.display.head] run function voyager:entity/general/display_head

## Misc Entities
execute if entity @s[tag=voyager.entity.gas] run function voyager:entity/gas/tick

## Technical Entities
execute if entity @s[tag=voyager.spawn_egg] run function voyager:entity/spawn_egg
execute if entity @s[tag=voyager.entity.record] run function voyager:entity/record/tick

## Glowing
execute if entity @s[type=minecraft:wandering_trader,tag=!voyager.allow_glowing] run effect clear @s minecraft:glowing