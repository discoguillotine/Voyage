tag @s add voyager.damage.space
scoreboard players set @s voyager.damage 2
function voyager:entity/player/damage/apply
tag @s remove voyager.damage.space

playsound minecraft:entity.player.hurt_freeze player @a