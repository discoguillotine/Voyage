execute if entity @s[distance=..12] positioned ^ ^ ^3 run function beyond:item/tools/vacuum/raycast
execute as @e[type=#beyond:vacuum_pullable,distance=..3] at @s run function beyond:item/tools/vacuum/pull
execute as @e[tag=beyond.entity.gas,distance=..3] at @s run function beyond:item/tools/vacuum/pull_gas