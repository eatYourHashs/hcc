scoreboard players set $math.in_0 hcc.dummy 10
function hcc:utils/random
execute if score $math.out_0 hcc.dummy matches ..6 run function hcc:entity/greathorn/bash
execute if score $math.out_0 hcc.dummy matches 7.. run function hcc:entity/greathorn/attack_roar