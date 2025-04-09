# 타이머 리셋 함수. istimerOn이 0으로 설정되었을 경우 즉시 실행됨
# reload 시 타이머 포멧 0, 즉시 타이머 실행 0, 타이머 모드 1인 상태로 타이머가 초기화 될 것임.

# 타이머 포멧 기본값: 0 (reload할 때 0으로 설정됨)
# timerImmStart 기본값: 0 (reload할 때 0으로 설정됨)

# istimerOn 0으로 설정할 시(리셋할 시), 적절한 타이머, 엔드 포멧과 타이머 실행 여부, 타이머 모드를 앞에 적어주는 것을 권장함 (따르지 않을 시 오류 발생 가능)
# 타이머가 표시되게끔 하려면, 직접 보스바를 건들여서 켜주어야 함.
# 예시)
# scoreboard players set timer timerImmStart 1
# scoreboard players set timer timerFormat 0
# scoreboard players set timer timerEndFormat 0
# scoreboard players set timer timerIndicateMode 0
# scoreboard players set timer istimerOn 0
# bossbar set rw:timer players @a 
# -> 타이머 포멧 1을 타이머에 적용시킨 다음, 즉시 타이머 실행, 표시되는 타이머 모드는 '기본 모드', 그리고 보스바 표시


# 타이머 포멧(timerFormat) 0: 기본 타이머 설정 (초, 분, 틱단위) - 기본모드 타이머
execute if score timer timerFormat matches 0 run scoreboard players set timer timerSec 0
execute if score timer timerFormat matches 0 run scoreboard players set timer timerMin 3
execute if score timer timerFormat matches 0 run scoreboard players set timer timerIndicator 3600

# 타이머 포멧(timerFormat) 1: 기본 타이머 설정 (초, 분, 틱단위) - 데스매치 타이머
execute if score timer timerFormat matches 1 run scoreboard players set timer timerSec 30
execute if score timer timerFormat matches 1 run scoreboard players set timer timerMin 1
execute if score timer timerFormat matches 1 run scoreboard players set timer timerIndicator 1800

# 틱 초기화
scoreboard players set timer timerTick 20

# 보스바 최대값 정상화
execute store result bossbar rw:timer max run scoreboard players get timer timerIndicator

# 즉시 타이머 실행(timerImmStart) 0: 초기화 함수 종료
execute if score timer timerImmStart matches 0 run scoreboard players set timer istimerOn 2

# 즉시 타이머 실행(timerImmStart) 1: 초기화 후 타이머 즉시 실행
execute if score timer timerImmStart matches 1 run scoreboard players set timer istimerOn 1

# timer_indicate에서 타이머 모드(timerIndicateMode)에 따라 타이머의 성격이 결정됨
# timerIndicateMode 0(기본값): 기본 모드 / timerIndicateMode 1: 데스매치