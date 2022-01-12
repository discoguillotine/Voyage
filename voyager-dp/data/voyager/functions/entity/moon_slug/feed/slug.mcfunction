playsound voyager:entity.moon_slug.eat neutral @a
particle minecraft:happy_villager ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force
scoreboard players add @s voyager.entity_1 1

execute if score @s voyager.entity_1 matches 8..15 if predicate voyager:entity/moon_slug/age_1 run function voyager:entity/moon_slug/feed/grow
execute if score @s voyager.entity_1 matches 16..31 if predicate voyager:entity/moon_slug/age_2 run function voyager:entity/moon_slug/feed/grow
execute if score @s voyager.entity_1 matches 32..47 if predicate voyager:entity/moon_slug/age_3 run function voyager:entity/moon_slug/feed/grow
execute if score @s voyager.entity_1 matches 48..63 if predicate voyager:entity/moon_slug/age_4 run function voyager:entity/moon_slug/feed/grow
execute if score @s voyager.entity_1 matches 64..95 if predicate voyager:entity/moon_slug/age_5 run function voyager:entity/moon_slug/feed/grow
execute if score @s voyager.entity_1 matches 96.. run function voyager:entity/moon_slug/feed/grow