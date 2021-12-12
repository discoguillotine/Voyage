tp @s ^ ^ ^1
execute unless block ~ ~ ~ #beyond:ignore run kill @s
particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s beyond.dummy_1 1
execute if score @s beyond.dummy_1 matches 16.. run kill @s
execute if entity @e[type=player,distance=0..1] run function beyond:entity/turret/projectile/hit
execute positioned ~ ~-1 ~ if entity @e[type=player,distance=0..1] run function beyond:entity/turret/projectile/hit