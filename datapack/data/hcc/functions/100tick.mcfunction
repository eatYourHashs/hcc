execute as @a at @s run function hcc:entity/player/100tick
execute as @e[tag=hcc.100ticking] at @s run function hcc:entity/all/100tick
schedule function hcc:100tick 100t replace
