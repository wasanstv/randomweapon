# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"전기 기술사","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"충전형 전기충격막대 x1","color":"#60b9f5"}]
tellraw @s {"text":"충전형 전기충격막대를 개발한 어떤 전기 기술사입니다.\n웅크린 채로 10초를 기다리면, 당신의 막대기는 충분한 전력을 받아 반짝반짝 빛날 것입니다."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"없음","color": "dark_red"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}

give @s blaze_rod[attribute_modifiers={modifiers:[{id:"attack_damage",type:"attack_damage",amount:-1,operation:"add_value"}],show_in_tooltip:false},custom_data={specialNo:11},custom_name='{"text":"충전형 전기충격막대","color":"gold","italic": false}',lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.sneak"},{"bold":false,"color":"white","text":" 키를"},{"bold":false,"color":"white","text":" 꾹 누르고 있으면 "},{"color":"blue","text":"충전"},{"bold":false,"color":"white","text":"할 수 있습니다."}]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 시 ",{"color":"dark_aqua","text":"충전 게이지"},"가 차며, ",{"color":"blue","text":"10초 충전"}," 시 가득 찹니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 중에 ",{"color":"yellow","keybind":"key.sneak"}," 키를 떼면 빠르게 ",{"color":"dark_aqua","text":"충전 게이지"},"가 줄어듭니다."]','[{"bold":false,"color":"white","italic":false,"text":""},{"color":"dark_aqua","italic":false,"text":"충전 게이지"},"가 가득 찼을 시, 막대기가 ",{"bold":true,"color":"aqua","text":"완충"}," 상태가 됩니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","text":"완충"}," 상태에서 상대를 공격할 시, ",{"bold":true,"color":"red","text":"12의 피해"},"와 함께 상대를 ",{"bold":true,"color":"gray","text":"3초간 구속"},"시킵니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","italic":false,"text":"완충 "},"상태가 아닐 시, ",{"color":"red","text":"이 무기로는 공격이 불가합니다."}]']] 1
