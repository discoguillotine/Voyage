## Tech
execute store result score $voyager.temp voyager.dummy_1 run data get entity @s SelectedItem.tag.voyager.contents.Count
scoreboard players remove $voyager.temp voyager.dummy_1 1
execute store result storage voyager:storage root.temp.vacuum.result int 1 run scoreboard players get $voyager.temp voyager.dummy_1
item modify entity @s weapon.mainhand voyager:item/tools/vacuum/change_count

## Content Types (temporary, fix up a custom count display modifier goober)
execute if predicate voyager:item/tools/vacuum/mundane_gas run item modify entity @s weapon.mainhand voyager:item/tools/vacuum/mundane_gas
execute if predicate voyager:item/tools/vacuum/pestilent_gas run item modify entity @s weapon.mainhand voyager:item/tools/vacuum/pestilent_gas

item modify entity @s[predicate=!voyager:item/tools/vacuum/moon_slug] weapon.mainhand voyager:item/tools/vacuum/count_16
item modify entity @s weapon.mainhand voyager:item/pack

execute if predicate voyager:item/tools/vacuum/count_0 run function voyager:item/tools/vacuum/empty

## Wrap Up
scoreboard players reset @s voyager.dummy_1
scoreboard players reset $voyager.temp voyager.dummy_1