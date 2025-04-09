# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"셜커 껍질 바람 닌자","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"돌풍구 x4, 단단한 셜커 껍질 x2","color":"#60b9f5"}]
tellraw @s {"text":"바람을 뭉쳐 다루는 닌자입니다. 함께 들고있는 셜커 껍질은 충분히 단단해 사용 시 타고 내려찍을 수 있습니다.\n내려온 높이만큼 내리찍었을 때의 위력과 범위가 강화됩니다.\n떨어지는 중간에 사다리 따위로 감속되면 가속력을 잃어 위력이 감소될 수 있으니 주의해 주세요."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"돌풍구 x4, 단단한 셜커 껍질 x2","color": "#60b9f5"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}

give @s wind_charge 4
give @s carrot_on_a_stick[custom_name='{"color":"#DE09DE","italic":false,"text":"단단한 셜커 껍질"}',item_model="shulker_shell",lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.use"},{"bold":false,"color":"white","text":"을(를) 사용하여 "},{"bold":false,"color":"white","text":"셜커 껍질을 탈 수 있습니다."}]','[{"color":"white","italic":false,"text":"셜커 껍질을 탑승하기 시작하면 "},{"bold":true,"color":"aqua","text":"탑승한 위치로부터 떨어지는 거리"},"가 계산됩니다."]','[{"color":"white","italic":false,"text":"사용한 후 바닥에 닿는다면 "},{"bold":true,"color":"red","text":"특정 범위에 특정 데미지"},"를 주고, ",{"bold":true,"color":"gray","text":"3초간 구속 1"},"을 부여합니다"]','[{"color":"white","italic":false,"text":"떨어진 거리가 클수록 "},{"bold":true,"color":"red","text":"위력과 범위"},"가 늘어납니다."]','[{"bold":true,"color":"gold","italic":false,"text":"~1칸"},{"bold":false,"color":"white","text":": 위력 발동 X"}]','[{"bold":true,"color":"gold","italic":false,"text":"2칸 ~ 5칸"},{"bold":false,"color":"white","text":": 반경 3블럭, 4 데미지"}]','[{"bold":true,"color":"gold","italic":false,"text":"6칸 ~ 10칸"},{"bold":false,"color":"white","text":": 반경 5블럭, 10 데미지"}]','[{"bold":true,"color":"gold","italic":false,"text":"11칸 ~"},{"bold":false,"color":"white","text":": 반경 7블럭, 20 데미지"}]','[""]','{"text":"사용 시 소모됩니다.","color":"red","italic":false}'],custom_data={specialNo:2}] 2