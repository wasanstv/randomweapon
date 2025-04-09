# 타이머 리셋 함수. istimerOn이 0으로 설정되었을 경우 즉시 실행됨
# reload 시 타이머 포멧 0, 즉시 타이머 실행 0, 타이머 모드 1인 상태로 타이머가 초기화 될 것임.

# 타이머 포멧 기본값: 0 (reload할 때 0으로 설정됨)
# timerImmStart 기본값: 0 (reload할 때 0으로 설정됨)

# istimerOn 0으로 설정할 시(리셋할 시), 적절한 타이머, 엔드 포멧과 타이머 실행 여부, 타이머 모드를 앞에 적어주는 것을 권장함 (따르지 않을 시 오류 발생 가능)
# 타이머가 표시되게끔 하려면, 직접 보스바를 건들여서 켜주어야 함.
# 예시)
# scoreboard players set retimer timerImmStart 1
# scoreboard players set retimer timerFormat 0
# scoreboard players set retimer timerEndFormat 0
# scoreboard players set retimer timerIndicateMode 0
# scoreboard players set retimer istimerOn 0
# -> 타이머 포멧 1을 타이머에 적용시킨 다음, 즉시 타이머 실행, 표시되는 타이머 모드는 '기본 모드'


# 타이머 포멧(timerFormat) 0: 기본 타이머 설정 (초, 분) - timer -> retimer
execute if score retimer istimerOn matches 0 if score timer timerFormat matches 0 run scoreboard players set retimer timerSec 30
execute if score retimer istimerOn matches 0 if score timer timerFormat matches 0 run scoreboard players set retimer timerMin 1

# 틱 초기화
scoreboard players set retimer timerTick 20

# retimer 즉시 타이머 실행(timerImmStart) 0: 초기화 함수 종료
execute if score retimer timerImmStart matches 0 run scoreboard players set retimer istimerOn 2

# retimer 즉시 타이머 실행(timerImmStart) 1: 초기화 후 타이머 즉시 실행
execute if score retimer timerImmStart matches 1 run scoreboard players set retimer istimerOn 1

# timer_indicate에서 타이머 모드(timerIndicateMode)에 따라 타이머의 성격이 결정됨
# timerIndicateMode 0(기본값): 기본 모드 / timerIndicateMode 1: 데스매치