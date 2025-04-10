# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"견습 검사",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"나무 검 x1, 가죽 조끼 x1",color:"#60b9f5"}]
tellraw @s {text:"전설적인 검사를 동경해 왔던 견습 검사입니다.\n수중에 가진 것은 나무 검과 조끼 한 벌밖에 없지만, 마음 속엔 언제나 의지로 충만합니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"없음",color: "dark_red"}]
tellraw @s {text:"------------------",color:"#0a7a00"}


give @s wooden_sword
item replace entity @s armor.chest with leather_chestplate

return 0