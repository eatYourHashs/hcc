execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/roar_anim
tag @s remove hcc.idle
tag @s remove hcc.walk
tag @s remove hcc.bash
tag @s remove hcc.alert
tag @s remove hcc.attack_roar
tag @s add hcc.target_roar
scoreboard players set @s hcc.dummy 0
execute facing entity @p[tag=hcc.target] feet run tp @s ~ ~ ~ ~ 0