/// @desc Core Player Logic n Shit

//Input
//key_left = keyboard_check(vk_left);
//key_right = keyboard_check(vk_right);
//key_jump = keyboard_check_pressed(vk_space);

//movement stuff
//var _move = key_right - key_left;

//hsp = _move * walksp;

vsp = vsp + grv;

//if (place_meeting(x,y+1,oFloor)) && (key_jump){
	//vsp = -jumpsp;
//}

//Horz Colish
if(place_meeting(x+hsp,y,oFloor)){
	while(!place_meeting(x+sign(hsp),y,oFloor)){
	x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vert Colish
if(place_meeting(x,y+vsp,oFloor)){
	while(!place_meeting(x,y+sign(vsp),oFloor)){
		y = y + sign(vsp);
	}
	vsp = -vsp;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oFloor)){
	sprite_index = Aiden;
	image_speed = 1;
	//if(vsp > 0){ image_index = 1;} else image_index = 0;
}else{
	image_speed = 1;
	if (hsp == 0){
		sprite_index = Aiden;
	}else{
		sprite_index = Aiden;
	}
}
	
if (hsp > 0) image_xscale = 5 ; else if (hsp < 0) image_xscale = -5;
	