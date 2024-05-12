scoreboard players set $math.in_0 hcc.dummy 10
execute store result score $math.out_0 hcc.dummy run random value 1..9
execute if score $math.out_0 hcc.dummy matches ..7 run function hcc:entity/greathorn/init_walk
execute if score $math.out_0 hcc.dummy matches 8.. run function hcc:entity/greathorn/init_charge