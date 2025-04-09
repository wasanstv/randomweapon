# 직업별
# alreadyFactor 의 번호는 직업 번호를 의미하며, 그 번호에 맞게 메시지가 출력됩니다.
# return run 을 사용하여 tellraw 출력 해주세요. 그러면 만약 입력값이 없었다면 밑에 있는 "공통" 메시지가 출력되게 됩니다.

# 3: 오카리나
#execute if score @s alreadyFactor matches 3 run return run tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"님이 자신의 음악에 너무 심취한 나머지 목이 꺾여 사망했습니다.","color": "white","bold":false}]



# 공통
tellraw @a [{"selector":"@s","color":"yellow","bold": true},{"text":"이(가) 자결했습니다.","color": "white","bold":false}]
