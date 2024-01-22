/// @description Insert description here
// You can write your code in this editor

enum CHEST {
	CLOSED,
	OPENED
}

depth = -y
image_speed = 0
image_index = 0


var gun_types = variable_struct_get_names(global.weapons)

var selected_type = gun_types[choose( irandom_range(0, array_length(gun_types)-1))]

var weapons = variable_struct_get_names(struct_get(global.weapons, selected_type))

show_debug_message(weapons)

var selected_weapon = weapons[choose( irandom_range(0, array_length(weapons)-1))]

show_debug_message(selected_weapon)


weapon = struct_get(global.weapons[$ selected_type], selected_weapon)


state = CHEST.CLOSED

done = false

cost = irandom_range(10, 11)

