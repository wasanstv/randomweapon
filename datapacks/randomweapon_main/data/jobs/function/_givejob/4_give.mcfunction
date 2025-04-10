# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"뱀파이어",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"흡혈침 x2",color:"#60b9f5"}]
tellraw @s {text:"깊은 산장에 숨어 살던 뱀파이어였으나, 느닷없이 목수들이 들이닥치는 바람에 쫓겨났습니다.\n상대의 피를 빨아 자신의 것으로 취하는 날카로운 흡혈 침을 지니고 있습니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"흡혈침 x2",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s tipped_arrow[custom_data={specialNo:6},custom_name={text:"흡혈침",color:"#920909",italic: false},lore=[[{text:"이 아이템으로 ",color:"white",italic:false},{text:"공격",color:"red"},{text:"했을 경우,"}],[{text:"상대에게 ",color:"white",italic:false},{text:"6의 피해",color:"red",bold:true},{text:"를 주고,"}],[{text:"자신은 ",color:"white",italic:false},{text:"4의 체력",color:"green",bold: true},{text:"을 회복합니다."}],[""],[{text:"사용 시 소모됩니다.",color:"red",italic: false}]],tooltip_display={hidden_components:["minecraft:potion_contents"]},potion_contents={custom_color:6358791}] 2

return 0