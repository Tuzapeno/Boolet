/// @description Insert description here
// You can write your code in this editor

if (instance_exists(oPlayerParent)) {
	follow = oPlayerParent
}
else {
	follow = noone;	
}

if ( follow == oPlayerParent ) {	
	var Tox = follow.x + (mouse_x - follow.x)/7
	var Toy = follow.y + (mouse_y - follow.y)/7

	x = lerp(x, Tox, camera_speed)
	y = lerp(y, Toy, camera_speed)
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