if (hp <= 0){
with(instance_create_layer(x,y,"Bullets",oMask)){
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
instance_destroy();
}