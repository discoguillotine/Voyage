execute at @s run playsound voyager:item.vacuum.pull player @a

tag @e[tag=voyager.entity.moon_slug,sort=nearest,limit=1] add voyager.vacuum_target
data modify storage voyager:storage root.temp.vacuum.entityData set from entity @e[tag=voyager.vacuum_target,limit=1,sort=nearest]

execute at @e[tag=voyager.vacuum_target,limit=1,sort=nearest] run particle poof ~ ~0.5 ~ 0 0 0 0.1 10

item modify entity @s weapon.mainhand voyager:item/tools/vacuum/entity
item modify entity @s weapon.mainhand voyager:item/tools/vacuum/moon_slug
function voyager:item/tools/vacuum/increase_count

tp @e[tag=voyager.vacuum_target,limit=1,sort=nearest] ~ -512 ~