bossbar set hcc:greathorn players @a[distance=..24]
execute unless entity @a[distance=..24] run function hcc:entity/greathorn/end_bossbar
execute store result bossbar hcc:greathorn value run scoreboard players get $temp hcc.dummy