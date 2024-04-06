execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/bash_anim
tag @s remove hcc.idle
tag @s add hcc.bash
tag @s remove hcc.alert
scoreboard players set @s hcc.dummy 0