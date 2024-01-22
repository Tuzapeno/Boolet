/// @description Insert description here
// You can write your code in this editor

image_speed = 0

none_scope = new create_scope(sNone, 0)
small_scope = new create_scope(sShortScope, 15)
long_scope = new create_scope(sLongScope, 30)

current_index = 0
scopes = array_create(3)

scopes[0] = none_scope
scopes[1] = small_scope
scopes[2] = long_scope

current_scope = scopes[current_index]

function change_scope(_incr) {
	current_index += _incr
	
	var size = array_length(scopes) - 1
	
	if current_index > size {
		current_index = 0	
	}
	else if current_index < 0 {
		current_index = size	
	}
	
	current_scope = scopes[current_index]	
}

function get_distance() {
	return scopes[current_index].distance
}

function get_sprite() {
	return scopes[current_index].sprite
}