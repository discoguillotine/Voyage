tag @s add beyond.item.record.ichor
advancement revoke @s only beyond:item/misc/music_disc_ichor
tag @a[distance=..64] add beyond.stop_base
schedule function beyond:item/misc/records/stop_base 2t
title @a[distance=..64] actionbar {"translate":"beyond.music.record.ichor","color":"light_purple","italic":false}

execute anchored eyes run function beyond:item/misc/records/raycast
tag @s remove beyond.item.record.ichor