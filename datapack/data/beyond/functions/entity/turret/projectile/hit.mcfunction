effect give @p minecraft:slowness 8 1
effect give @p minecraft:mining_fatigue 8 1
effect give @p minecraft:weakness 8

tag @p add beyond.damage.turret
execute if score $beyond.difficulty beyond.dummy_1 matches 1 run scoreboard players set @p beyond.damage 4
execute if score $beyond.difficulty beyond.dummy_1 matches 2 run scoreboard players set @p beyond.damage 6
execute if score $beyond.difficulty beyond.dummy_1 matches 3 run scoreboard players set @p beyond.damage 10
execute as @p run function beyond:entity/player/damage/apply/armor
tag @p remove beyond.damage.turret

execute at @p run playsound beyond:entity.player.hit_zap player @a[distance=0..16]

kill @s