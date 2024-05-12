tag @s add hcc.user
execute as @e[type=!#hcc:never_targetted,distance=..4.5,tag=!hcc.user] run damage @s 1 hcc:greathorn_roar by @p[tag=hcc.user]
particle minecraft:crit ~ ~1 ~ 1.5 1.5 1.5 0.5 20
tag @s remove hcc.user