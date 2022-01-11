tag @s add beyond.damage.space
scoreboard players set @s beyond.damage 2
function beyond:entity/player/damage/apply
tag @s remove beyond.damage.space

playsound minecraft:entity.player.hurt_freeze player @a