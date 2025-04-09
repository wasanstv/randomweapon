# 게임 시작 시 "시작 카운트다운 이후" 타이밍에 필요한 커맨드가 있을 시 여따가 적으십쇼

# 로비 팀 전부 나가게 하기
team empty lobby

# 타이머 발동
scoreboard players set timer timerImmStart 1
scoreboard players set timer timerFormat 0
scoreboard players set timer timerEndFormat 1
scoreboard players set timer timerIndicateMode 0
scoreboard players set timer istimerOn 0
bossbar set rw:timer players @a

# 체력바 등장
execute as @a if score @s healthPoint matches 0 store result score @s healthPointDummy run attribute @s max_health get
scoreboard objectives setdisplay below_name healthPointDummy

# 아이템 사용 가능으로 바꾸기
scoreboard players set game isItemStarted 1

# 중간 재지급 타이머 발동 (개발 계획 중 무산됨)
#scoreboard players set retimer timerImmStart 1
#scoreboard players set retimer timerFormat 0
#scoreboard players set retimer timerEndFormat 1
#scoreboard players set retimer timerIndicateMode 1
#scoreboard players set retimer istimerOn 0