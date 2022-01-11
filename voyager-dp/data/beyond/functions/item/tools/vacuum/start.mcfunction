tag @s add beyond.interact

execute if entity @s[distance=..12] positioned ^ ^ ^3 run function beyond:item/tools/vacuum/raycast
playsound beyond:item.vacuum.pull player @a

tag @s remove beyond.interact