execute as @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] run function hcc:entity/greathorn/alert_anim
tag @s add hcc.alert
tag @s remove hcc.idle
tag @s remove hcc.target_roar
tag @s remove hcc.attack_roar
tag @s remove hcc.charge
tag @s remove hcc.init_charge
tag @s remove hcc.end_charge
tag @s remove hcc.walk
tag @s remove hcc.bash
scoreboard players set @s hcc.dummy 0
scoreboard players reset @s hcc.target_uuid1
tag @a remove hcc.target
execute at @s facing entity @p[gamemode=!spectator,distance=..32] feet run tp @s ~ ~ ~ ~ 0