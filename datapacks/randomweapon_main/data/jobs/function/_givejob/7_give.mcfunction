# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"거북 도사",color:"yellow","bold":true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"거북 도사의 알약 x3",color:"#60b9f5"}]
tellraw @s {text:"느리지만 단단한 전사, 거북 도사가 될 수 있는 알약을 가진 자입니다.\n무기는 없지만 그는 단단하기에 강력합니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"거북 도사의 알약 x1",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s carrot_on_a_stick[item_model="disc_fragment_5",custom_data={specialNo:10},custom_name={text:"거북 도사의 알약",color:"#d4d4d4",italic: false},lore=[[{"bold":true,color:"yellow",italic:false,"keybind":"key.use"},{"bold":false,color:"white",text:"을(를) 사용하여 "},{"bold":false,color:"white",text:"거북 도사의 알약을 먹을 수 있습니다."}],[{text:"사용 시 ",color:"white",italic:false},{text:"40초간 속도 감소 IV, 저항 III",color:"gray","bold":true},{text:"를 얻습니다."}],[""],{text:"사용 시 소모됩니다.",color:"red",italic: false}]] 3

return 0