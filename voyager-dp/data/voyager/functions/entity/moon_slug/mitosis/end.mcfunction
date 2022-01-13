particle minecraft:flash ~ ~0.5 ~
particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.25 50
playsound voyager:entity.moon_slug.mitosis neutral @a

execute positioned ^-0.1 ^ ^ run function voyager:entity/moon_slug/spawn
execute positioned ^0.1 ^ ^ run function voyager:entity/moon_slug/spawn
execute if predicate voyager:chance/coinflip run function voyager:entity/moon_slug/spawn

loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
execute if predicate voyager:chance/coinflip run loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime
execute if predicate voyager:chance/coinflip run loot spawn ~ ~0.5 ~ loot voyager:item/resources/moon_slime

function voyager:entity/gas/spawn/pestilent_gas
scoreboard players set @e[tag=voyager.entity.gas.pestilent,sort=nearest,limit=1] voyager.entity_1 10

kill @s