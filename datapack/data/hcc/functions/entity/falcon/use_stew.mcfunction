advancement revoke @s only hcc:technical/tame_falcon
tag @s add hcc.stew_user
execute positioned ^ ^ ^2 as @e[tag=hcc.falcon,distance=..5,sort=nearest,limit=1] at @s run function hcc:entity/falcon/receive_stew
tag @s remove hcc.stew_user