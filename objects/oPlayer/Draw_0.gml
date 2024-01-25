/// @description Insert description here
// You can write your code in this editor

draw_self();

// Cursor
draw_sprite_ext(sCrosshairDefault, 0, mouse_x, mouse_y, 0.5, 0.5, 0, c_white, 1);


if (invincibility) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 1)	
}
