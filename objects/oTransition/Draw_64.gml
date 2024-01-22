/// @description Insert description here
// You can write your code in this editor

for (var xx = 0; xx <= ymax; ++xx) {
    for (var yy = 0; yy <= xmax; ++yy) {
		draw_sprite_ext(spr, min(max(0, sub_image_index - xx), imax - 1), xx * sprw, yy * sprh, 1, 1, 0, col, 1)
	}
}




