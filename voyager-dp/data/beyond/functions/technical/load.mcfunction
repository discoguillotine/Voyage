## Dummies
scoreboard objectives add beyond.dummy_1 dummy
scoreboard objectives add beyond.dummy_2 dummy
scoreboard objectives add beyond.dummy_3 dummy

## Entity stuff
scoreboard objectives add beyond.hurt dummy

## Player
scoreboard objectives add beyond.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add beyond.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add beyond.sprint minecraft.custom:minecraft.sprint_one_cm

## Damage Library
scoreboard objectives add beyond.damage dummy
scoreboard objectives add beyond.damage dummy
scoreboard players set #4 beyond.damage 4
scoreboard players set #5 beyond.damage 5
scoreboard players set #8 beyond.damage 8
scoreboard players set #10 beyond.damage 10
scoreboard players set #20 beyond.damage 20
scoreboard players set #25 beyond.damage 25
scoreboard players set #80 beyond.damage 80
scoreboard players set #100 beyond.damage 100
scoreboard players set #200 beyond.damage 200
scoreboard players set #250 beyond.damage 250
scoreboard players set #2000 beyond.damage 2000
scoreboard players set #2500 beyond.damage 2500

## Teams
team add smithed.prevent_aggression
team add beyond.no_push
team modify beyond.no_push collisionRule never

## Misc
execute store result score $beyond.difficulty beyond.dummy_1 run difficulty
forceload add 0 0