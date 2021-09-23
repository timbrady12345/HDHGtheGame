/// @desc Core Player Logic n Shit

//Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("W"));

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
	if(reloading == 1){
		sprite_index = Reloading;
		image_speed = 1;
	}else{
		sprite_index = Stella;
		image_index = 0;
		image_speed = 0;
		if(firingdelay > 0){
			image_index = 1;
		}
	}
	//if(vsp > 0){ image_index = 1;} else image_index = 0;
}else{
	if(reloading == 1){
		sprite_index = Reloading;
		image_speed = 1;
	}else{
		sprite_index = Stella;
		image_speed = 0;
		image_index = 0;
		if(firingdelay > 0){
			image_index = 1;
		}
	}
}
	
if (hsp > 0) image_xscale = 5; else if (hsp < 0) image_xscale = -5;
	
	
//Gun Shit
if(ammo == 0){
	reloading = 1;
	firingdelay = 57;
	ammo = 6;
}
if(firingdelay < 0){
	reloading = 0;
}
firingdelay = firingdelay - 1;
if(keyboard_check_pressed(ord("C")) && firingdelay < 0){
	firingdelay = 15;
	ammo--;
	if(other.image_xscale == 5){
		with (instance_create_layer(x+110,y-15,"Bullets",oBullet)){
			speed = 15;
			image_xscale = 5;
			direction = point_direction(x,y,x+1,y)
		} 
	}
	else{
		with (instance_create_layer(x-110,y-15,"Bullets",oBullet)){
			speed = 15;
			image_xscale = -5;
			direction = point_direction(x,y,x-1,y)
			} 
		}
}
