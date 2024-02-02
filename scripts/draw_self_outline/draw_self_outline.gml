function draw_self_outline(_color = c_black) {
	gpu_set_fog(true, _color, 1, 1);
	draw_sprite_ext(sprite_index, image_index, x+1, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x-1, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y+1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y-1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	gpu_set_fog(false, _color, 1, 1);

	draw_self();
}