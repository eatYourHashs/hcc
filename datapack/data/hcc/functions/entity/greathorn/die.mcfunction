execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/die_anim
tag @s remove hcc.idle
tag @s remove hcc.alert
tag @s remove hcc.target_roar
tag @s remove hcc.walk
tag @s remove hcc.bash
tag @s remove hcc.attack_roar
tag @s remove hcc.init_charge
tag @s remove hcc.charge
tag @s add hcc.dying
scoreboard players set @s hcc.dummy 0
effect give @s resistance 100 4 true
playsound hcc:entity.greathorn.death hostile @a ~ ~ ~ 2 1