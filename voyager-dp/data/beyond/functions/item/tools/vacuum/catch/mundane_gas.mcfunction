item modify entity @a[distance=..2,tag=beyond.interact,predicate=beyond:item/tools/vacuum/empty] weapon.mainhand beyond:item/tools/vacuum/mundane_gas
execute as @a[distance=..2,tag=beyond.interact,predicate=beyond:item/tools/vacuum/mundane_gas] run function beyond:item/tools/vacuum/increase_count

execute if entity @a[distance=..2,tag=beyond.interact,predicate=beyond:item/tools/vacuum/mundane_gas] run kill @s