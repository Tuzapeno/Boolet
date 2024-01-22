/// @description Insert description here
// You can write your code in this editor


// Draw bullets in inventory
for (var i = 1; i < ds_list_size(inventory)+1; ++i) {
	draw_sprite_ext(inventory[|i - 1].sprite_index, 0, (i*100), display_get_gui_height()-100, 2, 2, 0, c_white, 1)
	draw_text_outline((i*100) + 20, display_get_gui_height()-100, c_black, c_white, string(inventory[|i - 1].bullet_info.level))
}






