playsound voyager:entity.tuzi.eat neutral @a
execute as @s[tag=voyager.entity.tuzi.small] run particle minecraft:happy_villager ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force
execute as @s[tag=voyager.entity.tuzi.medium] run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.4 0.4 0 2 force
execute as @s[tag=voyager.entity.tuzi.large] run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 3 force

scoreboard players add @s voyager.entity_1 1

execute if score @s voyager.entity_1 matches 2..3 if predicate voyager:entity/tuzi/age_1 run function voyager:entity/tuzi/feed/grow
execute if score @s voyager.entity_1 matches 4..5 if predicate voyager:entity/tuzi/age_2 run function voyager:entity/tuzi/feed/grow
execute if score @s voyager.entity_1 matches 6..7 if predicate voyager:entity/tuzi/age_3 run function voyager:entity/tuzi/feed/grow
execute if score @s voyager.entity_1 matches 8..9 if predicate voyager:entity/tuzi/age_4 run function voyager:entity/tuzi/feed/grow
execute if score @s voyager.entity_1 matches 10..11 if predicate voyager:entity/tuzi/age_5 run function voyager:entity/tuzi/feed/grow
execute if score @s voyager.entity_1 matches 12.. run function voyager:entity/tuzi/feed/grow