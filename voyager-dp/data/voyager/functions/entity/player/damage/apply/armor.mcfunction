# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor voyager.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness voyager.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage voyager.damage = @s voyager.damage

# tellraw @s ["armor: ", {"score": {"name": "#10armor", "objective": "voyager.damage"}, "color": "green"}]
# tellraw @s ["armor toughness: ", {"score": {"name": "#10toughness", "objective": "voyager.damage"}, "color": "red"}]
# tellraw @s ["damage: ", {"score": {"name": "#damage", "objective": "voyager.damage"}, "color": "green"}]

data modify storage voyager.damage:temp self set from entity @s

# first armor and toughness
function voyager:entity/player/damage/armor/toughness

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "voyager.damage"}, "color": "red"}]

# then protection
function voyager:entity/player/damage/armor/protection

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "voyager.damage"}, "color": "green"}]

# finally resistance
function voyager:entity/player/damage/armor/resistance

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "voyager.damage"}, "color": "red"}]

# tellraw @s ""

# go back to same scale
scoreboard players operation @s voyager.damage /= #10 voyager.damage

# apply new damage
execute if score @s voyager.damage matches 1.. run function voyager:entity/player/damage/apply
