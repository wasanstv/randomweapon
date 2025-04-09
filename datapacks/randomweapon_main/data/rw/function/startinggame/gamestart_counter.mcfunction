# 시간 표시
execute if score time2 startTimerTick matches 61 run title @a times 0 20 10
execute if score time2 startTimerTick matches 61 run title @a title {"text":"3","bold":true,"color":"green"}
execute if score time2 startTimerTick matches 41 run title @a title {"text":"2","bold":true,"color":"yellow"}
execute if score time2 startTimerTick matches 21 run title @a title {"text":"1","bold":true,"color":"red"}
execute if score time2 startTimerTick matches 1 run title @a title {"text":"시작!","bold":true,"color":"#25881c"}

# 사운드 이펙트 실행 (관전자 포함 모든 플레이어)
execute as @a at @s if score time2 startTimerTick matches 61 run playsound block.note_block.pling block @s ~ ~ ~ 2 1
execute as @a at @s if score time2 startTimerTick matches 41 run playsound block.note_block.pling block @s ~ ~ ~ 2 1
execute as @a at @s if score time2 startTimerTick matches 21 run playsound block.note_block.pling block @s ~ ~ ~ 2 1
execute as @a at @s if score time2 startTimerTick matches 1 run playsound block.note_block.pling block @s ~ ~ ~ 2 2

# 멈추는 이펙트 벗기기
execute if score time2 startTimerTick matches 1 run effect clear @a
execute as @a if score time2 startTimerTick matches 1 run attribute @s jump_strength modifier remove c_effect:no_jump

# 반복문 카운터 줄이기
scoreboard players remove time2 startTimerTick 1

# 카운터 종료 후 gamestart_aftercounter 실행
execute if score time2 startTimerTick matches ..0 if score game isGameStarted matches 1.. run function rw:startinggame/gamestart_aftercounter