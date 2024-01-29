/// @description Insert description here
// You can write your code in this editor

if ( pull ) {
	if (instance_exists(oPlayer)) {
		var p_dir = point_direction(x, y, oPlayer.x, oPlayer.y)
		x += lengthdir_x(5, p_dir)
		y += lengthdir_y(5, p_dir)
	}
}
else {
	x += lengthdir_x(move_length, dir)
	y += lengthdir_y(move_length, dir)

	move_length = lerp(move_length, 0, 0.2)
}


