if (hp <= 0){
with(instance_create_layer(x,y,layer,oDeadJoe)){
	direction = other.hitfrom;
	hsp = lengthdir_x(3,direction);
	vsp = lengthdir_y(3,direction)-3;
	if (hsp < 0){
		image_xscale = 5 ; 
		image_yscale = 5 ;
		}
		else if (hsp > 0) {
			image_xscale = -5;
			image_yscale = 5;
			}
}
with(instance_create_layer(x,y,"Bullets",oDeadSnake)){
	direction = other.hitfrom;
	hsp = lengthdir_x(1,direction);
	vsp = lengthdir_y(1,direction);
	if (hsp < 0){
		image_xscale = 5; 
		image_yscale = 5;
		}
		else if (hsp > 0) {
			image_xscale = -5;
			image_yscale = 5;
			}
}
with(instance_create_layer(x,y,"DeadShit",oJoeball)){
	direction = other.hitfrom;
	hsp = lengthdir_x(3,direction);
	vsp = lengthdir_y(3,direction)-5;
	if (hsp < 0){
		image_xscale = 5 ; 
		image_yscale = 5 ;
		}
		else if (hsp > 0) {
			image_xscale = -5;
			image_yscale = 5;
			}
}
instance_destroy();
}