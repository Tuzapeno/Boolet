/// @description 

if owner.state == player_state_arriving {
	exit;	
}

draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, _img_angle, c_white, image_alpha);

if spawn_flash {
	var flashx = x + lengthdir_x(sprite_width-sprite_xoffset, mouse_dir);
	var flashy = y + lengthdir_y(sprite_width-sprite_xoffset, mouse_dir);
	
	draw_sprite_ext(sGunflash, 0, flashx, flashy, image_xscale, image_yscale, _img_angle, c_white, image_alpha);
	
	spawn_flash = false
}
	



















