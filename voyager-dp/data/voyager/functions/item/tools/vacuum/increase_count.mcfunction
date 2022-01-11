## Tech
execute store result score $voyager.temp voyager.dummy_1 run data get entity @s SelectedItem.tag.voyager.contents.Count
scoreboard players add $voyager.temp voyager.dummy_1 1
execute store result storage voyager:temp Result int 1 run scoreboard players get $voyager.temp voyager.dummy_1
item modify entity @s weapon.mainhand voyager:item/tools/vacuum/change_count
execute store result score @s voyager.dummy_1 run data get entity @s SelectedItem.tag.voyager.contents.Count

## Content Types
execute if predicate voyager:item/tools/vacuum/mundane_gas run item modify entity @s weapon.mainhand voyager:item/tools/vacuum/mundane_gas

## Wrap Up
scoreboard players reset @s voyager.dummy_1
scoreboard players reset $voyager.temp voyager.dummy_1