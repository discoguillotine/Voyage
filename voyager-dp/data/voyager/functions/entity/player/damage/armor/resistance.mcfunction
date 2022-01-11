# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction voyager.damage 0

# First, lets grab the values
execute if data storage voyager.damage:temp self.ActiveEffects[{Id:11b}] store result score #reduction voyager.damage run data get storage voyager.damage:temp self.ActiveEffects[{Id:11b}].Amplifier
execute if data storage voyager.damage:temp self.ActiveEffects[{Id:11b}] run scoreboard players add #reduction voyager.damage 1

# 1
scoreboard players operation #reduction voyager.damage *= #20 voyager.damage

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "voyager.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance voyager.damage = @s voyager.damage
scoreboard players operation #resistance voyager.damage *= #reduction voyager.damage
scoreboard players operation #resistance voyager.damage /= #100 voyager.damage

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "voyager.damage"}, "color": "blue"}]

scoreboard players operation @s voyager.damage -= #resistance voyager.damage
