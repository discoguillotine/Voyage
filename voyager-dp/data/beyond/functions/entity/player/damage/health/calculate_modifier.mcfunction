execute store result score #maximum_health beyond.damage run attribute @s generic.max_health get
execute store result score #current_health beyond.damage run data get entity @s Health
scoreboard players operation @s beyond.damage += #maximum_health beyond.damage
scoreboard players operation @s beyond.damage -= #current_health beyond.damage