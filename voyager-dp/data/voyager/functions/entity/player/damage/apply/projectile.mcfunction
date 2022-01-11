# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor voyager.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness voyager.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage voyager.damage = @s voyager.damage

data modify storage voyager.damage:temp self set from entity @s

# first armor and toughness
function voyager:entity/player/damage/armor/toughness

# then protection
function voyager:entity/player/damage/armor/protection
function voyager:entity/player/damage/armor/proj_protection

# finally resistance
function voyager.damage:armor/resistance

# go back to same scale
scoreboard players operation @s voyager.damage /= #10 voyager.damage

# apply new damage
execute if score @s voyager.damage matches 1.. run function voyager:entity/player/damage/apply
