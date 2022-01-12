execute as @s[tag=voyager.entity.moon_slug.mitosis] run function voyager:entity/moon_slug/mitosis/tick

execute if score @s voyager.entity_3 matches 1.. run scoreboard players remove @s voyager.entity_3 1
execute unless score @s voyager.entity_3 matches -999999999.. run scoreboard players set @s voyager.entity_3 0