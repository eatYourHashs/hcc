particle minecraft:crit ~ ~1.5 ~ 1.8 1.4 1.8 0.9 40
particle minecraft:dust_pillar snow ~ ~1.8 ~ 1 1 1 0.3 20
execute if entity @a[tag=hcc.target,distance=..16] run tag @s add hcc.near
execute if entity @s[tag=hcc.near] unless entity @a[tag=hcc.target,distance=..16] run function hcc:entity/greathorn/end_charge
execute if score @s hcc.dummy matches 100.. run function hcc:entity/greathorn/end_charge
scoreboard players set $temp.x hcc.dummy 0
scoreboard players set $temp.y hcc.dummy 1
scoreboard players set $temp.z hcc.dummy 1
tp ^ ^ ^0.3
execute positioned ~ ~1 ~ as @a[distance=..4,gamemode=!spectator,gamemode=!creative] run damage @s 10 minecraft:mob_attack by @e[type=ravager,tag=hcc.greathorn_hitbox,limit=1,sort=nearest]
execute positioned ~-1.5 ~0.5 ~-1.5 run function hcc:entity/greathorn/charge_block_check
#execute at @s if blocks ~-1.5 ~-1 ~-1.5 ~1.5 ~-1 ~1.5 ~ 254 ~ all run tp @s ~ ~-1 ~
scoreboard players add @s hcc.dummy2 1
execute if score @s hcc.dummy2 matches 9.. run playsound minecraft:entity.goat.step hostile @a ~ ~ ~ 2 0.5
execute if score @s hcc.dummy2 matches 9.. run scoreboard players set @s hcc.dummy2 0