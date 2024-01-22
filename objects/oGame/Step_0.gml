/// @description Insert description here
// You can write your code in this editor
next_key = keyboard_check_pressed(ord("H"))

if (global.game_started && instance_number(oEnemyParent_class) <= 0 && next_key) {
	global.game_started = false
	var _inst = instance_create_layer(x, y, "Control", oTransition)
	_inst.target_room = room
}
