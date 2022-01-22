tag @s add voyager.damage.turret
execute if score $voyager.difficulty voyager.dummy_1 matches 0..1 run scoreboard players set @s voyager.damage 7
execute if score $voyager.difficulty voyager.dummy_1 matches 2 run scoreboard players set @s voyager.damage 8
execute if score $voyager.difficulty voyager.dummy_1 matches 3 run scoreboard players set @s voyager.damage 10
execute as @s run function voyager:entity/player/damage/apply/armor
tag @s remove voyager.damage.turret

execute at @s run playsound voyager:entity.player.hurt_zap player @a