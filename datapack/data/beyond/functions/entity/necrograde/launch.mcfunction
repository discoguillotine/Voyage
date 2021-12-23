particle minecraft:sneeze ~ ~ ~ 0 0 0 0.25 15
playsound minecraft:entity.wither.shoot hostile @a[distance=0..16] ~ ~ ~ 1
scoreboard players reset @s beyond.dummy_2

teleport @s ~ ~ ~ facing entity @p
execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^0.75 {Tags:["beyond.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=beyond.direction,limit=1] Pos
kill @e[tag=beyond.direction]