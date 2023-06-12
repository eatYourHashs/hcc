scoreboard players add $cast.temp hcc.dummy 1
execute if entity @e[dx=0,dy=0,dz=0,distance=..5,tag=hcc.target] run function hcc:entity/falcon/get_target
execute unless score $cast.temp hcc.dummy matches 200.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hcc:not_solid run function hcc:entity/falcon/sight_cast