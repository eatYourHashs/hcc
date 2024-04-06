execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/walk_anim
tag @s add hcc.walk
tag @s remove hcc.idle
tag @s remove hcc.alert
scoreboard players set @s hcc.dummy 0