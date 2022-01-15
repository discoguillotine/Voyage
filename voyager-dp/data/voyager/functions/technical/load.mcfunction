## Dummies
scoreboard objectives add voyager.dummy_1 dummy
scoreboard objectives add voyager.dummy_2 dummy
scoreboard objectives add voyager.dummy_3 dummy
scoreboard objectives add voyager.entity_1 dummy
scoreboard objectives add voyager.entity_2 dummy
scoreboard objectives add voyager.entity_3 dummy

## Entity stuff
scoreboard objectives add voyager.hurt dummy

## Player
scoreboard objectives add voyager.health health
scoreboard objectives add voyager.coas minecraft.used:minecraft.carrot_on_a_stick

## Damage Library
scoreboard objectives add voyager.damage dummy
scoreboard objectives add voyager.damage dummy
scoreboard players set #4 voyager.damage 4
scoreboard players set #5 voyager.damage 5
scoreboard players set #8 voyager.damage 8
scoreboard players set #10 voyager.damage 10
scoreboard players set #20 voyager.damage 20
scoreboard players set #25 voyager.damage 25
scoreboard players set #80 voyager.damage 80
scoreboard players set #100 voyager.damage 100
scoreboard players set #200 voyager.damage 200
scoreboard players set #250 voyager.damage 250
scoreboard players set #2000 voyager.damage 2000
scoreboard players set #2500 voyager.damage 2500

## Teams
team add smithed.prevent_aggression
team add voyager.no_push
team modify voyager.no_push collisionRule never

## Misc
execute store result score $voyager.difficulty voyager.dummy_1 run difficulty
forceload add 0 0