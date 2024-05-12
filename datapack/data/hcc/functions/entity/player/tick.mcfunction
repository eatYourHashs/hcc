execute unless entity @s[tag=hcc.processed] run function hcc:entity/player/processing
scoreboard players add @s hcc.spawning_timer 1
execute if score @s hcc.spawning_timer matches 1200.. run function hcc:entity/player/spawning_round
execute if score @s hcc.wfstick matches 1.. run function hcc:entity/player/wfstick
execute if score @s hcc.war_horn_timer matches 30.. run function hcc:item/bestial_war_horn/use_tick
scoreboard players remove @s hcc.war_horn_timer 1