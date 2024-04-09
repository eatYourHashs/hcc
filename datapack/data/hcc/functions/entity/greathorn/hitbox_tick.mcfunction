scoreboard players add @s hcc.dummy 1

execute store result score $temp hcc.dummy run data get entity @s Health 1
scoreboard players remove $temp hcc.dummy 100

execute if score @s hcc.target_uuid1 matches 1.. at @a[gamemode=!spectator,gamemode=!creative,scores={hcc.uuid1=1..}] if score @p hcc.uuid1 = @s hcc.target_uuid1 run tag @p add hcc.target
execute if score @s hcc.target_uuid1 matches ..-1 at @a[gamemode=!spectator,gamemode=!creative,scores={hcc.uuid1=..-1}] if score @p hcc.uuid1 = @s hcc.target_uuid1 run tag @p add hcc.target

execute if score @s[tag=hcc.idle] hcc.dummy matches 240.. if entity @a[distance=..24,gamemode=!spectator,gamemode=!creative] positioned ~ ~3 ~ facing entity @p[distance=..24,gamemode=!spectator,gamemode=!creative] feet run function hcc:entity/greathorn/attempt_detect

execute if entity @s[tag=hcc.alert] run function hcc:entity/greathorn/alert_tick
execute if score @s[tag=hcc.alert] hcc.dummy matches 120.. run function hcc:entity/greathorn/idle

execute if entity @s[tag=hcc.target_roar] run function hcc:entity/greathorn/target_roar_tick
execute if score @s[tag=hcc.target_roar] hcc.dummy matches 60.. run function hcc:entity/greathorn/idle

execute if entity @s[tag=hcc.walk] run function hcc:entity/greathorn/walk_tick
execute if score @s[tag=hcc.walk] hcc.dummy matches 40.. run function hcc:entity/greathorn/idle

execute if entity @s[tag=hcc.bash] run function hcc:entity/greathorn/bash_tick
execute if score @s[tag=hcc.bash] hcc.dummy matches 80.. run function hcc:entity/greathorn/idle

execute if entity @s[tag=hcc.attack_roar] run function hcc:entity/greathorn/attack_roar_tick
execute if score @s[tag=hcc.attack_roar] hcc.dummy matches 60.. run function hcc:entity/greathorn/idle

execute if entity @s[tag=hcc.init_charge] run function hcc:entity/greathorn/init_charge_tick
execute if score @s[tag=hcc.init_charge] hcc.dummy matches 50.. run function hcc:entity/greathorn/charge

execute if entity @s[tag=hcc.charge] run function hcc:entity/greathorn/charge_tick

execute if entity @s[tag=hcc.end_charge] run function hcc:entity/greathorn/end_charge_tick
execute if score @s[tag=hcc.end_charge] hcc.dummy matches 20.. run function hcc:entity/greathorn/idle

tp @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s[tag=hcc.bossbar] run function hcc:entity/greathorn/update_bossbar
execute if score $temp hcc.dummy matches ..0 if entity @s[tag=!hcc.dying] run function hcc:entity/greathorn/die
execute if score @s[tag=hcc.dying] hcc.dummy matches 70.. run function hcc:entity/greathorn/kill

execute if entity @s[nbt={HurtTime:9s}] run function hcc:entity/greathorn/hurt

tag @a remove hcc.target