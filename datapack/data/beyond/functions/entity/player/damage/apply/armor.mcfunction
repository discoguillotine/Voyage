# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor beyond.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness beyond.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage beyond.damage = @s beyond.damage

# tellraw @s ["armor: ", {"score": {"name": "#10armor", "objective": "beyond.damage"}, "color": "green"}]
# tellraw @s ["armor toughness: ", {"score": {"name": "#10toughness", "objective": "beyond.damage"}, "color": "red"}]
# tellraw @s ["damage: ", {"score": {"name": "#damage", "objective": "beyond.damage"}, "color": "green"}]

data modify storage beyond.damage:temp self set from entity @s

# first armor and toughness
function beyond:entity/player/damage/armor/toughness

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "beyond.damage"}, "color": "red"}]

# then protection
function beyond:entity/player/damage/armor/protection

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "beyond.damage"}, "color": "green"}]

# finally resistance
function beyond:entity/player/damage/armor/resistance

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "beyond.damage"}, "color": "red"}]

# tellraw @s ""

# go back to same scale
scoreboard players operation @s beyond.damage /= #10 beyond.damage

# apply new damage
execute if score @s beyond.damage matches 1.. run function beyond:entity/player/damage/apply
