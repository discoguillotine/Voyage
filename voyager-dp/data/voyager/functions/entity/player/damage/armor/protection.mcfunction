# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 4 × level ) )%
##################################

execute store result score #helm voyager.damage run data get storage voyager.damage:temp self.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #chest voyager.damage run data get storage voyager.damage:temp self.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #legs voyager.damage run data get storage voyager.damage:temp self.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute store result score #boots voyager.damage run data get storage voyager.damage:temp self.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction voyager.damage = #helm voyager.damage
scoreboard players operation #reduction voyager.damage += #chest voyager.damage
scoreboard players operation #reduction voyager.damage += #legs voyager.damage
scoreboard players operation #reduction voyager.damage += #boots voyager.damage

# tellraw @s ["#level: ", {"score": {"name": "#reduction", "objective": "voyager.damage"}, "color": "blue"}]

# 1
scoreboard players operation #reduction voyager.damage *= #4 voyager.damage

# 2
scoreboard players operation #reduction voyager.damage < #80 voyager.damage

# tellraw @s ["#reduction %: ", {"score": {"name": "#reduction", "objective": "voyager.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #protection voyager.damage = @s voyager.damage
scoreboard players operation #protection voyager.damage *= #reduction voyager.damage
scoreboard players operation #protection voyager.damage /= #100 voyager.damage


# tellraw @s ["#protection: ", {"score": {"name": "#protection", "objective": "voyager.damage"}, "color": "blue"}]

scoreboard players operation @s voyager.damage -= #protection voyager.damage
