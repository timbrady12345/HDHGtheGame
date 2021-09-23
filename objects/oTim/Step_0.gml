/// @desc Core Player Logic n Shit

//Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

//movement stuff
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oFloor)) && (key_jump){
	vsp = -jumpsp;
	sprite_index = TimJump;
	pogohit = 1;
}
if(vsp > 0 && sprite_index == TimJump && pogohit == 1){
	with (instance_create_layer(x,y+135,"Bullets",oPogoDown)){
			image_xscale = 5;
		} 
	pogohit = 0;
}

//Horz Colish
if(place_meeting(x+hsp,y,oFloor)){
	while(!place_meeting(x+sign(hsp),y,oFloor)){
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
//Vert Colish
if(place_meeting(x,y+vsp,oFloor)){
	while(!place_meeting(x,y+sign(vsp),oFloor)){
	y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oFloor)){
	image_speed = 0;
	//if(vsp > 0){ image_index = 1;} else image_index = 0;
}else{
	image_speed = 0;
	if (hsp == 0 && firingdelay < 0){
		sprite_index = Tim;
	}else if(firingdelay > 0){
		sprite_index = TimAttack;
		image_index = 1;
	}else{
		sprite_index = TimWalk;
		image_speed = 1;
	}
}
//Direction
if (hsp > 0) image_xscale = 5; else if (hsp < 0) image_xscale = -5;
	
//Attack Shit
firingdelay--;
if(keyboard_check_pressed(vk_space) && firingdelay < 0 && sprite_index != TimJump){
	firingdelay = 30;
	if(other.image_xscale == 5){
		with (instance_create_layer(x+120,y+10,"Bullets",oPogoR)){
			image_xscale = 5;
		} 
	}
	else{
		with (instance_create_layer(x-120,y+10,"Bullets",oPogoL)){
			image_xscale = -5;
			} 
		}
}