# 기초적인 게임 룰 설정
gamerule doImmediateRespawn true
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doFireTick false

# 로비 싸움금지 팀 생성
team add lobby "로비"
team modify lobby friendlyFire false

# 아침으로~
time set day

# 화창하게~
weather clear

# 디버그용 플레이어 움직임 정상화
effect clear @a
execute as @a run attribute @s jump_strength modifier remove c_effect:no_jump

# 풀피로 만들기
effect clear @a
effect give @a instant_health 1 50 true

# 땅에 떨어진 아이템 초기화
kill @e[type=item]

# 관전자 지점 삭제
kill @e[type=area_effect_cloud,tag=spectatorPos]

# 게임 중일 때 모두를 로비로 귀환 / 템창 초기화
execute if score game isGameStarted matches 1.. run tp @a 8 -60 8
execute if score game isGameStarted matches 1.. run clear @a

# 크리 아니면 전부 모험모드로 (게임 중이었을 때만)
execute if score game isGameStarted matches 1.. run gamemode adventure @a[gamemode=!creative]



# 매칭 취소 메시지를 "게임 리셋 중" 으로 바꿔주는 마법
scoreboard objectives add matchFailMessage dummy
scoreboard players set map matchFailMessage 0

# 체력 표시기, 초기화
scoreboard objectives add healthPointDummy dummy {"text":"♥","color":"red"}
scoreboard objectives add healthPoint health {"text":"♥","color":"red"}
scoreboard objectives setdisplay below_name

# 맵 관련 스코어보드 (기본값: 0, 테스트용 번호)
scoreboard objectives add mapNo dummy

# startinggame 관련 스코어보드
scoreboard objectives add playerCount dummy
scoreboard objectives add startTimerTick dummy
scoreboard objectives add startTimerSec dummy
scoreboard objectives add allPlayers dummy
scoreboard objectives add cancelTick dummy
scoreboard objectives add isGameStarted dummy
scoreboard objectives add startRepeatNo dummy
scoreboard objectives add fastplayerCount dummy
scoreboard objectives add developerMode dummy
scoreboard objectives add isItemStarted dummy

# randomitemget 관련 스코어보드
scoreboard objectives add randomFactor dummy
scoreboard objectives add alreadyFactor dummy

# timer 관련 스코어보드
scoreboard objectives add istimerOn dummy
scoreboard objectives add timerFormat dummy
scoreboard objectives add timerImmStart dummy
scoreboard objectives add timerEndFormat dummy
scoreboard objectives add timerTick dummy
scoreboard objectives add timerSec dummy
scoreboard objectives add timerMin dummy
scoreboard objectives add timerIndicator dummy
scoreboard objectives add timerIndicateMode dummy
scoreboard objectives add rerollCounter dummy

# endinggame 관련 스코어보드
scoreboard objectives add isDeath deathCount
scoreboard objectives add winCount dummy
scoreboard objectives setdisplay list winCount
scoreboard objectives add isGameEnded dummy
scoreboard objectives add endingRepeatNo dummy
scoreboard objectives add killCounts playerKillCount

# gamemodes_rw 관련 스코어보드 (이건 찬찬히 할 예정)
scoreboard objectives add gameM dummy

# timer 관련 보스바 추가
bossbar add rw:timer {"text":"남은 시간 표시기","bold":true,"color":"yellow"}

# 수치 초기화
scoreboard players set timer timerImmStart 0
scoreboard players set game isGameStarted 0
scoreboard players set time2 startTimerTick 0
scoreboard players set canceler cancelTick 20
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
scoreboard players set retimer rerollCounter 0
scoreboard players set endingtick timerTick 120
scoreboard players set game isGameEnded 0
scoreboard players set game1 isGameEnded 0
scoreboard players set count endingRepeatNo 0
scoreboard players set @a killCounts 0
scoreboard players set @a healthPointDummy 0
scoreboard players set rand randomFactor 0
scoreboard players set @a alreadyFactor 0
scoreboard players set game isItemStarted 0

# 태그 초기화
tag @a remove already
tag @a remove already2
tag @a remove endDamage

# 특수 아이템값 초기화
function jobs:specialitem_load


# 포스로드 다 제거
forceload remove all

# 로드 완료 메시지
tellraw @a [{"text":"[System]","color":"yellow","bold":true},{"text":" Reset Complete!","bold":false,"color":"white"}]

