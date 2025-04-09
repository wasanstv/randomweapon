# 초 -> 분
execute if score timer timerSec matches -1 run scoreboard players remove timer timerMin 1
execute if score timer timerSec matches -1 run scoreboard players set timer timerSec 59

# 틱 -> 초
execute if score timer timerTick matches ..19 run scoreboard players add timer timerTick 1
execute if score timer timerSec matches 0.. if score timer timerTick matches 20.. run scoreboard players remove timer timerSec 1
execute if score timer timerTick matches 20.. run scoreboard players set timer timerTick 0
execute if score timer timerIndicator matches 1.. run scoreboard players remove timer timerIndicator 1

# 엔드포맷에 따른 분기점 (분 단위 처리)
# 현재 엔드포멧보다 나중에 실행될 엔드포멧은 더 위에 둬야함(서순 주의)
# 0: 기본값, 타이머 초기화 후 종료 선언
execute if score timer timerEndFormat matches 0 if score timer timerMin matches -1 run function rw:timer/timer_default_trans

# 2: 데스매치 종료, "종말" 돌입
execute if score timer timerEndFormat matches 2 if score timer timerMin matches -1 run function rw:timer/timer_end_trans

# 1: 데스매치 돌입
execute if score timer timerEndFormat matches 1 if score timer timerMin matches -1 run function rw:timer/timer_deathmatch_trans

