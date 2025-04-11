# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"견습 마법사",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"마법 지팡이",color:"#60b9f5"}]
tellraw @s {text:"지팡이만 있다면 마법을 쓸 수 있다는 소문이 있습니다.\n주문만 제대로 안다면 말이죠."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"???",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s carrot_on_a_stick[item_model="blaze_rod",custom_data={specialNo:14},custom_name={text:"마법 지팡이",color:"#a200ff",italic: false},lore=[[{bold:true,color:"yellow",italic:false,"keybind":"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"마법을 사용합니다."}],[{text:"무슨 마법을 사용할 수 있냐고요?",color:"white",italic:false},{text:"제가 어떻게 알아요 ㅋㅋ",color:"#ff002b",bold:true}]]] 1