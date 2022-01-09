particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 15
playsound beyond:entity.tardigrade.charge hostile @a ~ ~ ~ 1.5
scoreboard players reset @s beyond.dummy_2

teleport @s ^ ^ ^ facing entity @p[distance=..24]
execute if entity @a[distance=12..24] unless entity @a[distance=..11] facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^1.25 {Tags:["beyond.direction"]}
execute if entity @a[distance=5..11] unless entity @a[distance=..4] facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.75 {Tags:["beyond.direction"]}
execute if entity @a[distance=..4] facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.5 {Tags:["beyond.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=beyond.direction,limit=1] Pos
kill @e[tag=beyond.direction]