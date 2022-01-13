execute as @s[tag=voyager.entity.moon_slug.mitosis] run function voyager:entity/moon_slug/mitosis/tick

execute if score @s voyager.entity_3 matches 1.. run scoreboard players remove @s voyager.entity_3 1
execute unless score @s voyager.entity_3 matches -999999999.. run scoreboard players set @s voyager.entity_3 0

execute if score @s voyager.entity_3 matches 0 if entity @a[distance=0..16,predicate=voyager:entity/moon_slug/attracted] run function voyager:entity/moon_slug/attract
execute unless entity @a[distance=0..16,predicate=voyager:entity/moon_slug/attracted] run function voyager:entity/moon_slug/unattract