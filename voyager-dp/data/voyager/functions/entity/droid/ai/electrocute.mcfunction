execute as @a[distance=0..2,predicate=voyager:entity/player/vulnerable,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/damage/electrocute

scoreboard players set @s voyager.entity_2 21