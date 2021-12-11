# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction beyond.damage 0

# First, lets grab the values
execute if data storage beyond.damage:temp self.ActiveEffects[{Id:11b}] store result score #reduction beyond.damage run data get storage beyond.damage:temp self.ActiveEffects[{Id:11b}].Amplifier
execute if data storage beyond.damage:temp self.ActiveEffects[{Id:11b}] run scoreboard players add #reduction beyond.damage 1

# 1
scoreboard players operation #reduction beyond.damage *= #20 beyond.damage

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "beyond.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance beyond.damage = @s beyond.damage
scoreboard players operation #resistance beyond.damage *= #reduction beyond.damage
scoreboard players operation #resistance beyond.damage /= #100 beyond.damage

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "beyond.damage"}, "color": "blue"}]

scoreboard players operation @s beyond.damage -= #resistance beyond.damage
