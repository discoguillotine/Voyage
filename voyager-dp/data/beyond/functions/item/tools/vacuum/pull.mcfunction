teleport @s ^ ^ ^ facing entity @p[distance=..12,tag=beyond.interact]
execute facing entity @p[tag=beyond.interact] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.25 {Tags:["beyond.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=beyond.direction,limit=1,sort=nearest] Pos
kill @e[tag=beyond.direction]