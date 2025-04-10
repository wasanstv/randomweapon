# 직업 설명
tellraw @s "1번 직업 함수 실행됨"

tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"사냥꾼","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"늑대 뿔 피리 x1, 늑대 케이지 x1","color":"#60b9f5"}]
tellraw @s {"text":"늑대와 함께 산을 누비던 사냥꾼입니다.\n늑대 케이지는 사용 시 늑대 한 마리를 풀며 당신과 함께 싸웁니다.\n늑대 뿔 피리는 늑대들의 사기를 증진시켜, 굉장히 빠르게 만듭니다.\n킬 특전인 파수꾼의 돌풍구는 상대를 맞춰 늑대에게 추적을 명령할 수 있으며, 일반적인 돌풍구처럼 사용할 수도 있습니다."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"파수꾼의 돌풍구 x2","color": "#60b9f5"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}

# 빨간 줄 그어지긴 했지만 작동은 됨;
# 그니까 빨간 줄 좀 없애봐;;;;;;;;;;
give @s carrot_on_a_stick[custom_name={color:"#a36e56",italic:false,text:"늑대 뿔 피리"},item_model="goat_horn",lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "}],[{color:"green",text:"반경 20 블럭의 늑대",bold:true,italic:false},{bold:false,color:"white",text:"에게 "}],[{color:"#41d8f0",text:"신속 III를 10초간 부여",bold:true,italic:false},{bold:false,color:"white",text:"합니다."}],[""],{text:"쿨다운: 20초",color:"red",italic:false}],custom_data={specialNo:4},enchantment_glint_override=true] 1
give @s carrot_on_a_stick[custom_name={color:"dark_gray",italic:false,text:"늑대 케이지"},item_model="spawner",lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{color:"dark_gray",text:"늑대 한 마리"},{bold:false,color:"white",text:"를 풀 수 있습니다."}],{color:"white",italic:false,text:"늑대 한 마리는 당신에게 길들여진 상태로 등장하며,"},{color:"white",italic:false,text:"늑대 갑옷을 쓰고 있습니다."},[""],{text:"사용 시 소모됩니다.",color:"red",italic:false}],custom_data={specialNo:1}] 1

#give @s cooked_beef[custom_name='{"italic":false,"text":"시저 쇠고기 무방부제 저칼로리"}']

return 0