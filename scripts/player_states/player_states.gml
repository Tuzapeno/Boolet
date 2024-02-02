function player_state_arriving(){
	image_speed = 0;
	image_index = 0;
		
	z_vsp += z_grav;
	z_vsp = clamp(z_vsp, -z_max_vsp, z_max_vsp);
		
	z += z_vsp;
		
	if z >= y {
		z = y;
		state = player_state_free;
		screen_shake(5, 20);
		image_speed = 1;
	}
}

function player_state_free() {
	hsp = (right_key - left_key) * spd
	vsp = (down_key - up_key) * spd
	
	
	if vsp != 0 || hsp != 0 {
		sprite_index = sprite_running;
	}
	else {
		sprite_index = sprite_idle;	
	}
	
	
	if roll_key {
		state = player_state_begin_dash;
	}	
	
	if ( immunity_frames > 0 ) immunity_frames--;
	else { immunity = false }
}

function player_state_begin_dash() {
	immunity = true;
	immunity_frames = immunity_frames_value;
		
	state = player_state_dashing;
	sprite_index = sprite_rolling;
	image_index = 0;
	
	dash_curve_pos = 0;
	dash_curve_spd = 0.05;
}

function player_state_dashing() {
		
		var _curve = animcurve_get(acDash);
		var _channel = animcurve_get_channel(_curve, "curve1");
		var _value = animcurve_channel_evaluate(_channel, dash_curve_pos);
		dash_curve_pos += dash_curve_spd;
	
	
		hsp = lengthdir_x(spd * _value, player_direction);
		vsp = lengthdir_y(spd * _value, player_direction);
	
		if image_index > image_number - 1 {
			state = player_state_free;
			hsp = 0;
			vsp = 0;
			image_speed = 1;
		}
}