teleport @s ^ ^ ^1
execute unless block ~ ~ ~ #voyager:ignore run kill @s
particle minecraft:electric_spark ^ ^ ^-1.5 0 0 0 0.25 2

scoreboard players add @s voyager.dummy_1 1
execute if score @s voyager.dummy_1 matches 16.. run kill @s
execute if entity @e[type=player,distance=0..1] run function voyager:entity/turret/projectile/hit
execute positioned ~ ~-1 ~ if entity @e[type=player,distance=0..1] run function voyager:entity/turret/projectile/hit