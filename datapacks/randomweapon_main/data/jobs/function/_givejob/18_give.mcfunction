# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"도굴꾼",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"불사의 토템 x1",color:"#60b9f5"}]
tellraw @s {text:"피라미드를 도굴했던 사람입니다. 손에 들려있는 불사의 토템은 그 날의 소중한 전리품입니다.\n아직까지 이 유물의 용도는 파악하지 못했지만, 어쩌면 오늘 알 수 있게 될지도요."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"귀족의 목검 x1",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s totem_of_undying 1