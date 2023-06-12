execute as @e[limit=1,type=item_display,tag=hcc.falcon_model,sort=nearest] run function hcc:entity/falcon/idle_anim
tag @s remove hcc.rising
tag @s remove hcc.diving
tag @s remove hcc.attacking
scoreboard players reset @s hcc.target_uuid1
execute at @s run tp @s ~ ~ ~ ~ 0