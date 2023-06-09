tag @s remove hcc.left
tag @s remove hcc.right
scoreboard players set $math.in_0 hcc.dummy 10
function hcc:utils/random
execute if score $math.out_0 hcc.dummy matches 2..5 run tag @s add hcc.left
execute if score $math.out_0 hcc.dummy matches 6..9 run tag @s add hcc.right