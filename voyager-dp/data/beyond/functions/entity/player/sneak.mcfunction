scoreboard players reset @s beyond.sneak

execute as @s[tag=beyond.no_gravity] if block ^ ^ ^0.5 #beyond:non_solid positioned ~ ~1.7 ~ if block ^ ^ ^0.5 #beyond:non_solid at @s run function beyond:entity/player/gravity/small_float