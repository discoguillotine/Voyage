execute if entity @s[distance=..12] positioned ^ ^ ^3 run function voyager:item/tools/vacuum/raycast
execute as @e[type=#voyager:vacuum_pullable,distance=..3] at @s run function voyager:item/tools/vacuum/pull
execute as @e[tag=voyager.tag.vacuum_allowed,distance=..3] at @s run function voyager:item/tools/vacuum/pull_mob
execute as @e[tag=voyager.entity.gas,distance=..3] at @s run function voyager:item/tools/vacuum/pull_gas