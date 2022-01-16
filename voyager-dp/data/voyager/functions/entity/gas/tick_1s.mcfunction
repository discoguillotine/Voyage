execute as @s[tag=voyager.entity.gas.pestilent] as @e[distance=0..2,tag=!voyager.tag.poison_immune] run function voyager:entity/gas/effects/pestilent

execute if score @s voyager.entity_1 matches 1.. run scoreboard players remove @s voyager.entity_1 1
execute if score @s voyager.entity_1 matches 0 run kill @s