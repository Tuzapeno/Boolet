///@desc moving & shooting

if ( weapon == noone ) { exit }

#region Reset position & angle

facing_up = player.looking_quadrant == 1

//sprite_index = weapon.sprite;

if mouse_x > x image_yscale = 1;
else image_yscale = -1;

mouse_angle -= angle_difference(mouse_angle, point_direction(x, y, mouse_x, mouse_y)) * 0.3;
knockback_angle -= angle_difference(knockback_angle, 0) * 0.05;

image_angle = mouse_angle + knockback_angle

// Lerp

x = lerp(x, ox, 0.05)
y = lerp(y, oy, 0.05)

#endregion

#region Shooting

var _shoot = weapon.fullauto ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left);
var _ammo_change = keyboard_check_pressed(vk_shift)

if _ammo_change { bullet_index = (bullet_index + 1) % array_length(weapon.ammo) }

var _ammo = weapon.ammo[bullet_index]

if canshoot > 0 canshoot--;
else if _shoot
{
	// Reset firerate
	canshoot = _ammo.firerate;
	
	//screen_shake(weapon.kick, 10)
	
	// Lerp firerate to end firerate while shooting
	
	_ammo.firerate = lerp(
		_ammo.firerate,
		_ammo.rate_end, 
		_ammo.rate_mult);
		
	Shoot();
	
	var _delay = weapon.burst_delay;
	repeat( weapon.burst_number - 1 ) {
		call_later(_delay, time_source_units_frames, Shoot);
		_delay += weapon.burst_delay
	}
	
}

if !mouse_check_button(mb_left) {
	_ammo.firerate = lerp(
		_ammo.firerate,
		_ammo.rate_start, 
		_ammo.rate_mult);
}

#endregion

#region Apply attachments bonus

// Scopes
if instance_exists(oCamera) {
	with sight {
		oCamera.weapon_range = get_distance()
	}
}

// Stocks
with stock {
	//other.real_innaccuracy = max(0, other.weapon.inaccuracy - get_accuracy())
	other.real_kick = max(0, other.weapon.kick - get_kick())
}

with foregrip {
	other.real_innaccuracy = max(0, other.weapon.inaccuracy - get_accuracy())
}

#endregion