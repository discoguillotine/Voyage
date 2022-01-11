tag @s remove voyager.hurt
execute store result score @s voyager.hurt run data get entity @s HurtTime
execute if score @s voyager.hurt matches 10 run playsound voyager:entity.tardigrade.hurt hostile @a
execute if score @s voyager.hurt matches 3 if predicate voyager:entity/tardigrade/hurt_launch_chance at @s run function voyager:entity/tardigrade/launch

execute if score @s voyager.hurt matches 10 run item modify entity @s armor.head voyager:entity/hurt
execute if score @s voyager.hurt matches 0 run item modify entity @s armor.head voyager:entity/unhurt

## AI