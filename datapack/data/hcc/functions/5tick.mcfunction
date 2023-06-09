execute as @a at @s run function hcc:entity/player/5tick
execute as @e[tag=hcc.5ticking] at @s run function hcc:entity/all/5tick
schedule function hcc:5tick 5t replace
