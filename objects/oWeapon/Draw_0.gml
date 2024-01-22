/// @description Insert description here
// You can write your code in this editor

draw_self()

if ( instance_exists(player) ) {
	draw_sprite_ext(sArrow, 0, x, y - player.sprite_height, 1, 1, 270, c_white, 1)
}

