execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/end_charge_anim
tag @s add hcc.end_charge
tag @s remove hcc.idle
tag @s remove hcc.alert
tag @s remove hcc.charge
tag @s remove hcc.near
scoreboard players set @s hcc.dummy 0
scoreboard players set $temp.z hcc.dummy 5
playsound hcc:entity.greathorn.post_charge hostile @a ~ ~ ~ 2 1