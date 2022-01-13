playsound voyager:entity.moon_slug.grow neutral @a
particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 10

execute as @s[tag=voyager.entity.moon_slug.large] run tag @s add voyager.entity.moon_slug.giant
execute as @s[tag=voyager.entity.moon_slug.large] run function voyager:entity/moon_slug/mitosis/start
execute as @s[tag=voyager.entity.moon_slug.large] run tag @s remove voyager.entity.moon_slug.large
execute as @s[tag=voyager.entity.moon_slug.medium] run tag @s add voyager.entity.moon_slug.large
execute as @s[tag=voyager.entity.moon_slug.medium] run tag @s remove voyager.entity.moon_slug.medium
execute as @s[tag=voyager.entity.moon_slug.small] run tag @s add voyager.entity.moon_slug.medium
execute as @s[tag=voyager.entity.moon_slug.small] run tag @s remove voyager.vacuum_pullable
execute as @s[tag=voyager.entity.moon_slug.small] run tag @s remove voyager.entity.moon_slug.small

scoreboard players reset @s voyager.entity_1
scoreboard players set @s voyager.entity_3 300

tag @s remove voyager.vacuum_allowed