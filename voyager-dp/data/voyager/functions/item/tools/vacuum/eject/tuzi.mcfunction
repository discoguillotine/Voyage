## Eject
execute anchored eyes positioned ^ ^ ^0.5 run function voyager:entity/tuzi/spawn
execute anchored eyes positioned ^ ^ ^0.5 run data modify entity @e[tag=voyager.entity.tuzi.small,sort=nearest,limit=1] ActiveEffects set from entity @s SelectedItem.tag.voyager.contents.entityData.ActiveEffects
execute anchored eyes positioned ^ ^ ^0.5 run data modify entity @e[tag=voyager.entity.tuzi.small,sort=nearest,limit=1] CustomName set from entity @s SelectedItem.tag.voyager.contents.entityData.CustomName
execute anchored eyes positioned ^ ^ ^0.5 run data modify entity @e[tag=voyager.entity.tuzi.small,sort=nearest,limit=1] Health set from entity @s SelectedItem.tag.voyager.contents.entityData.Health
execute anchored eyes positioned ^ ^ ^0.5 run teleport @e[tag=voyager.entity.tuzi.small,sort=nearest,limit=1] ^ ^ ^ facing entity @p[tag=voyager.interact]
execute positioned 0.0 0 0.0 in minecraft:overworld run summon marker ^ ^ ^2 {Tags:["voyager.direction"]}
execute anchored eyes positioned ^ ^ ^0.5 in minecraft:overworld run data modify entity @e[tag=voyager.entity.tuzi.small,sort=nearest,limit=1] Motion set from entity @e[type=marker,tag=voyager.direction,limit=1,sort=nearest] Pos
kill @e[tag=voyager.direction]

## Vacuum
playsound voyager:item.vacuum.eject player @a
function voyager:item/tools/vacuum/empty