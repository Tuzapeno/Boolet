/// @description Insert description here
// You can write your code in this editor

if (instance_exists(oPlayer)) {
	follow = oPlayer
}
else {
	follow = noone
}

if ( follow == oPlayer ) {
	var _ddir = point_direction(follow.x, follow.y, mouse_x, mouse_y)
	var camera_x = follow.x + lengthdir_x(cam_fov + weapon_range, _ddir)
	var camera_y = follow.y + lengthdir_y(cam_fov + weapon_range, _ddir)

	x = lerp(x, camera_x, camera_speed)
	y = lerp(y, camera_y, camera_speed)
}
else if ( follow != noone ) {
	x = lerp(x, follow.x, camera_speed)
	y = lerp(y, follow.y, camera_speed)
}

// Keep camera inside room
x = clamp(x, half_width + buff, room_width - half_width - buff)
y = clamp(y, half_height + buff, room_height - half_height - buff)

// Screen Shake
x += random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude))


camera_set_view_pos(cam, x - half_width, y - half_height)	