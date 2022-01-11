tag @s remove beyond.hurt
execute store result score @s beyond.hurt run data get entity @s HurtTime
execute if score @s beyond.hurt matches 10 run playsound beyond:entity.tardigrade.hurt hostile @a
execute if score @s beyond.hurt matches 3 if predicate beyond:entity/tardigrade/hurt_launch_chance at @s run function beyond:entity/tardigrade/launch

execute if score @s beyond.hurt matches 10 run item modify entity @s armor.head beyond:entity/hurt
execute if score @s beyond.hurt matches 0 run item modify entity @s armor.head beyond:entity/unhurt

## AI