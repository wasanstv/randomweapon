# isGameEnded 1로 만들기
scoreboard players set game1 isGameEnded 1

# 게임 종료용 타이머 완전리셋
scoreboard players set retimer rerollCounter 0
scoreboard players set retimer timerImmStart 0
scoreboard players set retimer timerFormat 0
scoreboard players set retimer timerEndFormat 0
scoreboard players set retimer timerIndicateMode 0
scoreboard players set retimer istimerOn 0

scoreboard players set timer timerImmStart 0
scoreboard players set timer timerFormat 0
scoreboard players set timer timerEndFormat 0
scoreboard players set timer timerIndicateMode 0
scoreboard players set timer istimerOn 0
bossbar set rw:timer players

# 아이템 사용 불가로 바꾸기
scoreboard players set game isItemStarted 0