teleport @s ^ ^ ^ facing entity @p[distance=..12,tag=voyager.interact]
execute facing entity @p[tag=voyager.interact] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.25 {Tags:["voyager.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=voyager.direction,limit=1,sort=nearest] Pos
kill @e[tag=voyager.direction]