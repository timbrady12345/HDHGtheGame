switch(argument0){
	case CHAR_TIM:
		sp_idle = Tim
		sp_forward = TimWalk
		sp_backward = TimWalk
		sprite_index = sp_idle
	break
	
	case CHAR_STELLA:
		sp_idle = Stella[0]
		sprite_index = sp_idle
		image_speed = 0
	break
	
	case CHAR_PETER:
		sp_idle = Peter[0]
		sprite_index = sp_idle
		image_speed = 0
	break
	
	case CHAR_AIDEN:
		sp_idle = Aiden[0]
		sprite_index = sp_idle
		image_speed = 0
	break
	
	case CHAR_JOE:
		sp_idle = Joe[0]
		sprite_index = sp_idle
		image_speed = 0
	break
	
	case CHAR_BEN:
		sp_idle = Ben[0]
		sprite_index = sp_idle
		image_speed = 0
	break
	
}