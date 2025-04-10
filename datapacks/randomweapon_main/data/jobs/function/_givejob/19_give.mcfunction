# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"레인저",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"활 x1, 화살 x6",color:"#60b9f5"}]
tellraw @s {text:"한때 활 하나로 세계를 누볐던 여행가입니다.\n이제는 쓸만한 화살은 6개밖에 없지만, 이것만으로도 언제나 충분합니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"화살 x6",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s bow 1
give @s arrow 6