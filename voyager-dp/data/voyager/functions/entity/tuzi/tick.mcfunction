tag @s remove voyager.hurt
execute store result score @s voyager.hurt run data get entity @s HurtTime
execute if score @s voyager.hurt matches 1.. run tag @s add voyager.hurt
execute if score @s voyager.hurt matches 10 run playsound voyager:entity.tuzi.hurt neutral @a
execute if score @s[tag=voyager.entity.tuzi.mitosis] voyager.hurt matches 10 run function voyager:entity/tuzi/mitosis/end

item replace entity @s[tag=voyager.entity.tuzi.small] weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130001}
item replace entity @s[tag=voyager.entity.tuzi.medium] weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130002}
item replace entity @s[tag=voyager.entity.tuzi.large] weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130003}
item replace entity @s[tag=voyager.entity.tuzi.giant] weapon.mainhand with minecraft:leather_horse_armor{CustomModelData:7130004}

effect clear @s minecraft:poison