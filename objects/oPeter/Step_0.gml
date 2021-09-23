/// @desc Core Player Logic n Shit

//Input
key_left = keyboard_check(ord("F"));
key_right = keyboard_check(ord("H"));
key_jump = keyboard_check(ord("T"));

//movement stuff
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oFloor)) && (key_jump){
	vsp = -jumpsp;
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
	sprite_index = Peter;
	image_index = 0;
	image_speed = 0;
	if(firingdelay > 0){
		image_index = 1;
	}
	//if(vsp > 0){ image_index = 1;} else image_index = 0;
}else{
	sprite_index = Peter;
	image_speed = 0;
	image_index = 0;
	if(firingdelay > 0){
		image_index = 1;
	}
}
	
if (hsp > 0) image_xscale = 5; else if (hsp < 0) image_xscale = -5;
	
	
//Gun Shit
firingdelay = firingdelay - 1;
if(keyboard_check_pressed(ord("N")) && firingdelay < 0){
	firingdelay = 15;
	if(other.image_xscale == 5){
		with (instance_create_layer(x+60,y-70,"Bullets",oLazer)){
			speed = 15;
			image_xscale = 5;
			direction = point_direction(x,y,x+1,y)
		} 
	}
	else{
		with (instance_create_layer(x-60,y-70,"Bullets",oLazer)){
			speed = 15;
			image_xscale = -5;
			direction = point_direction(x,y,x-1,y)
			} 
		}
}
