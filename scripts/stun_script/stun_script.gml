function stun(_target, _time){
	with _target {
		image_speed = 0;
		stun_time = FRAME_RATE * _time;
		state = stun_state;
		with instance_create_depth(x, y, depth, oStunEffect) {
			owner = other.id;	
		}
	}
}