scoreboard players add $temp.x hcc.dummy 1
execute if score $temp.x hcc.dummy matches 4.. run scoreboard players add $temp.y hcc.dummy 1
execute if score $temp.x hcc.dummy matches 4.. run scoreboard players set $temp.x hcc.dummy 0
execute if score $temp.y hcc.dummy matches 4.. run scoreboard players add $temp.z hcc.dummy 1
execute if score $temp.y hcc.dummy matches 4.. run scoreboard players set $temp.y hcc.dummy 0
execute unless block ~ ~ ~ #hcc:too_hard run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #hcc:too_hard at @s run function hcc:entity/greathorn/end_charge
execute if score $temp.x hcc.dummy matches 1.. positioned ~1 ~ ~ run function hcc:entity/greathorn/charge_block_check
execute if score $temp.x hcc.dummy matches 0 if score $temp.y hcc.dummy matches 1.. positioned ~-3 ~1 ~ run function hcc:entity/greathorn/charge_block_check
execute if score $temp.y hcc.dummy matches 0 if score $temp.z hcc.dummy matches 1..4 positioned ~-3 ~-3 ~1 run function hcc:entity/greathorn/charge_block_check