advancement revoke @s only voyager:technical/item/consume/moonfoam_pudding

effect give @s minecraft:slow_falling 10
effect give @s minecraft:jump_boost 10 4
execute if predicate voyager:chance/coinflip run effect give @s minecraft:poison 6 1

scoreboard players add @s manic.sanity 100
scoreboard players add @s manic.effect.false_sanity 100