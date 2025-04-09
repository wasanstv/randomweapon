# 플레이어 TP, 아이템 지급 위주의 함수 (반복문)
# startRepeatNo에 의해 반복 횟수가 정해짐

# 태그 부여
tag @r[tag=participating,tag=!already] add selected1
tag @a[tag=selected1,tag=participating] add already
# 랜덤 TP, 장소 삭제
execute as @e[limit=1,sort=random,type=area_effect_cloud,tag=spawnpointPos] run tag @s add selectedPos
execute as @a[tag=selected1] run tp @e[limit=1,tag=selectedPos,type=area_effect_cloud]
kill @e[tag=selectedPos,type=area_effect_cloud]
# 아이템 랜덤 부여 (randomItemGet 함수 사용)
execute as @a[tag=selected1] run function rw:startinggame/randomitemget
# selected1 태그 삭제, selectedPos 태그 삭제(버그방지용)
tag @a[tag=selected1] remove selected1
tag @e[tag=selectedPos] remove selectedPos

# 반복문 카운트 1 하강
scoreboard players remove count startRepeatNo 1

# 모든 반복문이 종료되었을 때 gamestart_aftertp 실행
execute if score count startRepeatNo matches ..0 if score game isGameStarted matches 1.. run function rw:startinggame/gamestart_aftertp