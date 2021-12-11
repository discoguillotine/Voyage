# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 4 × level ) )%
##################################

execute store result score #helm beyond.damage run data get storage beyond.damage:temp self.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #chest beyond.damage run data get storage beyond.damage:temp self.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #legs beyond.damage run data get storage beyond.damage:temp self.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #boots beyond.damage run data get storage beyond.damage:temp self.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction beyond.damage = #helm beyond.damage
scoreboard players operation #reduction beyond.damage += #chest beyond.damage
scoreboard players operation #reduction beyond.damage += #legs beyond.damage
scoreboard players operation #reduction beyond.damage += #boots beyond.damage

# tellraw @s ["#level: ", {"score": {"name": "#reduction", "objective": "beyond.damage"}, "color": "blue"}]

# 1
scoreboard players operation #reduction beyond.damage *= #4 beyond.damage

# 2
scoreboard players operation #reduction beyond.damage < #80 beyond.damage

# tellraw @s ["#reduction %: ", {"score": {"name": "#reduction", "objective": "beyond.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #protection beyond.damage = @s beyond.damage
scoreboard players operation #protection beyond.damage *= #reduction beyond.damage
scoreboard players operation #protection beyond.damage /= #100 beyond.damage


# tellraw @s ["#protection: ", {"score": {"name": "#protection", "objective": "beyond.damage"}, "color": "blue"}]

scoreboard players operation @s beyond.damage -= #protection beyond.damage
