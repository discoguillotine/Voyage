tag @s add voyager.interact

execute if entity @s[distance=..12] positioned ^ ^ ^3 run function voyager:item/tools/vacuum/raycast
playsound voyager:item.vacuum.pull player @a

tag @s remove voyager.interact