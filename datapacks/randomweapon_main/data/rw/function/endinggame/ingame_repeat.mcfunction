# 킬 메인
function jobs:_kill/kill_main

# 헬스 바 어떻게좀 해봐
execute as @a store result score @s healthPointDummy run scoreboard players get @s healthPoint

# 인게임 플레이어 수 세기
execute if score game1 isGameEnded matches 0 store result score ingamecount playerCount run execute if entity @a[tag=participating]

# 살아있는 사람 한정 스폰포인트 계속 지정
execute as @a at @s if entity @s[gamemode=adventure,tag=participating] run spawnpoint @s ~ ~ ~

# 죽으면...
execute as @a if score @s isDeath matches 1.. run gamemode spectator @s
execute as @a if score @s isDeath matches 1.. run scoreboard players set @s isDeath 0

# 탈락
execute as @a if entity @s[gamemode=!adventure,tag=participating] run gamemode spectator @s
execute as @a if entity @s[gamemode=!adventure,tag=participating] run clear @s
execute if score game isItemStarted matches 0 if score game1 isGameEnded matches 0 as @a if entity @s[gamemode=!adventure,tag=participating] run tellraw @a [{"selector": "@s","color":"yellow","bold":true},{"text":" 님이 게임도 시작 안했는데 탈락했습니다."}]
execute if score game1 isGameEnded matches 0 if score ingamecount playerCount matches 3.. as @a if entity @s[gamemode=!adventure,tag=participating] run execute as @a at @s run playsound entity.ender_dragon.growl block @a ~ ~ ~ 2 1
execute if score game1 isGameEnded matches 0 if score ingamecount playerCount matches 2 as @a if entity @s[gamemode=!adventure,tag=participating] at @s run effect give @e resistance 1 129 true
execute if score game1 isGameEnded matches 0 if score ingamecount playerCount matches 2 as @a if entity @s[gamemode=!adventure,tag=participating] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;15417151]},{shape:"large_ball",has_twinkle:true,colors:[I;16762452]},{shape:"star",colors:[I;16750666]}]}}}}
execute if score game1 isGameEnded matches 0 as @a if entity @s[gamemode=!adventure,tag=participating] run tag @s remove participating

# 게임 끝내기
execute if score ingamecount playerCount matches 1 if score endingtick timerTick matches 1..120 run scoreboard players remove endingtick timerTick 1
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 1 run function rw:timer/timer_allreset
execute if score ingamecount playerCount matches 1 if score endingtick timerTick matches 1..120 run title @a actionbar [{"text":"로비로 돌아가기까지 ...","color": "green"},{"score": {"objective": "timerTick","name":"endingtick"}}]
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 1 run title @a times 0 60 20
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 1 as @a[limit=1,tag=participating] run scoreboard players add @s winCount 1
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 1 as @a[limit=1,tag=participating] run title @a subtitle [{"selector":"@s","color":"yellow","bold":true},{"text": " 우승!","color":"green","bold":false}]
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 1 run title @a title ""
execute if score endingtick timerTick matches 60 if score ingamecount playerCount matches 1 as @a at @s run playsound ui.button.click block @s ~ ~ ~ 2 1
execute if score endingtick timerTick matches 60 if score ingamecount playerCount matches 1 run function rw:endinggame/easy_indication_of_scoreboard
# 게임 끝났다면 개쩌는 브금 재생하기
execute if score endingtick timerTick matches 119 as @a at @s if score ingamecount playerCount matches 1 if score game isGameStarted matches 1.. run playsound ui.toast.challenge_complete block @s ~ ~ ~ 2 1
execute if score ingamecount playerCount matches 1 if score endingtick timerTick matches 0 run function rw:game_reload

# 무승부일 때
execute if score ingamecount playerCount matches 0 if score endingtick timerTick matches 1..120 run scoreboard players remove endingtick timerTick 1
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 0 run function rw:timer/timer_allreset
execute if score ingamecount playerCount matches 0 if score endingtick timerTick matches 1..120 run title @a actionbar [{"text":"로비로 돌아가기까지 ...","color": "green"},{"score": {"objective": "timerTick","name":"endingtick"}}]
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 0 run title @a times 0 60 20
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 0 run title @a subtitle [{"text": "무승부...","color":"yellow","bold":false}]
execute if score endingtick timerTick matches 119 if score ingamecount playerCount matches 0 run title @a title ""
execute if score endingtick timerTick matches 60 if score ingamecount playerCount matches 0 as @a at @s run playsound ui.button.click block @s ~ ~ ~ 2 1
execute if score endingtick timerTick matches 60 if score ingamecount playerCount matches 0 run function rw:endinggame/easy_indication_of_scoreboard
# 무승부였다면 개짜치는 브금 재생하기
execute if score endingtick timerTick matches 119 as @a at @s if score ingamecount playerCount matches 0 if score game isGameStarted matches 1.. run playsound entity.wither.death block @s ~ ~ ~ 2 1
execute if score ingamecount playerCount matches 0 if score endingtick timerTick matches 0 run function rw:game_reload


