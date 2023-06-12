execute as @e[limit=1,type=item_display,tag=hcc.falcon_model,sort=nearest] run function hcc:entity/falcon/attack_anim
tag @s remove hcc.rising
tag @s remove hcc.diving
tag @s add hcc.attacking
scoreboard players set @s hcc.dummy 0
damage @e[tag=hcc.attack_target,sort=nearest,limit=1] 10 minecraft:mob_attack by @s
scoreboard players set @s hcc.dummy2 3600
execute at @s run tp @s ~ ~0.5 ~
scoreboard players reset @s hcc.target_uuid1