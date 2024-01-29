/// @description 

// Inherit the parent event
event_inherited();

switch state {
	case DRILL.OFF:
		image_speed = 0;
		image_index = 0;
		break;
	
	case DRILL.MINING:
		image_speed = 0.6;
		
		with( instance_create_depth(x, y+sprite_yoffset, depth-1, oParticle) ) {
			debris = false;
			sprite_index = sBulletSpark;
			fric = 0.9;
			var dir = 270 + random_range(-90, 90);
			image_angle = dir;
			motion_add(dir, random_range(-4, -9));
		}
		
		break;
}