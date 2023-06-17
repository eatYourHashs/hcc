tag @p[dx=0,dy=0,dz=0,distance=..5,gamemode=!spectator] add hcc.target
execute store result score @s hcc.target_uuid1 run data get entity @p[tag=hcc.target] UUID[0]
execute store result score @p[tag=hcc.target] hcc.uuid1 run data get entity @p[tag=hcc.target] UUID[0]
scoreboard players set $cast.temp hcc.dummy 121
execute at @s run function hcc:entity/greathorn/target_roar
tag @a remove hcc.target