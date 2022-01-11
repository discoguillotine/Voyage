function beyond:entity/player/damage/health/calculate_modifier
execute if score @s beyond.damage >= #maximum_health beyond.damage run function beyond:entity/player/damage/death
execute if score @s beyond.damage < #maximum_health beyond.damage run function beyond:entity/player/damage/health/update
scoreboard players reset @s beyond.damage

execute at @s run playsound minecraft:entity.player.hurt player @a[distance=0..16] ~ ~ ~ 1 1