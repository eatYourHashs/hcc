execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/idle_anim
tag @s add hcc.idle
tag @s remove hcc.target_roar
tag @s remove hcc.alert
scoreboard players set @s hcc.dummy 0
scoreboard players reset @s hcc.target_uuid1