item modify entity @a[distance=..2,tag=voyager.interact,predicate=voyager:item/tools/vacuum/empty] weapon.mainhand voyager:item/tools/vacuum/mundane_gas
execute as @a[distance=..2,tag=voyager.interact,predicate=voyager:item/tools/vacuum/mundane_gas] run function voyager:item/tools/vacuum/increase_count

execute if entity @a[distance=..2,tag=voyager.interact,predicate=voyager:item/tools/vacuum/mundane_gas] run kill @s