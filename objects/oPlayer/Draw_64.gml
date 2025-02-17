/// @description Insert description here
// You can write your code in this editor

var halfx = display_get_gui_width() / 2
var halfy = display_get_gui_height() / 2

var edgeoffset = 10;

draw_sprite_ext(sMoneyHUD, 2, edgeoffset, edgeoffset, 5, 5, 0, c_white, 1)
draw_text(80, 20, $"{money}")

draw_sprite_ext(sEnergyBallHUD, 0, 10, 80, 2, 2, 0, c_white, 1)
draw_text(70, 85, $"{energy}")


draw_text(10, 60, $"LEVEL {global.level}-{global.sublevel}")

if( instance_number(oEnemyParent_class) <= 0 && global.game_started) {
	draw_set_font(fGUI)
	draw_text_outline(halfx - 60, 20, c_black, c_white, $"Go deeper? (H)")
	draw_set_font(fDefault)
}