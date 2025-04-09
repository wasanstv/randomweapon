tag @r[tag=already,tag=!already2] add selected2
tag @r[tag=selected2] add already2
execute as @a[tag=selected2] run tellraw @a [{"selector": "@s","color":"green"},{"text":": ","color":"white"},{"score": {"name":"@s","objective": "killCounts"},"color":"yellow","bold":true},{"text":" Kills","color":"white"}]
tag @a[tag=selected2] remove selected2


# 반복문 카운트 1 하강
scoreboard players remove count endingRepeatNo 1

# 모든 반복문이 종료되었을 때 스코어보드 닫기
execute if score count endingRepeatNo matches ..0 run tellraw @a {"text":"------------------","color":"#0a7a00"}
execute if score count endingRepeatNo matches ..0 run tellraw @a ""