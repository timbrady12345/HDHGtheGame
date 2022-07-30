if keyboard_check_pressed(vk_up){
	cur_index--;
}

if keyboard_check_pressed(vk_down){
	cur_index++;
}

cur_index = clamp(cur_index, 0, array_length_1d(menu));

if keyboard_check_pressed(vk_enter){
	switch(cur_index){
		case 0: 
			room_goto_next();
		break;
		
		case 1:
			room_goto_next();
		break;
		
		case 2:
			game_end();
		break;
		
	}
}