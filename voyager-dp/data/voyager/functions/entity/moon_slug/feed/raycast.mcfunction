execute unless entity @e[tag=voyager.entity.moon_slug,tag=!voyager.entity.moon_slug.mitosis,distance=..1] if entity @s[distance=0..6] positioned ^ ^ ^0.1 run function voyager:entity/moon_slug/feed/raycast
execute if entity @e[tag=voyager.entity.moon_slug,tag=!voyager.entity.moon_slug.mitosis,distance=..1] run function voyager:entity/moon_slug/feed/end