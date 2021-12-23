execute store result score $beyond.temp.health beyond.dummy_1 run data get entity @s Health
scoreboard players operation $beyond.temp.health beyond.dummy_1 -= @s beyond.damage
execute if score $beyond.temp.health beyond.dummy_1 matches ..0 run function beyond:entity/damage/death
execute store result entity @s Health int 1 run scoreboard players get $beyond.temp.health beyond.dummy_1
scoreboard players reset $beyond.temp.health beyond.dummy_1

data modify entity @s ActiveEffects append value {Amplifier:99b,ShowParticles:0b,Duration:2,Id:11b}
effect give @s[type=!#beyond:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#beyond:undead] minecraft:instant_health 1 0 true