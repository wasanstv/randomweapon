# load 함수와 비슷하지만, 완전 초기화가 아닌 다음 게임을 위한 간단한 초기화 버전으로 만들어짐.
# 앞으로 게임을 종료하고 리셋해야할 때 이 함수를 쓰면 된다.
# 게임 리셋이기 때문에 모험 모드 변경도 있음 OwO

# 이 함수에서 넣지 말아야 할 것:
# 1. 게임 모드(gameM) 리셋
# 2. 맵 선택 넘버(mapNo) 리셋

# 아침으로~
time set day

# 화창하게~
weather clear

# 풀피로 만들기
effect give @a instant_health 1 50 true

# 땅에 떨어진 아이템 초기화
kill @e[type=item]

# 모두를 모험 모드로 변경
execute if score game isGameStarted matches 1.. run gamemode adventure @a

# 체력 표시기 초기화
scoreboard objectives setdisplay below_name

# 게임 중일 때 모두를 로비로 귀환 / 템창 초기화
execute if score game isGameStarted matches 1.. run tp @a 8 -60 8
execute if score game isGameStarted matches 1.. run clear @a

# 디버그용 플레이어 움직임 정상화 & 버프 초기화 & 풀피 회복
effect clear @a
execute as @a run attribute @s jump_strength modifier remove c_effect:no_jump
effect give @a instant_health 1 50 true


# 매칭 취소 메시지를 "게임 리셋 중" 으로 바꿔주는 마법
scoreboard players set map matchFailMessage 0

# 기본 취소 틱
scoreboard players set canceler cancelTick 20

# 수치 초기화
scoreboard players set timer timerImmStart 0
scoreboard players set game isGameStarted 0
scoreboard players set time2 startTimerTick 0
scoreboard players set count startRepeatNo 0
scoreboard players set timer timerImmStart 0
scoreboard players set timer timerIndicateMode 0
scoreboard players set timer timerFormat 0
scoreboard players set timer timerEndFormat 0
scoreboard players set timer istimerOn 0
scoreboard players set retimer timerImmStart 0
scoreboard players set retimer timerIndicateMode 0
scoreboard players set retimer timerFormat 0
scoreboard players set retimer timerEndFormat 0
scoreboard players set retimer istimerOn 0
scoreboard players set ingamecount playerCount -1
scoreboard players set endingtick timerTick 120
scoreboard players set game isGameEnded 0
scoreboard players set game1 isGameEnded 0
scoreboard players set retimer rerollCounter 0
scoreboard players set @a killCounts 0
scoreboard players set @a healthPointDummy 0
scoreboard players set @a alreadyFactor 0
scoreboard players set game isItemStarted 0

# 태그 초기화
tag @a remove already
tag @a remove already2
tag @a remove endDamage

# 아이템값 초기화
function jobs:specialitem_load


# 포스로드 다 제거
forceload remove all