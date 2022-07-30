var width = room_width/2;
draw_set_font(HDHGFont)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(width, 300, "Character Select")

for (var i = 0; i < MAX_CHARS; i++){
	draw_sprite_ext(icons[i], 0, 64+110*i,470, 3, 3, 0, c_white, 1)
	
	if i == p1_index {
		draw_set_color(c_red)
		draw_text(75+110*i, 450, "P1");
		draw_set_color(c_black)
	}
	
	if i == p2_index {
		draw_set_color(c_blue)
		draw_text(125+110*i, 450, "P2");
		draw_set_color(c_black)
	}
}

if p1_ready and p2_ready
	draw_set_color(c_red)
	draw_text(width, 250, "Get Ready!")

draw_sprite_ext(portraits[p1_index], 0, 0, 0, 8, 8, 0, c_white, 1);
draw_sprite_ext(portraits[p2_index], 0, width*2, 0, -8, 8, 0, c_white, 1);

draw_set_halign(fa_left)