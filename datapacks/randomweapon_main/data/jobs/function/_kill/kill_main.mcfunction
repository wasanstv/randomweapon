# 만약 킬 수가 기록되지 않는 아이템일 경우 killedItem을 억지로 1 추가해 줘야 함.

# 사살
execute as @a[limit=1,scores={isDeathItem=1..}] as @a[scores={isDeathItem=..0}] if score @s killedItem matches 1.. run function jobs:_kill/kill_message

# 자결
execute as @a[limit=1,scores={isDeathItem=1..}] if score @s killedItem matches 1.. run function jobs:_kill/kill_message_suicide

# 킬 보너스 지급
execute as @a[limit=1,scores={isDeathItem=1..}] as @a[scores={isDeathItem=..0}] if score @s killedItem matches 1.. run function jobs:_kill/kill_bonus

# 초기화
scoreboard players set @a killedItem 0
scoreboard players set @a isDeathItem 0