playsound voyager:entity.turret.shoot hostile @a[distance=0..16] ~ ~ ~ 1
summon armor_stand ~ ~1.25 ~ {Fire:1000000,ArmorItems:[{},{},{},{id:"minecraft:chain_command_block",Count:1b,tag:{CustomModelData:7130002}}],HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","voyager.entity","voyager.entity.turret.projectile","voyager.new"]}
execute as @e[tag=voyager.entity.turret.projectile,tag=voyager.new,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator] eyes
tag @e[tag=voyager.entity.turret.projectile,tag=voyager.new,sort=nearest,limit=1] remove voyager.new
scoreboard players reset @s voyager.dummy_2