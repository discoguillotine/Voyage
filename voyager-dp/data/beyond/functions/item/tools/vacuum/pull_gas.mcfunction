teleport @s ^ ^ ^1 facing entity @p[distance=..12,tag=beyond.interact] feet

execute as @s[tag=beyond.entity.gas.mundane] if entity @a[distance=..2,tag=beyond.interact,predicate=!beyond:item/tools/vacuum/capacity_16] run function beyond:item/tools/vacuum/catch/mundane_gas