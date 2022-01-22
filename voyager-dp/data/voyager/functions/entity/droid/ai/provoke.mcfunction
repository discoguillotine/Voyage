playsound voyager:entity.droid.detect hostile @a ~ ~ ~ 1.6

data modify entity @s WanderTarget.X set from entity @p[distance=..24,predicate=voyager:entity/droid/provoke,predicate=voyager:entity/player/survival] Pos[0]
data modify entity @s WanderTarget.Y set from entity @p[distance=..24,predicate=voyager:entity/droid/provoke,predicate=voyager:entity/player/survival] Pos[1]
data modify entity @s WanderTarget.Z set from entity @p[distance=..24,predicate=voyager:entity/droid/provoke,predicate=voyager:entity/player/survival] Pos[2]

scoreboard players set @s voyager.entity_1 6

tag @s add voyager.entity.droid.provoked
effect give @s minecraft:speed 1000000 2 true