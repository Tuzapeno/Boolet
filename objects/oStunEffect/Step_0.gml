/// @description 

if instance_exists(owner) {
	if owner.state != stun_state  {
		instance_destroy();	
	}

	x = owner.x;
	y = owner.y - sprite_get_yoffset(owner.sprite_index);
}
else {
	instance_destroy();	
}




















