execute as @e[limit=1,type=item_display,tag=hcc.falcon_model,sort=nearest] run function hcc:entity/falcon/prep_dive_anim
tag @s remove hcc.rising
tag @s add hcc.diving
tag @s remove hcc.attacking
scoreboard players set @s hcc.dummy 0