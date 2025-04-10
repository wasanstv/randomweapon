# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"포션술사","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"힘의 물약(0:05) x2, 신속의 물약 x2, 투척용 감속의 물약 x2, 투척용 고통의 물약 x1, 투척용 나약함의 물약(0:10) x1","color":"#60b9f5"}]
tellraw @s {"text":"전문 포션 제작자로써, 한때 많은 손님들의 의뢰를 받곤 했습니다.\n다양한 포션을 사용하여 싸움에 대비합니다."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"힘의 물약(0:05) x1, 투척용 고통의 물약 x1, 투척용 나약함의 물약(0:10) x1","color": "#60b9f5"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}


give @s potion[potion_contents={custom_color:16562721,custom_effects:[{id:"minecraft:strength",amplifier:0,duration:100}]},custom_name={italic:false,text:"힘의 물약"}] 2
give @s potion[potion_contents={potion:"minecraft:swiftness"}] 2
give @s splash_potion[potion_contents={potion:"minecraft:slowness"}] 2
give @s splash_potion[potion_contents={potion:"minecraft:harming"}] 1
give @s splash_potion[potion_contents={custom_color:2829099,custom_effects:[{id:"minecraft:weakness",amplifier:0,duration:200}]},custom_name={italic:false,text:"투척용 나약함의 물약"}] 1
