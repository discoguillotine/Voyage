playsound beyond:entity.turret.shoot hostile @a[distance=0..16] ~ ~ ~ 1
summon marker ~ ~1.25 ~ {Fire:1000000,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","beyond.entity","beyond.turret.projectile","beyond.new"]}
execute as @e[tag=beyond.turret.projectile,tag=beyond.new,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator] eyes
tag @e[tag=beyond.turret.projectile,tag=beyond.new,sort=nearest,limit=1] remove beyond.new