execute store result score @s hcc.target_uuid1 run data get entity @e[tag=hcc.target,limit=1] UUID[0]
execute store result score @e[tag=hcc.target,limit=1] hcc.uuid1 run data get entity @e[tag=hcc.target,limit=1] UUID[0]
scoreboard players set $cast.temp hcc.dummy 201
function hcc:entity/falcon/prep_dive