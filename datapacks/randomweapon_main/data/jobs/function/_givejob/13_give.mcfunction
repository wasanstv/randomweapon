# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"가난한 나무꾼","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"테무에서 산 나무 도끼","color":"#60b9f5"}]
tellraw @s {"text":"최근 근처의 수풀림을 대규모 건설 업체에서 독점해가는 바람에 수입을 대다수 잃은 불운의 나무꾼입니다.\n이젠 도끼도 살 돈이 없어 테무에서 샀기에, 내구도가 10 입니다."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"테무에서 재구입한 나무 도끼(내구도 5) x1","color": "#60b9f5"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}


give @s wooden_axe[max_damage=10,custom_name='{"italic":false,"text":"테무에서 산 나무 도끼"}'] 1