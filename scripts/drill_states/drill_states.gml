
function drill_state_standby() {
	mask_index = sNone;
	if !alarm[0] alarm[0] = FRAME_RATE * 5;
	
	if chance(0.8) {
		with instance_create_depth(x + random_range(-25, 25), y + random_range(-25, 25), depth, oCeilingParticle) {
			sprite_index = sCeilDirt;	
		}
	}
	
	
}

function drill_state_arriving() {
	mask_index = sDrill;
	
	
	
	image_speed = 0;
	image_index = 0;
		
	z_vsp += z_grav;
	z_vsp = clamp(z_vsp, -z_max_vsp, z_max_vsp);
		
	z += z_vsp;
		
	if z >= y {
		z = y;
		state = drill_state_mining;
		screen_shake(20, 20);
		clear_around(x, y, 2, false);
		if place_meeting(x, z, oPlayerParent) {
			apply_damage(oPlayerParent, [{damage: 9999, damage_color: c_white}])
		}
	}	
}

function drill_state_mining() {
	image_speed = 0.6;
		
	// Sparks
	with( instance_create_depth(x, y, depth-1, oParticle) ) {
		debris = false;
		sprite_index = sBulletSpark;
		fric = 0.9;
		var dir = 270 + random_range(-90, 90);
		image_angle = dir;
		image_xscale = 2;
		image_yscale = 2;
		motion_add(dir, random_range(-4, -9));
	}
		
	//Wall Dust
	with( instance_create_depth(x, y, depth+1, oParticle) ) {
		debris = false;
		sprite_index = sWallDust;
		fric = 0.95;
		var dir = random(360);
		image_angle = dir;
		motion_add(dir, random_range(2, 5));
	}
		
	if drill_time <= 0 {
		state = drill_state_done;
	} else drill_time--;	
}

function drill_state_done() {
	instance_create_depth(x, y, depth, oHole);
	instance_destroy();
}
	