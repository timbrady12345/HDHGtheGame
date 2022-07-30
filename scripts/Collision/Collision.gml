/*
//gravity
vspd += grv

//horizontal collision
if place_meeting(x+hspd, y, oFloor) {
	while !place_meeting(x+sign(hspd), y, oFloor){
		x +=sign(hspd)
	}
	hspd = 0
}

//verty colishh
if place_meeting(x, y+vspd, oFloor){
	while !place_meeting(x, y+sign(vspd), oFloor){
		y +=sign(vspd)
	}
	vspd = 0
}

x+=hspd
y+=vspd
*/