particle minecraft:flash ~ ~0.5 ~
particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.25 50
playsound voyager:entity.tuzi.mitosis neutral @a

execute positioned ^-0.1 ^ ^ run function voyager:entity/tuzi/spawn
execute positioned ^0.1 ^ ^ run function voyager:entity/tuzi/spawn
execute if predicate voyager:chance/coinflip run function voyager:entity/tuzi/spawn

loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
execute if predicate voyager:chance/coinflip run loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
execute if predicate voyager:chance/coinflip run loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime

kill @s