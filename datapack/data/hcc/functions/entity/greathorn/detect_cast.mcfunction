scoreboard players add $cast.temp hcc.dummy 1
execute if entity @a[dx=0,dy=0,dz=0,distance=..5,gamemode=!spectator,gamemode=!creative] run function hcc:entity/greathorn/detect_target
execute unless score $cast.temp hcc.dummy matches 120.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hcc:not_solid run function hcc:entity/greathorn/detect_cast