tag @s remove hcc.left
tag @s remove hcc.right
scoreboard players set $math.in_0 hcc.dummy 10
function hcc:utils/random
execute if score $math.out_0 hcc.dummy matches 2..5 run tag @s add hcc.left
execute if score $math.out_0 hcc.dummy matches 6..9 run tag @s add hcc.right

#scoreboard players set $math.in_0 hcc.dummy 10
#function hcc:utils/random
scoreboard players set $cast.temp hcc.dummy 0
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] unless entity @s[tag=hcc.tamed] if score @s hcc.dummy2 matches ..0 positioned over world_surface as @e[distance=..10,type=#hcc:hunted_by_falcons,tag=!smithed.entity,limit=1,sort=random] unless entity @e[distance=..20,type=#hcc:scares_falcons,tag=!smithed.block] run tag @s add hcc.target
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] on attacker run tag @s add hcc.target
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] if entity @s[tag=hcc.tamed] at @a if score @p hcc.uuid1 = @s hcc.tamer_uuid1 as @p on attacker run tag @s add hcc.target
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] if entity @s[tag=hcc.tamed] at @a if score @p hcc.uuid1 = @s hcc.tamer_uuid1 as @p on target run tag @s add hcc.target
execute if entity @s[tag=!hcc.diving,tag=!hcc.attacking,tag=!hcc.rising] facing entity @e[type=!#hcc:never_targetted,tag=hcc.target,sort=random,limit=1] feet run function hcc:entity/falcon/sight_cast
tag @e[type=!#hcc:never_targetted,tag=hcc.target] remove hcc.target