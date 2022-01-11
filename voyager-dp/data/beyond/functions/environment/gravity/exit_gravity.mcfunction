playsound beyond:environment.gravity.exit neutral @a
particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.1 5

attribute @s[type=player] minecraft:generic.knockback_resistance modifier add 7-1-3-0-0 beyond.gravity 16 add
effect give @s[type=player] minecraft:levitation 999999 255 true
data modify entity @s[type=!player] NoGravity set value 1

tag @s add beyond.no_gravity