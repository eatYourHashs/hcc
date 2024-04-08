execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/init_charge_anim
tag @s add hcc.init_charge
tag @s remove hcc.idle
tag @s remove hcc.alert
scoreboard players set @s hcc.dummy 0
execute facing entity @p[tag=hcc.target] feet run tp @s ~ ~ ~ ~ 0
playsound hcc:entity.greathorn.pre_charge hostile @a ~ ~ ~ 2 1