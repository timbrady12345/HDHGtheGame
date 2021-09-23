if(done == 0){
	vsp = vsp + grv;

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
		if(vsp > 0){
			done = 1;
			//image_index = 1;
		}
		while(!place_meeting(x,y+sign(vsp),oFloor)){
		y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}