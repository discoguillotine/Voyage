tag @s remove beyond.hurt
execute store result score @s beyond.dummy_1 run data get entity @s HurtTime
execute if score @s beyond.dummy_1 matches 1.. run tag @s add beyond.hurt
execute if score @s beyond.dummy_1 matches 9 at @s run playsound minecraft:entity.puffer_fish.hurt hostile @a[distance=0..16] ~ ~ ~ 1 0.75

## Frames A
item replace entity @s armor.head with minecraft:chain_command_block{CustomModelData:7130005}
execute if predicate beyond:moving run item replace entity @s armor.head with minecraft:chain_command_block{CustomModelData:7130007}

## Frames B
execute if entity @s[tag=beyond.hurt] run item replace entity @s armor.head with minecraft:chain_command_block{CustomModelData:7130006}
execute if entity @s[tag=beyond.hurt] if predicate beyond:moving run item replace entity @s armor.head with minecraft:chain_command_block{CustomModelData:7130008}