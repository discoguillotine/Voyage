execute facing entity @p[distance=..12,tag=voyager.interact] eyes run teleport @s ^ ^ ^1

execute as @s[tag=voyager.entity.gas.mundane] if entity @a[distance=..2,tag=voyager.interact,predicate=!voyager:item/tools/vacuum/capacity_16] run function voyager:item/tools/vacuum/catch/mundane_gas
execute as @s[tag=voyager.entity.gas.pestilential] if entity @a[distance=..2,tag=voyager.interact,predicate=!voyager:item/tools/vacuum/capacity_16] run function voyager:item/tools/vacuum/catch/pestilential_gas