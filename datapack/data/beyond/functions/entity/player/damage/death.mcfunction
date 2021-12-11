gamerule showDeathMessages false
kill @s

execute as @s[tag=beyond.damage.space] run tellraw @a {"translate":"beyond.death.no_spacesuit","with":[{"selector":"@s"}]}

gamerule showDeathMessages true