# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"떠돌이 대장장이",color:"yellow","bold":true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"강화 검 x1",color:"#60b9f5"}]
tellraw @s {text:"찾아가는 대장장이 서비스를 운영해 많은 의뢰인들의 사랑을 받았던 대장장이입니다.\n당신의 철 검은 녹슬고 약해졌지만, 항상 허리에 차고 다니던 망치는\n이 검에 새로운 삶을 불어 넣어줄 것입니다.\n검을 들고 웅크리기를 하여 검을 강화할 수 있습니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"없음",color: "dark_red"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s iron_sword[custom_data={specialNo:9,upgrade:0},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-1,operation:"add_value"}],custom_name=[{text:"강화 검 ",color:"white",italic:false},{text:"[+0]",color:"#5f5f5f"}],lore=[[{"bold":true,color:"red",italic:false,text:"현재 공격력: "},{color:"light_purple",text:"0"}],[{"bold":true,color:"yellow",italic:false,"keybind":"key.sneak"},{"bold":false,color:"white",text:"를"},{color:"dark_green",text:" 3초간"},{"bold":false,color:"white",text:" 꾹 누르고 있으면 "},{color:"blue",text:"강화"},{"bold":false,color:"white",text:"할 수 있습니다."}],[{"bold":false,color:"white",italic:false,text:"강화에 성공 시 공격력이 "},{"bold":true,color:"green",italic:false,text:"2"}," 오릅니다."],[{color:"white",italic:false,text:"강화에 실패시 "},{"bold":true,color:"red",text:"5"}," 의 체력이 깎입니다."],[{color:"white",italic:false,text:""},{"bold":true,color:"yellow",italic:false,text:"7강"},"까지 존재합니다. 강화 확률은 아래를 참조해주세요."],[""],[{color:"white",italic:false,text:""},{"bold":true,color:"yellow",text:"1강 "},"95% / ",{"bold":true,color:"yellow",text:"2강 "},"80% / ",{"bold":true,color:"yellow",text:"3강"}," 50% / ",{"bold":true,color:"yellow",text:"4강"}," 30%"],[{color:"white",italic:false,text:""},{"bold":true,color:"yellow",text:"5강 "},"20% / ",{"bold":true,color:"yellow",text:"6강"}," 20% /",{"bold":true,color:"yellow",text:" 7강"}," 10% (번외: 7강은 공격력이 999가 됩니다.)"]]] 1

return 0