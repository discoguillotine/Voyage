scoreboard players reset @s voyager.sneak

execute as @s[tag=voyager.no_gravity] if block ^ ^ ^0.5 #voyager:non_solid positioned ~ ~1.7 ~ if block ^ ^ ^0.5 #voyager:non_solid at @s run function voyager:entity/player/gravity/small_float