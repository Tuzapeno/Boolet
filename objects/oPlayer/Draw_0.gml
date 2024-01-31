/// @description Insert description here
// You can write your code in this editor

if state == player_state_arriving {
	draw_sprite_ext(sprite_index, image_index, x, z, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
else {
	draw_self();	
}
