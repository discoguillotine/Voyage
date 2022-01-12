tag @s add voyager.item.record.ichor
advancement revoke @s only voyager:technical/item/misc/music_disc_ichor
tag @a[distance=..64] add voyager.stop_base
schedule function voyager:item/misc/records/stop_base 2t
title @a[distance=..64] actionbar {"translate":"voyager.music.record.ichor","color":"light_purple","italic":false}

execute anchored eyes run function voyager:item/misc/records/raycast
tag @s remove voyager.item.record.ichor