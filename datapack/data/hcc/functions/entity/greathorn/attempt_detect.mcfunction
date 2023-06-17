scoreboard players set $cast.temp hcc.dummy 0
function hcc:entity/greathorn/detect_cast
execute if score $cast.temp hcc.dummy matches ..123 run function hcc:entity/greathorn/alert
