with(other){
hp--;
flash = 3;
hitfrom = other.direction;
}
instance_destroy();
oTim.vsp = -15;
oTim.pogohit = 1;