/// @description Insert description here
// You can write your code in this editor

draw_self()

if (player_collision && state == CHEST.CLOSED) {
	draw_text_outline(x, y-sprite_height, c_black, c_white, $"Open? {cost}")	
}




