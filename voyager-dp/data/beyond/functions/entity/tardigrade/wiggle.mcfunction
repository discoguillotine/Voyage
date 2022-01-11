particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 6
playsound beyond:entity.tardigrade.charge hostile @a ~ ~ ~ 0.8

execute positioned 0.0 0 0.0 run summon marker ^ ^ ^0.25 {Tags:["beyond.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=beyond.direction,limit=1,sort=nearest] Pos
kill @e[tag=beyond.direction]