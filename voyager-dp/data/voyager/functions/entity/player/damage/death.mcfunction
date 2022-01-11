gamerule showDeathMessages false
kill @s

## Mob Death Messages
execute as @s[tag=voyager.damage.turret] run tellraw @a {"translate":"voyager.death.shock.entity","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=voyager.turret]"}]}

## Other Death Messages
execute as @s[tag=voyager.damage.space] run tellraw @a {"translate":"voyager.death.no_spacesuit","with":[{"selector":"@s"}]}

gamerule showDeathMessages true