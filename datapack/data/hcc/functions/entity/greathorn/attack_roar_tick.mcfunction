execute if score @s hcc.dummy matches 1 run playsound minecraft:entity.goat.step hostile @a ~ ~ ~ 2 0.5
execute if score @s hcc.dummy matches 16 run playsound hcc:entity.greathorn.roar hostile @a ~ ~ ~ 2 1
execute if score @s hcc.dummy matches 20..30 as @a[distance=..6,gamemode=!spectator] run damage @s 1 hcc:greathorn_roar by @e[type=ravager,tag=hcc.greathorn_hitbox,limit=1,sort=nearest]
execute if score @s hcc.dummy matches 20 run particle minecraft:crit ~ ~1.5 ~ 1 1 1 0.5 60
execute if score @s hcc.dummy matches 22 run particle minecraft:crit ~ ~1.5 ~ 1.4 1.2 1.2 0.7 60
execute if score @s hcc.dummy matches 24..30 run particle minecraft:crit ~ ~1.5 ~ 1.8 1.4 1.4 0.9 40