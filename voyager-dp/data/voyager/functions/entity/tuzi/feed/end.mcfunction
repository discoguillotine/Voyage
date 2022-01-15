execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand voyager:item/remove_1

execute as @e[tag=voyager.entity.tuzi,tag=!voyager.entity.tuzi.mitosis,sort=nearest,limit=1,scores={voyager.entity_3=0}] at @s run function voyager:entity/tuzi/feed/slug