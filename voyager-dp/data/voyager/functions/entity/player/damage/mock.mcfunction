## Mob Death Messages
execute as @s[tag=voyager.damage.turret] run tellraw @a {"translate":"voyager.death.shock.entity","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=voyager.turret]"}]}

## Other Death Messages
execute as @s[tag=voyager.damage.space] run tellraw @a {"translate":"voyager.death.no_spacesuit","with":[{"selector":"@s"}]}
execute as @s[tag=voyager.damage.heat] run tellraw @a {"translate":"voyager.death.heat","with":[{"selector":"@s"}]}
execute as @s[tag=voyager.damage.cold] run tellraw @a {"translate":"voyager.death.cold","with":[{"selector":"@s"}]}