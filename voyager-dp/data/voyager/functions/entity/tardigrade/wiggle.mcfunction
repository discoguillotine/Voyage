particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 6
playsound voyager:entity.tardigrade.charge hostile @a ~ ~ ~ 0.8

execute positioned 0.0 0 0.0 run summon marker ^ ^ ^0.25 {Tags:["voyager.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=voyager.direction,limit=1,sort=nearest] Pos
kill @e[tag=voyager.direction]