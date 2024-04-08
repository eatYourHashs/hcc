execute if score @s hcc.dummy matches 1 run attribute @s minecraft:generic.follow_range base set 24
execute if score @s hcc.dummy matches 1 run attribute @s minecraft:generic.movement_speed base set 0.4
execute if score @s hcc.dummy matches 8 run playsound minecraft:entity.goat.step hostile @a ~ ~ ~ 2 0.5
execute if score @s hcc.dummy matches 23 run playsound minecraft:entity.goat.step hostile @a ~ ~ ~ 2 0.5
execute if score @s hcc.dummy matches 40 run attribute @s minecraft:generic.follow_range base set 0
execute if score @s hcc.dummy matches 40 run attribute @s minecraft:generic.movement_speed base set 0