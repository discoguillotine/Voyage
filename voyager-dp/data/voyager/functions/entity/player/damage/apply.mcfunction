function voyager:entity/player/damage/health/calculate_modifier
execute if score @s voyager.damage >= #maximum_health voyager.damage run function voyager:entity/player/damage/death
execute if score @s voyager.damage < #maximum_health voyager.damage run function voyager:entity/player/damage/health/update
scoreboard players reset @s voyager.damage