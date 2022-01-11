## Tech
execute store result score $beyond.temp beyond.dummy_1 run data get entity @s SelectedItem.tag.beyond.contents.Count
scoreboard players add $beyond.temp beyond.dummy_1 1
execute store result storage beyond:temp Result int 1 run scoreboard players get $beyond.temp beyond.dummy_1
item modify entity @s weapon.mainhand beyond:item/tools/vacuum/change_count
execute store result score @s beyond.dummy_1 run data get entity @s SelectedItem.tag.beyond.contents.Count

## Content Types
execute if predicate beyond:item/tools/vacuum/mundane_gas run item modify entity @s weapon.mainhand beyond:item/tools/vacuum/mundane_gas

## Wrap Up
scoreboard players reset @s beyond.dummy_1
scoreboard players reset $beyond.temp beyond.dummy_1