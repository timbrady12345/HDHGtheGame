life--;
y = oTim.y+10;
x = oTim.x+120;

//Horz Colish
if(place_meeting(x+hsp,y,oFloor)){
	while(!place_meeting(x+sign(hsp),y,oFloor)){
	x = x + sign(hsp);
	}
	hsp = 0;
	instance_destroy();
}
//Vert Colish
if(place_meeting(x,y+vsp,oFloor)){
	while(!place_meeting(x,y+sign(vsp),oFloor)){
	y = y + sign(vsp);
	}
	vsp = 0;
	instance_destroy();
}
if(life < 0){
	instance_destroy();
}