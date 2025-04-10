# 특수 아이템 전용 tick
# isGameStarted(게임 시작 변수)가 1 일 경우에만 실행되는 tick임. 만약 그걸 원하지 않는다면 rw:tick을 쓰도록



# 아이템
#1
function jobs:1wolfcage/1_main
#2
function jobs:2shulker/2_main
#3
function jobs:3okarina/3_main
#4
function jobs:4wolfhorn/4_main
#5
function jobs:5earmuffler/5_main
#6
function jobs:6mosquito/6_main
#7
function jobs:7invpill/7_main
#8
function jobs:8camera/8_main
#9
function jobs:9upgradesword/9_main
#10
function jobs:10turtlepill/10_main
#11
function jobs:11chargestick/11_main
#12
function jobs:12electric/12_main
#13
execute if score timer timerIndicateMode matches 0 as @a[scores={alreadyFactor=10},tag=participating] run function jobs:13doomhorn/13_job_main
function jobs:13doomhorn/13_main

# 틱에 따른 반복문
#1 X
#2 X
#3
execute if score 3tick specialTick matches 1.. run function jobs:3okarina/3_dancing
#4
execute if score 4tick specialTick matches 1.. run function jobs:4wolfhorn/4_cooldown
#8
execute if score 8tick specialTick matches 1.. run function jobs:8camera/8_shutter


# 특정 조건에 따른 반복문
#1 X
#2
execute as @a[tag=itemUsed2Using] run function jobs:2shulker/2_using
execute as @a[nbt={OnGround:0b},tag=!itemUsed2Using] store result score @s 2_fallenBlocksB run data get entity @s fall_distance 1
execute as @a[nbt={OnGround:1b},tag=!itemUsed2Using] run scoreboard players set @s 2_fallenBlocksB 0
#3 X