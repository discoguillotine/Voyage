tag @s add voyager.damage.heat
scoreboard players set @s voyager.damage 2
function voyager:entity/player/damage/apply
tag @s remove voyager.damage.heat

playsound minecraft:entity.player.hurt_on_fire player @a