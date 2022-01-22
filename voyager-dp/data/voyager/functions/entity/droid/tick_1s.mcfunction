scoreboard players remove @s voyager.entity_1 1

## Behavior
execute as @s[tag=voyager.entity.droid.provoked] if predicate voyager:chance/third unless entity @a[distance=..12,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/unprovoke