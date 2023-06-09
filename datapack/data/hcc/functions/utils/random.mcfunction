# pRNG function by ImCoolYeah105

## $math.in_0: max output value (0-100,000,000)
#> $math.out_0: generated random number

#LCG
scoreboard players operation $math.rng_seed hcc.dummy *= $cons.rng_a hcc.dummy
scoreboard players add $math.rng_seed hcc.dummy 12345

#output
scoreboard players operation $math.out_0 hcc.dummy = $math.rng_seed hcc.dummy
scoreboard players operation $math.out_0 hcc.dummy /= $cons.16 hcc.dummy
scoreboard players operation $math.out_0 hcc.dummy %= $math.in_0 hcc.dummy
execute if score $math.out_0 hcc.dummy matches ..-1 run scoreboard players operation $math.out_0 hcc.dummy *= $cons.-1 hcc.dummy

#check for 0 range
execute if score $math.in_0 hcc.dummy matches 0 run scoreboard players set $math.out_0 hcc.dummy 0
