# 배고픔아 게섯거라
effect give @a saturation infinite 0 true

# 포스로딩
function rw:startinggame/forceloading

# startinggame 관련
execute if score game developerMode matches 0 if score game isGameStarted matches ..0 run function rw:startinggame/_one
execute if score game developerMode matches 1 if score game isGameStarted matches ..0 run team empty lobby
execute if score game developerMode matches 1 if score game isGameStarted matches ..0 run title @a actionbar "개발자 모드"
execute if score count startRepeatNo matches 1.. if score game isGameStarted matches 1.. run function rw:startinggame/gamestart_repeat
execute if score time2 startTimerTick matches 1.. if score game isGameStarted matches 1.. run function rw:startinggame/gamestart_counter

# endinggame 관련
execute if score game isGameStarted matches 1.. run function rw:endinggame/ingame_repeat
execute if score game isGameEnded matches 1.. if score count endingRepeatNo matches 1.. run function rw:endinggame/indicate_scoreboard

# timer 관련
# istimerOn 0: 초기화 / istimerOn 1: 타이머 발동 / isTimerOn 2: 휴면 상태
execute if score timer istimerOn matches 0 run function rw:timer/timer_reset
execute if score retimer istimerOn matches 0 run function rw:timer/timer_reset_reroll
execute if score timer istimerOn matches 1 run function rw:timer/timer_activate
execute if score retimer istimerOn matches 1 run function rw:timer/timer_activate_reroll
execute if score retimer timerIndicateMode matches 1 if score retimer istimerOn matches 1 run function rw:timer/timer_indicate_reroll
execute if score timer timerIndicateMode matches 2 run function rw:timer/timer_indicate_end
execute if score timer timerIndicateMode matches 1 if score timer istimerOn matches 1 run function rw:timer/timer_activate_death
execute if score timer timerIndicateMode matches 0 if score timer istimerOn matches 1 run function rw:timer/timer_indicate

# jobs:specialitem_tick 과 연결
execute if score game isItemStarted matches 1.. run function jobs:specialitem_tick

# carrotUse 초기화
execute if score game isGameStarted matches 1.. run scoreboard players set @a carrotUse 0

# 종말
execute if score timer timerIndicateMode matches 2 if score endtimer timerTick matches 0..9 run scoreboard players add endtimer timerTick 1
execute if score endtimer timerTick matches 10 if score timer timerIndicateMode matches 2 as @a[tag=endDamage] run damage @s 1
execute if score endtimer timerTick matches 10 if score timer timerIndicateMode matches 2 run scoreboard players set endtimer timerTick 0