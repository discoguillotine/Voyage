## AI
execute if entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s voyager.dummy_2 1
execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s voyager.dummy_2
execute if score @s voyager.dummy_2 matches 1 if predicate voyager:chance/coinflip run function voyager:entity/tardigrade/launch
execute if score @s voyager.dummy_2 matches 2.. if predicate voyager:chance/coinflip run function voyager:entity/tardigrade/launch

execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] if predicate voyager:chance/third run function voyager:entity/tardigrade/wiggle