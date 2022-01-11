execute store result score $voyager.temp.health voyager.dummy_1 run data get entity @s Health
scoreboard players operation $voyager.temp.health voyager.dummy_1 -= @s voyager.damage
execute if score $voyager.temp.health voyager.dummy_1 matches ..0 run function voyager:entity/damage/death
execute store result entity @s Health int 1 run scoreboard players get $voyager.temp.health voyager.dummy_1
scoreboard players reset $voyager.temp.health voyager.dummy_1

data modify entity @s ActiveEffects append value {Amplifier:99b,ShowParticles:0b,Duration:2,Id:11b}
effect give @s[type=!#voyager:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#voyager:undead] minecraft:instant_health 1 0 true