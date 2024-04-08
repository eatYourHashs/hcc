execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/charge_anim
tag @s add hcc.charge
tag @s remove hcc.init_charge
tag @s remove hcc.idle
tag @s remove hcc.alert
scoreboard players set @s hcc.dummy 0
scoreboard players set @s hcc.dummy2 0