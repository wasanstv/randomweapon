# default
bossbar set rw:timer players
tellraw @a {"text":"타이머가 종료되었습니다!","color":"green"}
scoreboard players set timer timerImmStart 0
scoreboard players set timer istimerOn 0