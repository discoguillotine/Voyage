tag @s add voyager.interact

execute if predicate voyager:item/tools/vacuum/tuzi run function voyager:item/tools/vacuum/eject/tuzi
execute if predicate voyager:item/tools/vacuum/mundane_gas run function voyager:item/tools/vacuum/eject/mundane_gas
execute if predicate voyager:item/tools/vacuum/pestilent_gas run function voyager:item/tools/vacuum/eject/pestilent_gas

tag @s remove voyager.interact