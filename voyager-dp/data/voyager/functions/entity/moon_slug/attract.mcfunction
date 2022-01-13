data modify entity @s WanderTarget.X set from entity @p[distance=0..16,predicate=voyager:entity/moon_slug/attracted] Pos[0]
data modify entity @s WanderTarget.Y set from entity @p[distance=0..16,predicate=voyager:entity/moon_slug/attracted] Pos[1]
data modify entity @s WanderTarget.Z set from entity @p[distance=0..16,predicate=voyager:entity/moon_slug/attracted] Pos[2]

effect give @s speed 10 4 true