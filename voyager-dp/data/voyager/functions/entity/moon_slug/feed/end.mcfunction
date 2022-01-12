execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand voyager:item/remove_1

execute as @e[tag=voyager.entity.moon_slug,tag=!voyager.entity.moon_slug.mitosis,sort=nearest,limit=1] at @s run function voyager:entity/moon_slug/feed/slug