# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor beyond.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness beyond.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage beyond.damage = @s beyond.damage

data modify storage beyond.damage:temp self set from entity @s

# first armor and toughness
function beyond:entity/player/damage/armor/toughness

# then protection
function beyond:entity/player/damage/armor/protection
function beyond:entity/player/damage/armor/blast_protection

# finally resistance
function beyond:entity/player/damage/armor/resistance

# go back to same scale
scoreboard players operation @s beyond.damage /= #10 beyond.damage

# apply new damage
execute if score @s beyond.damage matches 1.. run function beyond:entity/player/damage/apply
