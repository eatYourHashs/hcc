execute if score @s hcc.dummy matches ..28 facing entity @p[tag=hcc.target] feet run tp @s ~ ~ ~ ~ 0
execute if score @s hcc.dummy matches 1 run playsound hcc:entity.greathorn.pre_bash hostile @a ~ ~ ~ 2 1
execute if score @s hcc.dummy matches 30 run playsound hcc:entity.greathorn.bash hostile @a ~ ~ ~ 2 1
execute if score @s hcc.dummy matches 28..31 run particle crit ^ ^0.8 ^3.5 0.5 1 0.5 0.5 30
execute if score @s hcc.dummy matches 28..31 positioned ^ ^-0.5 ^0.5 as @a[distance=..3,gamemode=!spectator,gamemode=!creative] run damage @s 10 minecraft:mob_attack by @e[type=ravager,tag=hcc.greathorn_hitbox,limit=1,sort=nearest]
execute if score @s hcc.dummy matches 32 run particle minecraft:dust_pillar snow ^ ^1.8 ^3.5 1 1 1 0.3 80
execute if score @s hcc.dummy matches 32..35 run particle crit ^ ^1.8 ^3.5 1 1.5 1 0.5 30
execute if score @s hcc.dummy matches 32..35 positioned ^ ^1.5 ^3.5 as @a[distance=..3,gamemode=!spectator,gamemode=!creative] run damage @s 10 minecraft:mob_attack by @e[type=ravager,tag=hcc.greathorn_hitbox,limit=1,sort=nearest]