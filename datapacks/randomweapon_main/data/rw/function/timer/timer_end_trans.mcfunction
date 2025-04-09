# 종말 돌입 함수
execute as @a at @s run playsound block.bell.use block @s ~ ~ ~ 1 0.5
title @a times 0 30 10
tellraw @a {"text":"종말이 다가오는 소리가 들립니다...","color":"#200520"}
tag @a[tag=participating] add endDamage
scoreboard players set endtimer timerTick 0
scoreboard players set timer timerImmStart 0
scoreboard players set timer timerFormat 0
scoreboard players set timer timerIndicateMode 2
scoreboard players set timer istimerOn 0