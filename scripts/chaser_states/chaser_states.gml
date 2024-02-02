function chaser_state_idle() {
	spd = 0
	if player_in_range then state = chaser_state_following;
}

function chaser_state_following() {
	spd = lerp(spd, spd_max, 0.1)
	if (instance_exists(player)) {
		dir = point_direction(x, y, player.x, player.y)
		mp_potential_step_object(player.x, player.y, spd, oSolid)
		if (place_meeting(x, y, player)) {
			state = chaser_state_contact;	
		}
	}
	if !player_in_range then state = chaser_state_idle;
}

function chaser_state_contact() {
	spd = 0
	apply_force(random_range(-120, -121), dir)
	sprite_index = sChaserIdle;
	state = chaser_state_recovery;
	apply_damage(player, [{damage: contact_damage, damage_color: c_yellow}]);
}

function chaser_state_recovery() {
	spd = 0
	hsp = lerp(hsp, 0, 0.2)
	vsp = lerp(vsp, 0, 0.2)
	x = lerp(x, x+hsp, 0.1)
	y = lerp(y, y+vsp, 0.1)
	if ( hsp == 0 && vsp == 0 ) { state = chaser_state_idle }
}