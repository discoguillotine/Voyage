gamerule showDeathMessages false
kill @s

## Mob Death Messages
execute as @s[tag=beyond.damage.turret] run tellraw @a {"translate":"beyond.death.shock.entity","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=beyond.turret]"}]}

## Other Death Messages
execute as @s[tag=beyond.damage.space] run tellraw @a {"translate":"beyond.death.no_spacesuit","with":[{"selector":"@s"}]}

gamerule showDeathMessages true