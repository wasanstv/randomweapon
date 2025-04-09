# 게임 매칭 함수
#--------------------

# 로비 팀 참가
team join lobby @a

# 스폰포인트 설정 (오류 방지용)
execute as @a run spawnpoint @s 8 -60 8

# 디버그용 데스카운터 0 초기화
scoreboard players set @a isDeath 0
scoreboard players set @a isDeathItem 0

# 보스바/타이머 정상화(필요 없어질 시 삭제)
bossbar set rw:timer players

# 리롤카운터 정상화
scoreboard players set retimer rerollCounter 0

# 참여자용 태그 부여
tag @a remove participating
execute positioned 6.32 -60.00 13.37 as @a[dx=5,dy=5,dz=5] run tag @s add participating
execute positioned 6.32 -60.00 13.37 as @a[dx=5,dy=5,dz=5] run tag @s add fastWhoIsIn

# 관전자용 태그 부여
tag @a remove spectating
execute positioned 14.243 -60 7.3 as @a[dx=3,dy=3,dz=3] run tag @s add spectating
execute positioned 14.243 -60 7.3 as @a[dx=3,dy=3,dz=3] run tag @s add fastWhoIsIn

# 플레이어 수 체크
execute if score canceler cancelTick matches ..0 store result score count playerCount run execute if entity @a[tag=participating]
execute if score canceler cancelTick matches ..0 store result score countSpec playerCount run execute if entity @a[tag=spectating]
execute if score canceler cancelTick matches 1.. run scoreboard players set count playerCount 0

# '매칭 취소됨' 이 뜨도록 설정 (본격적으로 '취소'를 할 수 있게끔 되는 순간에)
execute if score count playerCount matches 2.. run scoreboard players set map matchFailMessage 1

# 플레이어 수 안내 및 타이머
execute if score count playerCount matches ..1 if score canceler cancelTick matches ..0 run title @a actionbar [{"text":"플레이어를 기다리는 중... ","color": "#16ff3d"},{"text":"(","color": "#0c975d"},{"score":{"objective": "playerCount","name": "count"},"color": "#ffee00"},{"text":"/","color": "#0c975d"},{"text":"16","color": "#ffee00"},{"text":") ","color": "#0c975d"},{"text":"[","color":"dark_green","bold": false},{"text":"관전자 수: ","color":"green","bold": false},{"score":{"name": "countSpec","objective": "playerCount"},"color":"yellow","bold":true},{"text":"]","color":"dark_green","bold": false}]
execute if score time startTimerSec matches 1.. if score count playerCount matches 2..16 if score canceler cancelTick matches ..0 run title @a actionbar [{"text":"게임 시작까지 ","color": "#16ff3d"},{"score":{"objective": "startTimerSec","name": "time"},"color": "#ffee00"},{"text":"초 전... ","color": "#16ff3d"},{"text":"(","color": "#0c975d"},{"score":{"objective": "playerCount","name": "count"},"color": "#ffee00"},{"text":"/","color": "#0c975d"},{"text":"16","color": "#ffee00"},{"text":") ","color": "#0c975d"},{"text":"[","color":"dark_green","bold": false},{"text":"관전자 수: ","color":"green","bold": false},{"score":{"name": "countSpec","objective": "playerCount"},"color":"yellow","bold":true},{"text":"]","color":"dark_green","bold": false}]
execute if score time startTimerSec matches ..0 if score count playerCount matches 2..16 if score canceler cancelTick matches ..0 run title @a actionbar [{"text":"게임이 시작됩니다!","color": "green"}]
execute if score time startTimerSec matches ..0 if score count playerCount matches 17.. if score canceler cancelTick matches ..0 run title @a actionbar [{"text":"플레이어가 너무 많습니다! ","color": "red"},{"text":"(","color": "#0c975d"},{"score":{"objective": "playerCount","name": "count"},"color": "#ffee00"},{"text":"/","color": "#0c975d"},{"text":"16","color": "#ffee00"},{"text":") ","color": "#0c975d"},{"text":"[","color":"dark_green","bold": false},{"text":"관전자 수: ","color":"green","bold": false},{"score":{"name": "countSpec","objective": "playerCount"},"color":"yellow","bold":true},{"text":"]","color":"dark_green","bold": false}]
execute if score map matchFailMessage matches ..0 if score canceler cancelTick matches 1.. run title @a actionbar [{"text":"매칭 쿨다운 ...","color": "red"},{"score":{"name": "canceler","objective": "cancelTick"}}]
execute if score map matchFailMessage matches 1.. if score canceler cancelTick matches 1.. run title @a actionbar [{"text":"매칭 취소됨 ...","color": "red"},{"score":{"name": "canceler","objective": "cancelTick"}}]

# 플레이어 수 1명 이하, 16명 초과일 경우, 타이머 초기화 (10초)
execute if score count playerCount matches ..1 run scoreboard players set time startTimerTick 0
execute if score count playerCount matches ..1 run scoreboard players set time startTimerSec 10
execute if score count playerCount matches 17.. run scoreboard players set time startTimerTick 0
execute if score count playerCount matches 17.. run scoreboard players set time startTimerSec 10

# 플레이어 수 2명 감지, 타이머 시작
execute if score time startTimerSec matches 1.. if score time startTimerTick matches ..19 if score count playerCount matches 2..16 run scoreboard players add time startTimerTick 1
execute if score time startTimerSec matches 1.. if score time startTimerTick matches 20.. run scoreboard players remove time startTimerSec 1
execute if score time startTimerTick matches 20.. run scoreboard players set time startTimerTick 0
#                                               v 여기서 게임진행 함수 연결
execute if score time startTimerSec matches -1 run function rw:startinggame/gamestart
execute if score time startTimerSec matches 0 run scoreboard players set time startTimerSec -1

# 플레이어 수(관전자 포함) = 전체 인원일 경우, 타이머 3초 조정 (4초대 이상일 경우)
execute store result score count fastplayerCount run execute if entity @a[tag=fastWhoIsIn]
execute store result score count allPlayers run execute if entity @a
execute if score count playerCount matches 2..16 if score count allPlayers matches 2.. if score time startTimerSec matches 4.. if score count fastplayerCount = count allPlayers run scoreboard players set time startTimerTick 0
execute if score count playerCount matches 2..16 if score count allPlayers matches 2.. if score time startTimerSec matches 4.. if score count fastplayerCount = count allPlayers run scoreboard players set time startTimerSec 3

# 취소 - cancelTick 내리기 (취소 버튼 명령어는 rw:startinggame/terminate)
execute if score canceler cancelTick matches 1.. run scoreboard players remove canceler cancelTick 1

# 3초 남았을때 1초마다 띵띵
execute if score time startTimerTick matches 0 if score time startTimerSec matches 3 as @a at @s run playsound ui.button.click block @s ~ ~ ~ 2 1
execute if score time startTimerTick matches 0 if score time startTimerSec matches 2 as @a at @s run playsound ui.button.click block @s ~ ~ ~ 2 1
execute if score time startTimerTick matches 0 if score time startTimerSec matches 1 as @a at @s run playsound ui.button.click block @s ~ ~ ~ 2 1

# fastWhoIsIn 지우기
tag @a remove fastWhoIsIn