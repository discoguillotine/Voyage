execute as @a run function voyager:entity/player/tick_1s
execute as @e[tag=voyager.entity] at @s run function voyager:entity/tick_1s

schedule function voyager:technical/tick_1s 1s