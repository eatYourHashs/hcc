execute unless entity @s[tag=hcc.processed] run function hcc:entity/player/processing
scoreboard players add @s hcc.spawning_timer 1
execute if score @s hcc.spawning_timer matches 1200.. run function hcc:entity/player/spawning_round