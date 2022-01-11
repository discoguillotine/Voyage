## AI
execute if entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s beyond.dummy_2 1
execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s beyond.dummy_2
execute if score @s beyond.dummy_2 matches 1 if predicate beyond:chance/coinflip run function beyond:entity/tardigrade/launch
execute if score @s beyond.dummy_2 matches 2.. if predicate beyond:chance/coinflip run function beyond:entity/tardigrade/launch

execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] if predicate beyond:chance/third run function beyond:entity/tardigrade/wiggle