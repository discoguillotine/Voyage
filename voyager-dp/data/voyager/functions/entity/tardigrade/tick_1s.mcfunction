## AI
execute if entity @a[distance=..24,gamemode=!creative,gamemode=!spectator,predicate=!voyager:entity/player/invisible] run scoreboard players add @s voyager.entity_1 1
execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator,predicate=!voyager:entity/player/invisible] run scoreboard players reset @s voyager.entity_1
execute if score @s voyager.entity_1 matches 1 if predicate voyager:chance/coinflip run function voyager:entity/tardigrade/launch
execute if score @s voyager.entity_1 matches 2.. if predicate voyager:chance/coinflip run function voyager:entity/tardigrade/launch

execute unless entity @a[distance=..24,gamemode=!creative,gamemode=!spectator,predicate=!voyager:entity/player/invisible] if predicate voyager:chance/third run function voyager:entity/tardigrade/wiggle