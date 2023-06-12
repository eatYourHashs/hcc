execute as @e[limit=1,type=item_display,tag=hcc.falcon_model,sort=nearest] run function hcc:entity/falcon/rise_anim
tag @s add hcc.rising
tag @s remove hcc.diving
tag @s remove hcc.attacking
scoreboard players set @s hcc.dummy 0
scoreboard players reset @s hcc.target_uuid1