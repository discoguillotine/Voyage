playsound voyager:entity.tuzi.grow neutral @a
particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 10

execute as @s[tag=voyager.entity.tuzi.large] run tag @s add voyager.entity.tuzi.giant
execute as @s[tag=voyager.entity.tuzi.large] run function voyager:entity/tuzi/mitosis/start
execute as @s[tag=voyager.entity.tuzi.large] run tag @s remove voyager.entity.tuzi.large
execute as @s[tag=voyager.entity.tuzi.medium] run tag @s add voyager.entity.tuzi.large
execute as @s[tag=voyager.entity.tuzi.medium] run tag @s remove voyager.entity.tuzi.medium
execute as @s[tag=voyager.entity.tuzi.small] run tag @s add voyager.entity.tuzi.medium
execute as @s[tag=voyager.entity.tuzi.small] run tag @s remove voyager.vacuum_pullable
execute as @s[tag=voyager.entity.tuzi.small] run tag @s remove voyager.entity.tuzi.small

scoreboard players reset @s voyager.entity_1
scoreboard players set @s voyager.entity_3 300

tag @s remove voyager.vacuum_allowed