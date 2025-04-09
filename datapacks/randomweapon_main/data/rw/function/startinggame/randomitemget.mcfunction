# 이 함수는 아이템을 받는 사람(selected1 태그가 적용되어있는 사람)이 실행하기 때문에,
# @s를 사용해주면 됨. 필요시 @a[tag=selected1] 써도 무관

# 이 함수에서는 지급 명령어는 숫자_give 함수로 대체되며, 이 함수 내에서 신경써야하는 것은 중복픽 방지책이니 참조바람.

# 그냥 다이아 검 주는거니까 이거 나중에 알아서 없애셈
# give @s diamond_sword

# 랜덤인수 값 초기화
scoreboard players set rand randomFactor 0

# 랜덤 굴리기 (현재 직업 개수 20개, 직업 개수가 늘어날 때 마다 이를 수정해주어야 함.)
execute store result score rand randomFactor run random value 1..19

# alreadyFactor에 이미 존재하던 난수가 있다면 이 함수 다시 실행, 없다면 alreadyFactor에 저장 후 아래 명령어 실행
execute as @a if score rand randomFactor = @s alreadyFactor as @a[tag=selected1] run return run function rw:startinggame/randomitemget
scoreboard players operation @s alreadyFactor = rand randomFactor

# 1번 상수
execute as @s if score rand randomFactor matches 1 run return run function jobs:_givejob/1_give

# 2번 상수
execute as @s if score rand randomFactor matches 2 run return run function jobs:_givejob/2_give

# 3번 상수
execute as @s if score rand randomFactor matches 3 run return run function jobs:_givejob/3_give

# 4번 상수
execute as @s if score rand randomFactor matches 4 run return run function jobs:_givejob/4_give

# 5번 상수
execute as @s if score rand randomFactor matches 5 run return run function jobs:_givejob/5_give

# 6번 상수
execute as @s if score rand randomFactor matches 6 run return run function jobs:_givejob/6_give

# 7번 상수
execute as @s if score rand randomFactor matches 7 run return run function jobs:_givejob/7_give

# 8번 상수
execute as @s if score rand randomFactor matches 8 run return run function jobs:_givejob/8_give

# 9번 상수
execute as @s if score rand randomFactor matches 9 run return run function jobs:_givejob/9_give

# 10번 상수
execute as @s if score rand randomFactor matches 10 run return run function jobs:_givejob/10_give

# 11번 상수
execute as @s if score rand randomFactor matches 11 run return run function jobs:_givejob/11_give

# 12번 상수
execute as @s if score rand randomFactor matches 12 run return run function jobs:_givejob/12_give

# 13번 상수
execute as @s if score rand randomFactor matches 13 run return run function jobs:_givejob/13_give

# 16번 상수
execute as @s if score rand randomFactor matches 16 run return run function jobs:_givejob/16_give

# 18번 상수
execute as @s if score rand randomFactor matches 18 run return run function jobs:_givejob/18_give

# 19번 상수
execute as @s if score rand randomFactor matches 19 run return run function jobs:_givejob/19_give

# 없었을 경우,,,
return run function rw:startinggame/randomitemget