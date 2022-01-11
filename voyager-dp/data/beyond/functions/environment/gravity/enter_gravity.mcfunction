playsound beyond:environment.gravity.enter neutral @a
particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.1 5

attribute @s[type=player] minecraft:generic.knockback_resistance modifier remove 7-1-3-0-0
effect clear @s[type=player] minecraft:levitation
data modify entity @s[type=!player] NoGravity set value 0

tag @s remove beyond.no_gravity