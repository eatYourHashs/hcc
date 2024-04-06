execute if score @s hcc.target_uuid1 matches 1.. at @a[gamemode=!spectator,scores={hcc.uuid1=1..}] if score @p hcc.uuid1 = @s hcc.target_uuid1 run tag @p add hcc.target
execute if score @s hcc.target_uuid1 matches ..-1 at @a[gamemode=!spectator,scores={hcc.uuid1=..-1}] if score @p hcc.uuid1 = @s hcc.target_uuid1 run tag @p add hcc.target
execute if entity @s[tag=hcc.idle] if entity @p[tag=hcc.target,distance=24..] positioned ~ ~3 ~ run function hcc:entity/greathorn/attempt_detect
execute if entity @s[tag=hcc.idle] if entity @p[tag=hcc.target,distance=5..24] run function hcc:entity/greathorn/choose_action
execute if entity @s[tag=hcc.idle] if entity @p[tag=hcc.target,distance=..5] run function hcc:entity/greathorn/choose_action_melee
execute unless score @s hcc.target_uuid1 matches 1.. unless score @s hcc.target_uuid1 matches ..-1 if entity @a[distance=..24,gamemode=!spectator] positioned ~ ~3 ~ facing entity @r[distance=..24,gamemode=!spectator] feet run function hcc:entity/greathorn/attempt_target
tag @a remove hcc.target