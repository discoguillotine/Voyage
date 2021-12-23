tag @s remove beyond.hurt
execute store result score @s beyond.dummy_1 run data get entity @s HurtTime
execute if score @s beyond.dummy_1 matches 1.. run tag @s add beyond.hurt
execute if score @s beyond.dummy_1 matches 9 at @s run playsound beyond:entity.turret.hurt hostile @a[distance=0..16] ~ ~ ~ 1
execute if score @s beyond.dummy_1 matches 9 run scoreboard players remove @s beyond.dummy_2 2
execute as @s[tag=beyond.hurt] run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.5 3

## Default
item replace entity @s weapon.mainhand with minecraft:chain_command_block{CustomModelData:7130000}

## Hurt
execute if entity @s[tag=beyond.hurt] run item replace entity @s weapon.mainhand with minecraft:chain_command_block{CustomModelData:7130001}

## Shoot
execute if entity @e[type=player,distance=0..12,gamemode=!creative,gamemode=!spectator] if predicate beyond:chance/coinflip run scoreboard players add @s beyond.dummy_2 1
execute unless entity @e[type=player,distance=0..12,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s beyond.dummy_2
execute if score @s beyond.dummy_2 matches 1.. run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s beyond.dummy_2 matches 20 run function beyond:entity/turret/projectile/shoot