scoreboard players reset @s voyager.coas

execute if predicate voyager:item/held/vacuum unless predicate voyager:item/held/capsule_offhand unless predicate voyager:entity/player/sneaking run function voyager:item/tools/vacuum/start
execute if predicate voyager:item/held/vacuum unless predicate voyager:item/held/capsule_offhand if predicate voyager:entity/player/sneaking run function voyager:item/tools/vacuum/eject/start
execute if predicate voyager:item/held/vacuum if predicate voyager:item/held/capsule_offhand unless predicate voyager:item/tools/vacuum/empty if predicate voyager:item/tools/vacuum/empty_offhand run function voyager:item/tools/vacuum/capsule/empty
execute as @s[tag=!voyager.interact] if predicate voyager:item/held/vacuum_offhand if predicate voyager:item/held/capsule unless predicate voyager:item/tools/vacuum/empty if predicate voyager:item/tools/vacuum/empty_offhand run function voyager:item/tools/vacuum/capsule/fill

tag @s remove voyager.interact