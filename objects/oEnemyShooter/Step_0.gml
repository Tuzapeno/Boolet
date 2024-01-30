/// @description 

event_inherited();

switch state {
	case SHOOTER.IDLE:
		if walk_cooldown > 0 walk_cooldown--;
		if walk_cooldown == 0 {
			walk_cooldown = 30;
			calculate_movement();
			state = SHOOTER.MOVING;
		}
		break;
		
	case SHOOTER.MOVING:
		if point_distance(x, y, target_x, target_y) < spd {
			state = SHOOTER.IDLE;
			speed = 0;
		} else {
			move_towards_point(target_x, target_y, spd);	
		}
		break;
}

