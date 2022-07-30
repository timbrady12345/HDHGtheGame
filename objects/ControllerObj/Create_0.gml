p1 = instance_create_layer(room_width/2-300, 880, "Instances", CharacterObj)
p2 = instance_create_layer(room_width/2+300, 880, "Instances", CharacterObj)

p1.image_xscale = 6
p1.image_yscale = 6
p2.image_xscale = -6
p2.image_yscale = 6
p2.controller = CONT_P2

p1.opponent = p2
p2.opponent = p1

p1.character = global.p1_char
p2.character = global.p2_char

with p1
	HandleSprites(character)
	
with p2
	HandleSprites(character)