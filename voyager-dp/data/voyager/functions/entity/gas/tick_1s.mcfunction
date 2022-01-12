execute as @s[tag=voyager.entity.gas.pestilent] run effect give @e[distance=0..2,tag=!voyager.entity.moon_slug] minecraft:poison 5

execute if score @s voyager.entity_1 matches 1.. run scoreboard players remove @s voyager.entity_1 1
execute if score @s voyager.entity_1 matches 0 run kill @s