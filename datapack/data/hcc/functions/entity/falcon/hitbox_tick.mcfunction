scoreboard players add @s hcc.dummy 1

execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking] positioned over world_surface positioned ~ ~30 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~15 ~ if entity @s[distance=..15] at @s if block ~ ~1 ~ #hcc:not_solid_liquids if block ~ ~2 ~ #hcc:not_solid_liquids run tp ~ ~0.1 ~
execute if entity @s[tag=hcc.rising] positioned over world_surface positioned ~ ~30 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~15 ~ if entity @s[distance=..15] at @s if block ~ ~1 ~ #hcc:not_solid_liquids if block ~ ~2 ~ #hcc:not_solid_liquids run tp ~ ~0.4 ~
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking] positioned over world_surface positioned ~ ~30 ~ if entity @s[distance=3..] positioned over world_surface positioned ~ ~15 ~ unless entity @s[distance=..15] at @s if block ~ ~-1 ~ #hcc:not_solid if block ~ ~-2 ~ #hcc:not_solid run tp ~ ~-0.1 ~
execute if entity @s[tag=hcc.rising] positioned over world_surface positioned ~ ~30 ~ if entity @s[distance=..3] run function hcc:entity/falcon/idle

execute if entity @s[tag=hcc.left,tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising,tag=!hcc.targetting] at @s run tp @s ~ ~ ~ ~-2 ~
execute if entity @s[tag=hcc.right,tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising,tag=!hcc.targetting] at @s run tp @s ~ ~ ~ ~2 ~
execute at @s unless block ^ ^ ^1 #hcc:not_solid_liquids run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] at @s run tp @s ^ ^ ^0.5

scoreboard players operation $temp hcc.uuid1 = @s hcc.target_uuid1
execute if score @s hcc.target_uuid1 matches 1.. as @e[type=!#hcc:never_targetted] if score @s hcc.uuid1 = $temp hcc.uuid1 run tag @s add hcc.attack_target
execute if score @s hcc.target_uuid1 matches ..-1 as @e[type=!#hcc:never_targetted] if score @s hcc.uuid1 = $temp hcc.uuid1 run tag @s add hcc.attack_target

execute if entity @s[tag=hcc.diving] unless entity @e[type=!#hcc:never_targetted,tag=hcc.attack_target] run scoreboard players set @s hcc.dummy 151

execute if score @s hcc.dummy matches 1..40 if entity @s[tag=hcc.diving] facing entity @e[type=!#hcc:never_targetted,tag=hcc.attack_target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] facing entity @e[type=!#hcc:never_targetted,tag=hcc.attack_target,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.25 ~ ~
execute at @s if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] if entity @e[tag=hcc.attack_target,type=!#hcc:never_targetted,distance=..10,dx=0,dy=0,dz=0] run function hcc:entity/falcon/attack
execute if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] at @s run tp @s ^ ^ ^0.25 ~ ~
execute at @s if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] if entity @e[tag=hcc.attack_target,type=!#hcc:never_targetted,distance=..10,dx=0,dy=0,dz=0] run function hcc:entity/falcon/attack
execute if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] at @s run tp @s ^ ^ ^0.25 ~ ~
execute at @s if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] if entity @e[tag=hcc.attack_target,type=!#hcc:never_targetted,distance=..10,dx=0,dy=0,dz=0] run function hcc:entity/falcon/attack
execute if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] at @s run tp @s ^ ^ ^0.25 ~ ~
execute at @s if score @s hcc.dummy matches 41..150 if entity @s[tag=hcc.diving] if entity @e[tag=hcc.attack_target,type=!#hcc:never_targetted,distance=..10,dx=0,dy=0,dz=0] run function hcc:entity/falcon/attack

execute if score @s hcc.dummy matches 40 if entity @s[tag=hcc.diving] run function hcc:entity/falcon/dive
execute if score @s hcc.dummy matches 60.. if entity @s[tag=hcc.attacking] run function hcc:entity/falcon/rise
execute if score @s hcc.dummy matches 151.. if entity @s[tag=hcc.diving] run function hcc:entity/falcon/rise

tag @e[type=!#hcc:never_targetted] remove hcc.attack_target

execute if entity @s[tag=hcc.brown_falcon] run tp @e[limit=1,type=item_display,tag=hcc.falcon_model,tag=hcc.brown_falcon,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[tag=hcc.grey_falcon] run tp @e[limit=1,type=item_display,tag=hcc.falcon_model,tag=hcc.grey_falcon,sort=nearest] ~ ~ ~ ~ ~
scoreboard players remove @s hcc.dummy2 1

execute if entity @s[nbt={HurtTime:9s}] run function hcc:entity/falcon/hurt