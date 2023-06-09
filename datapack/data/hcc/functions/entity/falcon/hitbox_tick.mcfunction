execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking] positioned over motion_blocking_no_leaves positioned ~ ~30 ~ if entity @s[distance=3..] positioned over motion_blocking_no_leaves positioned ~ ~15 ~ if entity @s[distance=..15] at @s run tp ~ ~0.1 ~
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking] positioned over motion_blocking_no_leaves positioned ~ ~30 ~ if entity @s[distance=3..] positioned over motion_blocking_no_leaves positioned ~ ~15 ~ unless entity @s[distance=..15] at @s run tp ~ ~-0.1 ~
execute if entity @s[tag=hcc.rising] positioned over motion_blocking_no_leaves positioned ~ ~30 ~ if entity @s[distance=..3] run function hcc:entity/falcon/idle

execute if entity @s[tag=hcc.left,tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising,tag=!hcc.targetting] at @s run tp @s ~ ~ ~ ~-2 ~
execute if entity @s[tag=hcc.right,tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising,tag=!hcc.targetting] at @s run tp @s ~ ~ ~ ~2 ~
execute at @s unless block ^ ^ ^1 #hcc:not_solid_liquids run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] at @s run tp @s ^ ^ ^0.5


execute if entity @s[tag=hcc.brown_falcon] run tp @e[limit=1,type=item_display,tag=hcc.falcon_model,tag=hcc.brown_falcon,sort=nearest] ~ ~ ~ ~ ~