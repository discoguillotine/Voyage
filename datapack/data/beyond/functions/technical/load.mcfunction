scoreboard objectives add beyond.dummy_1 dummy
scoreboard objectives add beyond.dummy_2 dummy
scoreboard objectives add beyond.dummy_3 dummy

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

team add beyond.antivil
execute if score tcc.server_version tcc.dummy matches 50.. run scoreboard players set $beyond.tcc pht.dummy 1

execute store result score $beyond.difficulty beyond.dummy_1 run difficulty