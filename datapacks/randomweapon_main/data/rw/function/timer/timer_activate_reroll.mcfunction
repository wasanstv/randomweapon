# 초 -> 분
execute if score retimer timerSec matches -1 run scoreboard players remove retimer timerMin 1
execute if score retimer timerSec matches -1 run scoreboard players set retimer timerSec 59

# 틱 -> 초
execute if score retimer timerTick matches ..19 run scoreboard players add retimer timerTick 1
execute if score retimer timerSec matches 0.. if score retimer timerTick matches 20.. run scoreboard players remove retimer timerSec 1
execute if score retimer timerTick matches 20.. run scoreboard players set retimer timerTick 0
execute if score retimer timerIndicator matches 1.. run scoreboard players remove retimer timerIndicator 1

# 엔드포맷에 따른 분기점 (분 단위 처리)
# 0: 기본값, 타이머 초기화 후 종료 선언
execute if score retimer timerEndFormat matches 0 if score retimer timerMin matches -1 run tellraw @a {"text":"타이머가 종료되었습니다!","color":"green"}
execute if score retimer timerEndFormat matches 0 if score retimer timerMin matches -1 run scoreboard players set retimer timerImmStart 0
execute if score retimer timerEndFormat matches 0 if score retimer timerMin matches -1 run scoreboard players set retimer istimerOn 0

# 1: 지급
execute if score retimer timerEndFormat matches 1 if score retimer timerMin matches -1 run function rw:timer/timer_rerolling