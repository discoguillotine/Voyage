scoreboard players reset @s voyager.sprint

execute as @s[tag=voyager.no_gravity] if block ^ ^ ^0.75 #voyager:non_solid positioned ~ ~1.7 ~ if block ^ ^ ^0.75 #voyager:non_solid at @s run function voyager:entity/player/gravity/big_float