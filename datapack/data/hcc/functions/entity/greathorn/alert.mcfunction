execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/alert_anim
tag @s add hcc.alert
tag @s remove hcc.idle
scoreboard players set @s hcc.dummy 0