execute as @a at @s run function hcc:entity/player/20tick
execute as @e[tag=hcc.20ticking] at @s run function hcc:entity/all/20tick
schedule function hcc:20tick 20t replace
