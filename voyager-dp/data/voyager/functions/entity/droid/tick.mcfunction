execute if predicate voyager:entity/just_hurt run playsound voyager:entity.droid.hurt neutral @a

## Display
item replace entity @s weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130005}
execute if predicate voyager:entity/moving run item replace entity @s weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130006}
execute if predicate voyager:entity/moving run item replace entity @s[tag=voyager.entity.droid.provoked] weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130007}
execute if block ~ ~ ~ minecraft:water run item replace entity @s weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130008}

## Behavior
execute unless score @s[tag=!voyager.entity.droid.provoked] voyager.entity_1 matches 1.. if entity @a[distance=..24,predicate=voyager:entity/droid/provoke,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/provoke
execute as @s[tag=!voyager.entity.droid.provoked] if entity @a[distance=..6,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/track_nearest_player
execute as @s[tag=voyager.entity.droid.provoked] if entity @a[distance=..12,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/track_nearest_player
execute unless score @s voyager.entity_2 matches 1.. if entity @a[distance=0..2,predicate=voyager:entity/player/vulnerable,predicate=voyager:entity/player/survival] run function voyager:entity/droid/ai/electrocute
execute if score @s voyager.entity_2 matches 1.. run scoreboard players remove @s voyager.entity_2 1