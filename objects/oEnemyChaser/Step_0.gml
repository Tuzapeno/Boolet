/// @description Insert description here
// You can write your code in this editor

flash_alpha = lerp(flash_alpha, 0, 0.1)
var _dt = delta_time / 1000000

player = oPlayer

player_in_range = collision_circle(x, y, detect_radius, player, false, false)

if ( hp <= 0 && state != CHASER.DEAD ) {
	state = CHASER.DEAD	
}

switch ( state ) {
	case CHASER.IDLE:
		spd = 0
		if player_in_range then state = CHASER.FOLLOWING	
		break
		
	case CHASER.FOLLOWING:
		spd = lerp(spd, spd_max, 0.1)
		if (instance_exists(player)) {
			dir = point_direction(x, y, player.x, player.y)
			mp_potential_step_object(player.x, player.y, spd * _dt, oSolid)
			if (place_meeting(x, y, player)) {
				state = CHASER.PLAYER_CONTACT	
			}
		}
		if !player_in_range then state = CHASER.IDLE
		break
		
	case CHASER.HITTED:
		spd = 0
		apply_force(25, knockback_dir)
		state = CHASER.RECOVERY
		break
		
	case CHASER.PLAYER_CONTACT:
		spd = 0
		apply_force(random_range(-120, -121), dir)
		state = CHASER.RECOVERY
		apply_damage(player, [{damage: contact_damage, damage_color: c_yellow}]);
		break
		
	case CHASER.RECOVERY:
		spd = 0
		hsp = lerp(hsp, 0, 0.2)
		vsp = lerp(vsp, 0, 0.2)
		x = lerp(x, x+hsp, 0.1)
		y = lerp(y, y+vsp, 0.1)
		if ( hsp == 0 && vsp == 0 ) { state = CHASER.IDLE }
		break
		
	case CHASER.DEAD:
		die();
		break
}

#region Collision
// Horizontal Collision
if ( place_meeting(x + hsp, y, oSolid) ) {
  hsp = 0
}
// Vertical Collision
if ( place_meeting(x, y + vsp, oSolid) ) {
  vsp = 0
}
#endregion

// Animations

switch state {
	case CHASER.IDLE:
		sprite_index = sChaserIdle;
		image_speed = 0.4;
		break;
	
	case CHASER.FOLLOWING:
		sprite_index = sChaserRun;
		image_speed = 0.4;
		image_xscale = player.x < x ? -1 : 1;
		break;
}



