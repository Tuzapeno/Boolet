/// @description Insert description here
// You can write your code in this editor

if state == player_state_arriving {
	draw_sprite_ext(sprite_index, image_index, x, z, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
else {	
	draw_self();
}

if ( flash_alpha > 0 ) {
	gpu_set_fog(true, c_red, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, flash_alpha)
	gpu_set_fog(false, c_red, 0, 0)
}


