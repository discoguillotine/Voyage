effect give @p minecraft:slowness 8 1
effect give @p minecraft:mining_fatigue 8 1
effect give @p minecraft:weakness 8

tag @p add voyager.damage.turret
execute if score $voyager.difficulty voyager.dummy_1 matches 1 run scoreboard players set @p voyager.damage 4
execute if score $voyager.difficulty voyager.dummy_1 matches 2 run scoreboard players set @p voyager.damage 6
execute if score $voyager.difficulty voyager.dummy_1 matches 3 run scoreboard players set @p voyager.damage 10
execute as @p run function voyager:entity/player/damage/apply/armor
tag @p remove voyager.damage.turret

execute at @p run playsound voyager:entity.player.hit_zap player @a[distance=0..16]

kill @s