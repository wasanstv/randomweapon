
# 직업별
# alreadyFactor 의 번호는 직업 번호를 의미하며, 그 번호에 맞게 메시지가 출력됩니다.
# return 을 사용하여 tellraw 출력 해주세요. 그러면 만약 입력값이 없었다면 밑에 있는 "공통" 메시지가 출력되게 됩니다.

#1: 사냥꾼
#execute if score @s alreadyFactor matches 1 run return run tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"이(가) ","color": "white","bold":false},{"selector": "@a[scores={isDeathItem=1..}]"},{"text":"을(를) 사냥했습니다.","color":"white","bold":false}]

#2: 셜커
#execute if score @s alreadyFactor matches 2 run return run tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"이(가) ","color": "white","bold":false},{"selector": "@a[scores={isDeathItem=1..}]"},{"text":"의 머리를 깔아 뭉개버렸습니다.","color":"white","bold":false}]

#3: 오카리나
#execute if score @s alreadyFactor matches 3 run return run tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"이(가) ","color": "white","bold":false},{"selector": "@a[scores={isDeathItem=1..}]"},{"text":"에게 죽음의 선율을 들려주었습니다.","color":"white","bold":false}]

#4

#5

#6


# 공통
tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"이(가) ","color": "white","bold":false},{"selector": "@a[scores={isDeathItem=1..}]"},{"text":"을(를) 탈락시켰습니다.","color":"white","bold":false}]
