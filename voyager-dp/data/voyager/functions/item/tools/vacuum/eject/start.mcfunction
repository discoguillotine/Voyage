tag @s add voyager.interact

execute if predicate voyager:item/tools/vacuum/moon_slug run function voyager:item/tools/vacuum/eject/moon_slug
execute if predicate voyager:item/tools/vacuum/mundane_gas run function voyager:item/tools/vacuum/eject/mundane_gas
execute if predicate voyager:item/tools/vacuum/pestilent_gas run function voyager:item/tools/vacuum/eject/pestilent_gas

tag @s remove voyager.interact