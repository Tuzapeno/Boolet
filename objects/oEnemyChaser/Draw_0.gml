/// @description Insert description here
// You can write your code in this editor

draw_self()



if ( flash_alpha > 0 ) {
	gpu_set_fog(true, c_white, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, flash_alpha)
	gpu_set_fog(false, c_white, 0, 0)
}

if( point_distance(x, y, mouse_x, mouse_y) < 5 ) {
	draw_text(x, y - sprite_height, $"{state}")
	draw_text(x, y - sprite_height - 20, $"H: {floor(hsp)} V: {floor(vsp)}")
}