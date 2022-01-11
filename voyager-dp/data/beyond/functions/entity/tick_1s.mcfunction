execute if entity @s[tag=beyond.entity.turret] run function beyond:entity/turret/tick_1s

execute if entity @s[tag=beyond.entity.tardigrade] run function beyond:entity/tardigrade/tick_1s

execute if entity @s[type=minecraft:wandering_trader] run effect give @s invisibility 999999 0 true
execute if entity @s[type=minecraft:wandering_trader] run data modify entity @s HandItems[0].tag.beyond.fix set value 0
execute if entity @s[type=minecraft:wandering_trader] run data remove entity @s Offers.Recipes