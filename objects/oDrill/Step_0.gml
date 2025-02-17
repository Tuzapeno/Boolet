/// @description 

// Inherit the parent event
event_inherited();

switch state {
	case DRILL.STANDBY:
		mask_index = sNone;
		if !alarm[0] alarm[0] = 60 * 5;
		break;
	
	case DRILL.ARRIVING:
		mask_index = sDrill;
	
		if place_meeting(x, z, oPlayer) {
			apply_damage(oPlayer, [{damage: 9999, damage_color: c_white}])
		}
	
		image_speed = 0;
		image_index = 0;
		
		z_vsp += z_grav;
		z_vsp = clamp(z_vsp, -z_max_vsp, z_max_vsp);
		
		z += z_vsp;
		
		if z >= y {
			z = y;
			state = DRILL.MINING;
			screen_shake(20, 20);
			clear_around(x, y, 2, false);
		}
		
		break;
	
	case DRILL.MINING:
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
			state = DRILL.DONE;
		} else drill_time--;
		
		break;
		
	case DRILL.DONE: 
		instance_create_depth(x, y, depth, oHole);
		instance_destroy();
		break;
}