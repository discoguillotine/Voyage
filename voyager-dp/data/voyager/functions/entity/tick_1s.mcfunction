## Creatures
execute if entity @s[tag=voyager.entity.turret] run function voyager:entity/turret/tick_1s
execute if entity @s[tag=voyager.entity.tardigrade] run function voyager:entity/tardigrade/tick_1s

## Misc Entities
execute if entity @s[tag=voyager.entity.gas] run function voyager:entity/gas/tick_1s

## Trader
execute if entity @s[type=minecraft:wandering_trader] run effect give @s invisibility 999999 0 true
execute if entity @s[type=minecraft:wandering_trader] run data modify entity @s HandItems[0].tag.voyager.fix set value 0
execute if entity @s[type=minecraft:wandering_trader] run data remove entity @s Offers.Recipes