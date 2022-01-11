execute store result score #maximum_health voyager.damage run attribute @s generic.max_health get
execute store result score #current_health voyager.damage run data get entity @s Health
scoreboard players operation @s voyager.damage += #maximum_health voyager.damage
scoreboard players operation @s voyager.damage -= #current_health voyager.damage