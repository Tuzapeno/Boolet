/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_text(x, y - sprite_height, $"{state}")

if ( flash_alpha > 0 ) {
	gpu_set_fog(true, c_white, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, flash_alpha)
	gpu_set_fog(false, c_white, 0, 0)
}
